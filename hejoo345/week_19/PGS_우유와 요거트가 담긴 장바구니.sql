WITH TMP AS (
    SELECT DISTINCT CART_ID, NAME
    FROM CART_PRODUCTS
    WHERE NAME = 'Milk'
    UNION ALL
    SELECT DISTINCT CART_ID, NAME
    FROM CART_PRODUCTS
    WHERE NAME = 'Yogurt'
)
SELECT CART_ID
FROM TMP
GROUP BY CART_ID
HAVING COUNT(*) = 2
ORDER BY CART_ID