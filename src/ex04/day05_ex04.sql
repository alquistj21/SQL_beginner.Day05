CREATE UNIQUE INDEX idx_menu_unique ON menu (pizzeria_id, pizza_name);

SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYZE
SELECT *
FROM menu
WHERE pizzeria_id = 1 AND pizza_name = 'cheese pizza';