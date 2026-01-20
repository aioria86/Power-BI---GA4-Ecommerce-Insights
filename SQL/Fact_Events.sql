SELECT 
  event_date, 
  event_timestamp, 
  event_name, 
  user_pseudo_id, 
  -- Extraemos Session ID 
  (SELECT value.int_value FROM UNNEST(event_params) WHERE key = 'ga_session_id') AS session_id, 
  ecommerce.transaction_id, -- Clave para unir con ventas si fuera necesario 
  ecommerce.purchase_revenue, -- Revenue TOTAL del ticket (sin duplicar por item) 
   
  -- UX y Navegación 
  (SELECT value.string_value FROM UNNEST(event_params) WHERE key = 'page_title') AS page_title, 
  (SELECT value.string_value FROM UNNEST(event_params) WHERE key = 'page_location') AS page_location, 
   
  -- Dimensiones 
  geo.country, 
  geo.city, 
  device.category AS device_category, 
  device.operating_system, 
  traffic_source.medium, 
  traffic_source.source, 
  traffic_source.name AS campaign,

  -- Agregado AL FINAL para no mover las anteriores
  (SELECT value.int_value FROM UNNEST(event_params) WHERE key = 'engagement_time_msec') AS engagement_time_msec

FROM 
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*` 
WHERE 
  _TABLE_SUFFIX BETWEEN '20201101' AND '20210131'