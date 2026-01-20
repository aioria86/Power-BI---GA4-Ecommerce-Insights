SELECT
  event_date,
  event_timestamp,
  ecommerce.transaction_id, -- Clave de unión
  item.item_id,             -- Clave foránea a Dim_Product
  item.item_name,
  item.item_category,
  item.price,
  item.quantity,
  (item.price * item.quantity) AS item_revenue -- Revenue real por línea
FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`,
  UNNEST(items) AS item
WHERE
  _TABLE_SUFFIX BETWEEN '20201101' AND '20210131'
  AND event_name = 'purchase' -- ¡IMPORTANTE! Solo miramos compras aquí