set serveroutput on format wrapped
CREATE OR REPLACE PROCEDURE SKUP_OPREME_LISTA IS
    TYPE T_SKUP_OPREME_SLOG IS RECORD (
        id_skup_opreme skup_opreme.id_skup_opreme%TYPE,
        naziv_skupa skup_opreme.naziv_skupa%TYPE,
        champion_moniker champion.champion_moniker%TYPE,
        username account.account_username%TYPE
    );
    
    TYPE T_BLOK_SLOG IS RECORD (
        pozicija_bloka blok.pozicija_bloka%TYPE,
        id_skup_opreme blok.skup_opreme_id_skup_opreme%TYPE,
        naziv_bloka blok.naziv_bloka%TYPE
    );
    
    TYPE T_STAVKA_SLOG IS RECORD (
        naziv_itema item.naziv_item%TYPE,
        opis_itema item.opis_item%TYPE
    );
    
    v_skup_opreme T_SKUP_OPREME_SLOG;
    v_blok T_BLOK_SLOG;
    v_stavka T_STAVKA_SLOG;
    
    skup_opreme_red VARCHAR(200);
    blok_red VARCHAR(200);
    stavka_red VARCHAR(200);
    red_delimiter VARCHAR(200);
    
    CURSOR spisak_skup_opreme IS
    SELECT id_skup_opreme, naziv_skupa, champion_moniker, account_username
    FROM skup_opreme INNER JOIN champion ON skup_opreme.champion_champion_id = champion.champion_id
    INNER JOIN account on skup_opreme.account_account_id = account.account_id;
    
    CURSOR spisak_blok (id_skup_opreme skup_opreme.id_skup_opreme%TYPE) IS
    SELECT pozicija_bloka, skup_opreme_id_skup_opreme, naziv_bloka
    FROM blok
    WHERE skup_opreme_id_skup_opreme = id_skup_opreme
    ORDER BY pozicija_bloka;
    
    CURSOR spisak_stavka (id_skup_opreme skup_opreme.id_skup_opreme%TYPE, pozicija_bloka blok.pozicija_bloka%TYPE) IS
    SELECT naziv_item, opis_item
    FROM stavka INNER JOIN item ON stavka.item_id_item = item.id_item
    WHERE stavka.blok_pozicija_bloka = pozicija_bloka AND stavka.blok_skup_opreme_id_skup_opreme = id_skup_opreme;
    
    BEGIN
    OPEN spisak_skup_opreme;
    LOOP
        FETCH spisak_skup_opreme INTO v_skup_opreme;
        EXIT WHEN spisak_skup_opreme%NOTFOUND;
        skup_opreme_red := ('SKUP OPREME ' ||  v_skup_opreme.naziv_skupa || ' za ' || v_skup_opreme.champion_moniker || ' napravljen od strane ' || v_skup_opreme.username);
        DBMS_OUTPUT.PUT_LINE(skup_opreme_red);
        SELECT rpad('*', LENGTH(skup_opreme_red), '*')
        INTO red_delimiter
        from dual;
        DBMS_OUTPUT.PUT_LINE(red_delimiter);
        OPEN spisak_blok (v_skup_opreme.id_skup_opreme);
         LOOP
            FETCH spisak_blok INTO v_blok;
            EXIT WHEN spisak_blok%NOTFOUND;
            blok_red := ('BLOK: ' || v_blok.naziv_bloka);
            DBMS_OUTPUT.PUT_LINE('  ' || blok_red);
            
            stavka_red := '| ';
            FOR v_stavka IN spisak_stavka (v_skup_opreme.id_skup_opreme, v_blok.pozicija_bloka) LOOP
                stavka_red := stavka_red || v_stavka.naziv_item || ' | ';
            END LOOP;
            SELECT rpad('-', LENGTH(stavka_red)-1, '-')
            INTO red_delimiter
            from dual;
            
            DBMS_OUTPUT.PUT_LINE('  ' || red_delimiter);
            DBMS_OUTPUT.PUT_LINE('  ' || stavka_red);
            DBMS_OUTPUT.PUT_LINE('  ' || red_delimiter);
            DBMS_OUTPUT.PUT_LINE('');
            
         END LOOP;
        CLOSE spisak_blok;
        DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
    CLOSE spisak_skup_opreme;
END;
    /
    
BEGIN
    SKUP_OPREME_LISTA();
END;
/