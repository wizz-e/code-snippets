-- Common SQL Queries and Patterns
-- Author: Code Snippets Repository
-- Date: 2025-11-06
--
-- Description: Collection of commonly used SQL queries
-- Usage: Copy and modify these queries for your database needs

-- ===========================================
-- SELECT QUERIES
-- ===========================================

-- Find duplicate records
SELECT column_name, COUNT(*) as count
FROM table_name
GROUP BY column_name
HAVING COUNT(*) > 1;

-- Get top N records
SELECT *
FROM table_name
ORDER BY column_name DESC
LIMIT 10;

-- Find records within date range
SELECT *
FROM table_name
WHERE date_column BETWEEN '2025-01-01' AND '2025-12-31';

-- ===========================================
-- JOIN QUERIES
-- ===========================================

-- Inner join two tables
SELECT a.*, b.column_name
FROM table_a a
INNER JOIN table_b b ON a.id = b.foreign_id;

-- Left join with NULL check
SELECT a.*, b.column_name
FROM table_a a
LEFT JOIN table_b b ON a.id = b.foreign_id
WHERE b.foreign_id IS NULL;

-- ===========================================
-- AGGREGATE QUERIES
-- ===========================================

-- Count records by category
SELECT category, COUNT(*) as total
FROM table_name
GROUP BY category
ORDER BY total DESC;

-- Calculate running total
SELECT 
    date_column,
    amount,
    SUM(amount) OVER (ORDER BY date_column) as running_total
FROM table_name;

-- ===========================================
-- UPDATE QUERIES
-- ===========================================

-- Update with JOIN (PostgreSQL/MySQL)
UPDATE table_a a
SET a.column_name = b.value
FROM table_b b
WHERE a.id = b.foreign_id;

-- Conditional update
UPDATE table_name
SET status = CASE
    WHEN condition1 THEN 'value1'
    WHEN condition2 THEN 'value2'
    ELSE status
END;

-- ===========================================
-- DELETE QUERIES
-- ===========================================

-- Delete duplicates keeping one record
DELETE FROM table_name
WHERE id NOT IN (
    SELECT MIN(id)
    FROM table_name
    GROUP BY duplicate_column
);

-- Delete old records (adjust the 90 days interval as needed)
DELETE FROM table_name
WHERE created_at < NOW() - INTERVAL '90 days';
