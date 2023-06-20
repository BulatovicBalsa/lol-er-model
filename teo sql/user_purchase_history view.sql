CREATE VIEW user_spending AS
SELECT 
    u.user_account_username, 
    p.predmet_type, 
    SUM(pl_eff.pricelist_price) AS Total_Spent,
    COUNT(pr.purchase_id) AS Total_Bought,
    COALESCE(TO_CHAR(AVG(r.review_rating)), 'No review given') AS Avg_Review
FROM 
    user_account u
INNER JOIN purchase pr
    ON u.user_account_id = pr.user_account_buyer
INNER JOIN predmet p
    ON pr.predmet_id = p.predmet_id
INNER JOIN (
    SELECT 
        pl1.predmet_id, 
        pl1.pricelist_start_date,
        pl1.pricelist_price,
        (
            SELECT MIN(pl2.pricelist_start_date) 
            FROM pricelist pl2
            WHERE 
                pl2.predmet_id = pl1.predmet_id AND
                pl2.pricelist_start_date > pl1.pricelist_start_date
        ) AS next_start_date
    FROM 
        pricelist pl1
) pl_eff
    ON p.predmet_id = pl_eff.predmet_id
    AND pr.purchase_date >= pl_eff.pricelist_start_date
    AND (pr.purchase_date < pl_eff.next_start_date OR pl_eff.next_start_date IS NULL)
LEFT JOIN review r
    ON pr.purchase_id = r.purchase_id
GROUP BY 
    u.user_account_username, 
    p.predmet_type
HAVING 
    SUM(pl_eff.pricelist_price) > 200;

