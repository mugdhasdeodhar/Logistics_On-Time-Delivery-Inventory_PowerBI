CREATE TABLE logistics_shipments (
    shipment_id VARCHAR(20) PRIMARY KEY,
    order_date DATE,
    promised_delivery_date DATE,
    delivery_date DATE,
    warehouse VARCHAR(50),
    region VARCHAR(50),
    carrier VARCHAR(50),
    product_category VARCHAR(50),
    quantity INT,
    inventory_on_hand INT,
    shipping_cost DECIMAL(10,2),
    delivery_status VARCHAR(20)
);

SELECT COUNT(*) FROM logistics_shipments;

SELECT * FROM logistics_shipments LIMIT 10;

ALTER TABLE logistics_shipments
ADD delivery_lead_time INT;

UPDATE logistics_shipments
SET delivery_lead_time = DATEDIFF(delivery_date, order_date);

-- 1. Total Shipments
SELECT COUNT(*) AS total_shipments FROM logistics_shipments;

-- 2. Late Delivery Rate (%)
SELECT ROUND(100 * SUM(CASE WHEN delivery_status = 'Late' THEN 1 ELSE 0 END) / COUNT(*), 2) AS late_delivery_rate_pct
FROM logistics_shipments;

-- 3. OTIF % (On-Time-In-Full) (Assuming full = delivered quantity)
SELECT ROUND(100 * SUM(CASE WHEN delivery_status = 'On Time' THEN 1 ELSE 0 END) / COUNT(*),2) AS otif_percentage
FROM logistics_shipments;

-- 4. Average Delivery Lead Time (Days)
SELECT ROUND(AVG(delivery_lead_time), 2) AS avg_delivery_lead_time
FROM logistics_shipments;

-- 5. Late Delivery % by Carrier
SELECT carrier, COUNT(*) AS total_shipments,
    ROUND(100 * SUM(CASE WHEN delivery_status = 'Late' THEN 1 ELSE 0 END) / COUNT(*),2) AS late_delivery_pct
FROM logistics_shipments
GROUP BY carrier
ORDER BY late_delivery_pct DESC;

-- 6. Performance by Region
SELECT region, ROUND(AVG(delivery_lead_time), 2) AS avg_lead_time,
    ROUND(100 * SUM(CASE WHEN delivery_status = 'Late' THEN 1 ELSE 0 END) / COUNT(*),2) AS late_delivery_pct
FROM logistics_shipments
GROUP BY region
ORDER BY late_delivery_pct DESC;

-- 7. Inventory Risk (Low Stock Flag)
SELECT product_category,
    SUM(CASE WHEN inventory_on_hand < 500 THEN 1 ELSE 0 END) AS low_inventory_shipments
FROM logistics_shipments
GROUP BY product_category;

-- 8. Cost vs Speed Analysis
SELECT carrier,
    ROUND(AVG(delivery_lead_time), 2) AS avg_lead_time,
    ROUND(AVG(shipping_cost), 2) AS avg_shipping_cost
FROM logistics_shipments
GROUP BY carrier
ORDER BY avg_shipping_cost DESC;
