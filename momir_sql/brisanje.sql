SET FEEDBACK OFF
set serveroutput on format wrapped
begin
    DBMS_OUTPUT.put_line('#### Promena skupa opreme sa id 10 (testirnaje trigger-a) ####');
end;
/
SET FEEDBACK ON
UPDATE skup_opreme SET champion_champion_id=1 WHERE id_skup_opreme=10;

SET FEEDBACK OFF
set serveroutput on format wrapped
begin
    DBMS_OUTPUT.put_line('#### Brisanje skupa opreme sa id 10 (testirnaje trigger-a) ####');
end;
/
SET FEEDBACK ON
DELETE FROM skup_opreme WHERE id_skup_opreme=10;