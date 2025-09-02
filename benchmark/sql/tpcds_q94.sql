SELECT 
    Count(DISTINCT ws_order_number) AS "order count", 
    Sum(ws_ext_ship_cost)           AS "total shipping cost", 
    Sum(ws_net_profit)              AS "total net profit"
FROM web_sales ws1
JOIN date_dim
    ON ws1.ws_ship_date_sk = d_date_sk
JOIN customer_address
    ON ws1.ws_ship_addr_sk = ca_address_sk
JOIN web_site
    ON ws1.ws_web_site_sk = web_site_sk
WHERE CAST(d_date AS DATE) 
      BETWEEN CAST('2000-03-01' AS DATE)
          AND (CAST('2000-03-01' AS DATE) + INTERVAL '60' DAY)
  AND ca_state = 'MT'
  AND web_company_name = 'pri'
  AND EXISTS (
        SELECT 1
        FROM   web_sales ws2
        WHERE  ws1.ws_order_number = ws2.ws_order_number
        AND    ws1.ws_warehouse_sk <> ws2.ws_warehouse_sk
      )
  AND NOT EXISTS (
        SELECT 1
        FROM   web_returns wr1
        WHERE  ws1.ws_order_number = wr1.wr_order_number
      )
ORDER BY Count(DISTINCT ws_order_number)
LIMIT 100
