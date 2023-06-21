CREATE SEQUENCE journal_id_seq
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE;


CREATE OR REPLACE TRIGGER item_insert_trigger
AFTER INSERT ON item
FOR EACH ROW
BEGIN
    INSERT INTO item_journal(journal_id, operation, operation_timestamp, item_id, item_description, item_name)
    VALUES (journal_id_seq.NEXTVAL, 'INSERT', SYSTIMESTAMP, :NEW.item_id, :NEW.item_description, :NEW.item_name);
END;

CREATE OR REPLACE TRIGGER item_update_trigger
AFTER UPDATE ON item
FOR EACH ROW
BEGIN
    INSERT INTO item_journal(journal_id, operation, operation_timestamp, item_id, item_description, item_name)
    VALUES (journal_id_seq.NEXTVAL, 'UPDATE', SYSTIMESTAMP, :NEW.item_id, :NEW.item_description, :NEW.item_name);
END;

CREATE OR REPLACE TRIGGER item_delete_trigger
AFTER DELETE ON item
FOR EACH ROW
BEGIN
    INSERT INTO item_journal(journal_id, operation, operation_timestamp, item_id, item_description, item_name)
    VALUES (journal_id_seq.NEXTVAL, 'DELETE', SYSTIMESTAMP, :OLD.item_id, :OLD.item_description, :OLD.item_name);
END;



