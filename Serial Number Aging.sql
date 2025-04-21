-- Contributor: Ghanny.A
WITH SerializedItems AS (
    SELECT 
        Item.ID,
        Item.ItemID,
        Item.Description,
        Item.ItemType,
        Item.IsInactive
    FROM Item
    WHERE Item.IsSerialItem = 'T'
),
AgedSerials AS (
    SELECT
        invn.Item AS ItemID,
        invn.InventoryNumber,
        receipt.last_receipt_date,
        receipt.last_receipt_id,
        receipt.last_receipt_number,
        CASE 
            WHEN receipt.last_receipt_date < ADD_MONTHS(CURRENT_DATE, -12) THEN 'Over1Year'
            WHEN receipt.last_receipt_date < ADD_MONTHS(CURRENT_DATE, -6) THEN 'Over6Months'
            WHEN receipt.last_receipt_date < ADD_MONTHS(CURRENT_DATE, -3) THEN 'Over3Months'
            ELSE NULL
        END AS AgingCategory
    FROM InventoryNumber invn
    INNER JOIN InventoryBalance ib ON invn.ID = ib.inventoryNumber
    INNER JOIN (
        SELECT 
            ia.inventoryNumber,
            t.CreatedDate AS last_receipt_date,
            t.ID AS last_receipt_id,
            t.TranID AS last_receipt_number
        FROM InventoryAssignment ia
        INNER JOIN Transaction t ON ia.transaction = t.ID
        WHERE t.Type = 'ItemRcpt'
        AND t.CreatedDate = (
            SELECT MAX(t2.CreatedDate)
            FROM InventoryAssignment ia2
            INNER JOIN Transaction t2 ON ia2.transaction = t2.ID
            WHERE ia2.inventoryNumber = ia.inventoryNumber
            AND t2.Type = 'ItemRcpt'
        )
    ) receipt ON invn.ID = receipt.inventoryNumber
    WHERE ib.quantityOnHand > 0
    AND NOT EXISTS (
        SELECT 1
        FROM InventoryAssignment ia_sold
        INNER JOIN Transaction t_sold ON ia_sold.transaction = t_sold.ID
        WHERE ia_sold.inventoryNumber = invn.ID
        AND t_sold.Type = 'SalesOrd'
    )
)
SELECT
    si.ID AS ItemID,
    si.ItemID AS ItemName,
    si.Description AS ItemDescription,
    BUILTIN.DF(si.ItemType) AS ItemType,
    si.IsInactive,
    -- Over 1 Day
    (
        SELECT 
            CASE 
                WHEN SUM(serial_count) > 0 THEN
                    'QTY (' || SUM(serial_count) || '): ' || 
                    LISTAGG(
                        receipt_group.serials || ' [' || receipt_group.link || ']',
                        ', '
                    ) WITHIN GROUP (ORDER BY receipt_group.receipt_id)
            END
        FROM (
            SELECT 
                as1d.last_receipt_id AS receipt_id,
                '<a href="https://5504968-sb1.app.netsuite.com/app/accounting/transactions/itemrcpt.nl?id=' || as1d.last_receipt_id || '">' || as1d.last_receipt_number || '</a>' AS link,
                LISTAGG(as1d.InventoryNumber, ', ') WITHIN GROUP (ORDER BY as1d.InventoryNumber) AS serials,
                COUNT(as1d.InventoryNumber) AS serial_count
            FROM AgedSerials as1d
            WHERE as1d.ItemID = si.ID
                AND as1d.last_receipt_date < CURRENT_DATE - 1
            GROUP BY as1d.last_receipt_id, as1d.last_receipt_number
        ) receipt_group
    ) AS Over17Day,
    -- Over 3 Months
    (
        SELECT 
            CASE 
                WHEN SUM(serial_count) > 0 THEN
                    'QTY (' || SUM(serial_count) || '): ' || 
                    LISTAGG(
                        receipt_group.serials || ' [' || receipt_group.link || ']',
                        ', '
                    ) WITHIN GROUP (ORDER BY receipt_group.receipt_id)
            END
        FROM (
            SELECT 
                as3.last_receipt_id AS receipt_id,
                '<a href="https://5504968-sb1.app.netsuite.com/app/accounting/transactions/itemrcpt.nl?id=' || as3.last_receipt_id || '">' || as3.last_receipt_number || '</a>' AS link,
                LISTAGG(as3.InventoryNumber, ', ') WITHIN GROUP (ORDER BY as3.InventoryNumber) AS serials,
                COUNT(as3.InventoryNumber) AS serial_count
            FROM AgedSerials as3
            WHERE as3.ItemID = si.ID
                AND as3.AgingCategory = 'Over3Months'
            GROUP BY as3.last_receipt_id, as3.last_receipt_number
        ) receipt_group
    ) AS Over3Months,
    -- Over 6 Months
    (
        SELECT 
            CASE 
                WHEN SUM(serial_count) > 0 THEN
                    'QTY (' || SUM(serial_count) || '): ' || 
                    LISTAGG(
                        receipt_group.serials || ' [' || receipt_group.link || ']',
                        ', '
                    ) WITHIN GROUP (ORDER BY receipt_group.receipt_id)
            END
        FROM (
            SELECT 
                as6.last_receipt_id AS receipt_id,
                '<a href="https://5504968-sb1.app.netsuite.com/app/accounting/transactions/itemrcpt.nl?id=' || as6.last_receipt_id || '">' || as6.last_receipt_number || '</a>' AS link,
                LISTAGG(as6.InventoryNumber, ', ') WITHIN GROUP (ORDER BY as6.InventoryNumber) AS serials,
                COUNT(as6.InventoryNumber) AS serial_count
            FROM AgedSerials as6
            WHERE as6.ItemID = si.ID
                AND as6.AgingCategory = 'Over6Months'
            GROUP BY as6.last_receipt_id, as6.last_receipt_number
        ) receipt_group
    ) AS Over6Months,
    -- Over 1 Year
    (
        SELECT 
            CASE 
                WHEN SUM(serial_count) > 0 THEN
                    'QTY (' || SUM(serial_count) || '): ' || 
                    LISTAGG(
                        receipt_group.serials || ' [' || receipt_group.link || ']',
                        ', '
                    ) WITHIN GROUP (ORDER BY receipt_group.receipt_id)
            END
        FROM (
            SELECT 
                as12.last_receipt_id AS receipt_id,
                '<a href="https://5504968-sb1.app.netsuite.com/app/accounting/transactions/itemrcpt.nl?id=' || as12.last_receipt_id || '">' || as12.last_receipt_number || '</a>' AS link,
                LISTAGG(as12.InventoryNumber, ', ') WITHIN GROUP (ORDER BY as12.InventoryNumber) AS serials,
                COUNT(as12.InventoryNumber) AS serial_count
            FROM AgedSerials as12
            WHERE as12.ItemID = si.ID
                AND as12.AgingCategory = 'Over1Year'
            GROUP BY as12.last_receipt_id, as12.last_receipt_number
        ) receipt_group
    ) AS OverOneYear,
    -- Total quantity on hand
    (
        SELECT SUM(AIL.QuantityOnHand) 
        FROM AggregateItemLocation AIL 
        WHERE AIL.item = si.ID
    ) AS TotalQuantityOnHand
FROM SerializedItems si
ORDER BY si.ItemID;