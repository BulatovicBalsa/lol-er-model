SET FEEDBACK OFF
set serveroutput on format wrapped
begin
    DBMS_OUTPUT.put_line('#### Stampanje pogleda nastalog od kompleksnog upita ####');
end;
/
SET FEEDBACK ON
SELECT * FROM prosecan_broj_itema_po_skupu_opreme_za_champione_cije_ime_pocinje_odredjenim_slovom;
SET FEEDBACK OFF
set serveroutput on format wrapped;
begin
    DBMS_OUTPUT.put_line('#### Stampanje journal tabele ####');
end;
/
SET FEEDBACK ON
SELECT * FROM skup_opreme_journal;