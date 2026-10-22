-- Stable per-item sequence: id breaks ties when timestamps are identical.
SELECT project_id,code,source_ref,recorded_at,quantity_milli,
SUM(quantity_milli) OVER (PARTITION BY project_id,code ORDER BY recorded_at,id
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS cumulative_milli
FROM measurements ORDER BY project_id,code,recorded_at,id;
