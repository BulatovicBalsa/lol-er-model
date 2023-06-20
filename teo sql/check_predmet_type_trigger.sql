CREATE OR REPLACE TRIGGER check_predmet_type
BEFORE INSERT OR UPDATE ON predmet
FOR EACH ROW
DECLARE
    wrong_type EXCEPTION;
BEGIN
    IF :NEW.predmet_type NOT IN ('Champion', 'Skin', 'Chroma', 'Ward') THEN
        RAISE wrong_type;
    ELSIF :NEW.predmet_type = 'Champion' AND :NEW.predmet_champion_id IS NULL THEN
        RAISE_APPLICATION_ERROR(-20000, 'predmet_champion_id cannot be NULL when predmet_type is "Champion"');
    ELSIF :NEW.predmet_type = 'Skin' AND (:NEW.predmet_champion_id IS NULL OR :NEW.predmet_skin_id IS NULL) THEN
        RAISE_APPLICATION_ERROR(-20001, 'predmet_champion_id and predmet_skin_id cannot be NULL when predmet_type is "Skin"');
    ELSIF :NEW.predmet_type = 'Chroma' AND (:NEW.predmet_champion_id IS NULL OR :NEW.predmet_skin_id IS NULL OR :NEW.predmet_chroma_id IS NULL) THEN
        RAISE_APPLICATION_ERROR(-20002, 'predmet_champion_id, predmet_skin_id, and predmet_chroma_id cannot be NULL when predmet_type is "Chroma"');
    ELSIF :NEW.predmet_type = 'Ward' AND :NEW.predmet_ward_id IS NULL THEN
        RAISE_APPLICATION_ERROR(-20003, 'predmet_ward_id cannot be NULL when predmet_type is "Ward"');
    END IF;
EXCEPTION
    WHEN wrong_type THEN
        RAISE_APPLICATION_ERROR(-20004, 'predmet_type should be either "Champion", "Skin", "Chroma", or "Ward"');
END;
/



