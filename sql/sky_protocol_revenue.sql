-- Source: DefiLlama API (retrieved via Dune Analytics HTTP_GET)
-- Query URL: https://dune.com/queries/6648191
-- Query ID: 6648191
-- Extracted on: 2026-02-13
-- Metric: Annual protocol revenue (USD)
-- Data coverage: 2021-01-01 to 2025-12-31
-- Revenue definition: dailyRevenue endpoint aggregated to yearly sums

WITH raw AS (
  SELECT
    JSON_PARSE(
      HTTP_GET('https://api.llama.fi/summary/fees/sky?dataType=dailyRevenue')
    ) AS j
),
rows AS (
  SELECT
    DATE(FROM_UNIXTIME(
      CAST(JSON_EXTRACT_SCALAR(item, '$[0]') AS BIGINT)
    )) AS day,
    CAST(JSON_EXTRACT_SCALAR(item, '$[1]') AS DOUBLE) AS revenue_usd
  FROM raw
  CROSS JOIN UNNEST(
    CAST(JSON_EXTRACT(j, '$.totalDataChart') AS ARRAY(JSON))
  ) AS t(item)
)
SELECT
  YEAR(day) AS year,
  SUM(revenue_usd) AS protocol_revenue_usd
FROM rows
WHERE day >= DATE '2021-01-01'
  AND day <  DATE '2026-01-01'
GROUP BY YEAR(day)
ORDER BY year;
