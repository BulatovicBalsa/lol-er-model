CREATE TABLE skup_opreme_journal (
    id_skupa_opreme INTEGER NOT NULL,
    vreme_izmene TIMESTAMP NOT NULL,
    vrsta_izmene VARCHAR(3) NOT NULL,
    champion_champion_id INTEGER,
    CONSTRAINT skup_opreme_journal_pk PRIMARY KEY (id_skupa_opreme, vreme_izmene, vrsta_izmene),
    CONSTRAINT vrsta_izmene_ch CHECK (vrsta_izmene IN ('INS', 'UPD', 'DEL'))
);

CREATE OR REPLACE TRIGGER Trg_skup_opreme_journal_INSUPDDEL
BEFORE INSERT OR UPDATE OF champion_champion_id OR DELETE
ON skup_opreme
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO skup_opreme_journal (id_skupa_opreme, vreme_izmene, vrsta_izmene, champion_champion_id)
        VALUES (:NEW.id_skup_opreme, SYSDATE, 'INS', :NEW.champion_champion_id);
    ELSIF UPDATING ('champion_champion_id') THEN
        INSERT INTO skup_opreme_journal (id_skupa_opreme, vreme_izmene, vrsta_izmene, champion_champion_id)
        VALUES (:OLD.id_skup_opreme, SYSDATE, 'UPD', :OLD.champion_champion_id);
    ELSIF DELETING THEN
        INSERT INTO skup_opreme_journal (id_skupa_opreme, vreme_izmene, vrsta_izmene, champion_champion_id)
        VALUES (:OLD.id_skup_opreme, SYSDATE, 'DEL', :OLD.champion_champion_id);
    END IF;
END Trg_skup_opreme_journal_INSUPDDEL;
/