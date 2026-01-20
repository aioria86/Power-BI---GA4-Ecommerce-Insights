SELECT DISTINCT
  item.item_id,
  item.item_name,
  item.item_brand,
  item.item_category
FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`,
  UNNEST(items) AS item
WHERE
  _TABLE_SUFFIX BETWEEN '20201101' AND '20210131'
  AND item.item_id IS NOT NULL