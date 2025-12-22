-- Query 1: Simple 1:1 Mapping
INSERT INTO target_users (user_id, name, email)
SELECT 
    id, 
    full_name, 
    contact_email 
FROM raw_users;

-- Query 2: Transformations & Schemas
INSERT INTO reporting.sales_summary (code, total_amount, status)
SELECT 
    UPPER(c.customer_code), 
    s.amount, 
    'ACTIVE' 
FROM crm.sales_raw s
JOIN crm.customers c ON s.cust_id = c.id;

-- Query 3: Delete Statement (Should return empty selections per rules)
DELETE FROM old_audit_logs WHERE log_date < '2022-01-01';
