-- Inserting item set
INSERT INTO skup_opreme (id_skup_opreme, datum_kreiranja_skupa, naziv_skupa, account_account_id, champion_champion_id)
VALUES (3, TO_DATE('2023-06-20', 'YYYY-MM-DD'), 'Ahri AP Mage Build', 1, 2);


-- Inserting item set blocks
INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme)
VALUES (1, 'Starting Items', 3);

INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (2, 'Core Items', 3);

-- Inserting item set items
INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 1, 3, 11); -- Hextech Rocketbelt

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 1, 3, 15); -- Luden's Echo

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (3, 1, 3, 8); -- Rod of Ages

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 2, 3, 60); -- Rabadon's Deathcap

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 2, 3, 12); -- Morellonomicon

-- Inserting item set
INSERT INTO skup_opreme (id_skup_opreme, datum_kreiranja_skupa, naziv_skupa, account_account_id, champion_champion_id)
VALUES (4, TO_DATE('2023-06-20', 'YYYY-MM-DD'), 'Braum Support Build', 2, 4);

-- Inserting item set blocks
INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (1, 'Starting Items', 4);

INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (2, 'Core Items', 4);

-- Inserting item set items
INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 1, 4, 6); -- Trinity Force

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 1, 4, 10); -- Dead Man's Plate

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (3, 1, 4, 9); -- Rapid Firecannon

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 2, 4, 4); -- Guardian Angel

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 2, 4, 12); -- Morellonomicon

-- Inserting item set
INSERT INTO skup_opreme (id_skup_opreme, datum_kreiranja_skupa, naziv_skupa, account_account_id, champion_champion_id)
VALUES (5, TO_DATE('2023-06-20', 'YYYY-MM-DD'), 'Jax AD Fighter Build', 3, 6);

-- Inserting item set blocks
INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (1, 'Starting Items', 5);

INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (2, 'Core Items', 5);

-- Inserting item set items
INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 1, 5, 2); -- Blade of the Ruined King

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 1, 5, 24); -- Sterak's Gage

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (3, 1, 5, 68); -- Ninja Tabi

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 2, 5, 7); -- Trinity Force

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 2, 5, 10); -- Dead Man's Plate

-- Inserting item set
INSERT INTO skup_opreme (id_skup_opreme, datum_kreiranja_skupa, naziv_skupa, account_account_id, champion_champion_id)
VALUES (6, TO_DATE('2023-06-20', 'YYYY-MM-DD'), 'Ashe Marksman Build', 4, 3);

-- Inserting item set blocks
INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (1, 'Starting Items', 6);

INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (2, 'Core Items', 6);

-- Inserting item set items
INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 1, 6, 14); -- Essence Reaver

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 1, 6, 15); -- Luden's Echo

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (3, 1, 6, 9); -- Rapid Firecannon

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 2, 6, 60); -- Rabadon's Deathcap

-- Inserting item set
INSERT INTO skup_opreme (id_skup_opreme, datum_kreiranja_skupa, naziv_skupa, account_account_id, champion_champion_id)
VALUES (7, TO_DATE('2023-06-20', 'YYYY-MM-DD'), 'Nautilus Jungle Build', 5, 5);

-- Inserting item set blocks
INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (1, 'Starting Items', 7);

INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (2, 'Core Items', 7);

-- Inserting item set items
INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 1, 7, 20); -- Hunter's Machete

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 1, 7, 21); -- Stalker's Blade

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (3, 1, 7, 22); -- Tiamat

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 2, 7, 23); -- Titanic Hydra

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 2, 7, 24); -- Sterak's Gage

-- Inserting item set
INSERT INTO skup_opreme (id_skup_opreme, datum_kreiranja_skupa, naziv_skupa, account_account_id, champion_champion_id)
VALUES (8, TO_DATE('2023-06-20', 'YYYY-MM-DD'), 'Lux Mage Support Build', 6, 8);

-- Inserting item set blocks
INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (1, 'Starting Items', 8);

INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (2, 'Core Items', 8);

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 2, 8, 15); -- Luden's Echo

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 2, 8, 60); -- Rabadon's Deathcap

-- Inserting item set
INSERT INTO skup_opreme (id_skup_opreme, datum_kreiranja_skupa, naziv_skupa, account_account_id, champion_champion_id)
VALUES (10, TO_DATE('2023-06-20', 'YYYY-MM-DD'), 'Ornn Tank Top Build', 8, 17);

-- Inserting item set blocks
INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (1, 'Starting Items', 10);

INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (2, 'Core Items', 10);

-- Inserting item set items
INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 1, 10, 38); -- Doran's Shield

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 1, 10, 7); -- Sunfire Aegis

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (3, 1, 10, 40); -- Thornmail

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 2, 10, 41); -- Warmog's Armor

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 2, 10, 42); -- Randuin's Omen

-- Inserting item set
INSERT INTO skup_opreme (id_skup_opreme, datum_kreiranja_skupa, naziv_skupa, account_account_id, champion_champion_id)
VALUES (12, TO_DATE('2023-06-20', 'YYYY-MM-DD'), 'Fiora Fighter Build', 10, 13);

-- Inserting item set blocks
INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (1, 'Starting Items', 12);

INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (2, 'Core Items', 12);

-- Inserting item set items
INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 1, 12, 63); -- Doran's Blade

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 1, 12, 49); -- Ravenous Hydra

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (3, 1, 12, 24); -- Sterak's Gage

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 2, 12, 4); -- Guardian Angel

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 2, 12, 52); -- Black Cleaver

-- Inserting item set
INSERT INTO skup_opreme (id_skup_opreme, datum_kreiranja_skupa, naziv_skupa, account_account_id, champion_champion_id)
VALUES (13, TO_DATE('2023-06-20', 'YYYY-MM-DD'), 'Lulu Support Build', 11, 12);

-- Inserting item set blocks
INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (1, 'Starting Items', 13);

INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (2, 'Core Items', 13);

-- Inserting item set items
INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 1, 13, 53); -- Spellthief's Edge

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 1, 13, 54); -- Ardent Censer

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (3, 1, 13, 55); -- Redemption

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 2, 13, 56); -- Mikael's Blessing

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 2, 13, 57); -- Zeke's Convergence

-- Inserting item set
INSERT INTO skup_opreme (id_skup_opreme, datum_kreiranja_skupa, naziv_skupa, account_account_id, champion_champion_id)
VALUES (14, TO_DATE('2023-06-20', 'YYYY-MM-DD'), 'Lux Mage Build', 12, 8);

-- Inserting item set blocks
INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (1, 'Starting Items', 14);

INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (2, 'Core Items', 14);

-- Inserting item set items
INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 1, 14, 58); -- Doran's Ring

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 1, 14, 59); -- Luden's Echo

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (3, 1, 14, 60); -- Rabadon's Deathcap

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 2, 14, 61); -- Zhonya's Hourglass

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 2, 14, 62); -- Void Staff

-- Inserting item set
INSERT INTO skup_opreme (id_skup_opreme, datum_kreiranja_skupa, naziv_skupa, account_account_id, champion_champion_id)
VALUES (15, TO_DATE('2023-06-20', 'YYYY-MM-DD'), 'Zed Assassin Build', 13, 11);

-- Inserting item set blocks
INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme)
VALUES (1, 'Starting Items', 15);

INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme)
VALUES (2, 'Core Items', 15);

-- Inserting item set items
INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 1, 15, 63); -- Doran's Blade

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 1, 15, 64); -- Eclipse

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (3, 1, 15, 65); -- Youmuu's Ghostblade

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 2, 15, 66); -- Edge of Night

INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 2, 15, 67); -- Lord Dominik's Regards

-- Inserting item set
INSERT INTO skup_opreme (id_skup_opreme, datum_kreiranja_skupa, naziv_skupa, account_account_id, champion_champion_id)
VALUES (16, TO_DATE('2023-06-20', 'YYYY-MM-DD'), 'Jhin Build', 1, 10);

-- Item Set Block 1
INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (1, 'Starting Items', 16);

-- Item Set Items for Block 1
INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 1, 16, 1); -- Tear of the Goddess
INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 1, 16, 14); -- Essence Reaver

-- Item Set Block 2
INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (2, 'Core Items', 16);

-- Item Set Items for Block 2
INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 2, 16, 68); -- Ninja Tabi
INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 2, 16, 60); -- Rabadon's Deathcap

-- Item Set Block 3
INSERT INTO blok (pozicija_bloka, naziv_bloka, skup_opreme_id_skup_opreme) 
VALUES (3, 'Late Game Items', 16);

-- Item Set Items for Block 3
INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (1, 3, 16, 4); -- Guardian Angel
INSERT INTO stavka (preferirani_slot, blok_pozicija_bloka, blok_skup_opreme_id_skup_opreme, item_id_item)
VALUES (2, 3, 16, 23); -- Infinity Edge

commit;
