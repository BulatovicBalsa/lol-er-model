INSERT INTO item (item_id, item_description, item_name) 
VALUES (1, 'This is item 1', 'Item1');

INSERT INTO item (item_id, item_description, item_name) 
VALUES (2, 'This is item 2', 'Item2');

INSERT INTO item (item_id, item_description, item_name) 
VALUES (3, 'This is item 3', 'Item3');

INSERT INTO item (item_id, item_description, item_name) 
VALUES (4, 'This is item 4', 'Item4');

INSERT INTO item (item_id, item_description, item_name) 
VALUES (5, 'This is item 5', 'Item5');

DELETE FROM item 
WHERE item_id = 1;

DELETE FROM item 
WHERE item_id = 2;

UPDATE item 
SET item_description = 'This is updated item', item_name = 'UpdatedItem' 
WHERE item_id = 3;

