CREATE VIEW user_purchase_history AS
SELECT 
    u.user_account_id, 
    u.user_account_username, 
    p.payment_method_id, 
    pm.payment_method_name, 
    pr.predmet_name, 
    pr.predmet_type,
    c.champion_role,
    s.skin_rarity,
    ch.chroma_name,
    COUNT(p.predmet_id) as total_purchases
FROM user_account u
JOIN purchase p ON u.user_account_id = p.user_account_buyer
JOIN predmet pr ON p.predmet_id = pr.predmet_id
LEFT JOIN champion c ON pr.predmet_id = c.predmet_id AND pr.predmet_type = 'champion'
LEFT JOIN skin s ON pr.predmet_id = s.predmet_id AND pr.predmet_type = 'skin'
LEFT JOIN chroma ch ON pr.predmet_id = ch.predmet_id AND pr.predmet_type = 'chroma'
JOIN payment_method pm ON p.payment_method_id = pm.payment_method_id
WHERE u.user_account_username = 'user1'
GROUP BY u.user_account_id, u.user_account_username, p.payment_method_id, pm.payment_method_name, pr.predmet_name, pr.predmet_type, c.champion_role, s.skin_rarity, ch.chroma_name;
