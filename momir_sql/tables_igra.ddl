CREATE TABLE blok (
    pozicija_bloka               INTEGER NOT NULL,
    naziv_bloka                  VARCHAR2(40 CHAR),
    skup_opreme_id_skup_opreme   INTEGER NOT NULL
);

ALTER TABLE blok ADD CHECK ( naziv_bloka <> '' );

ALTER TABLE blok ADD CONSTRAINT blok_pk PRIMARY KEY ( skup_opreme_id_skup_opreme,
                                                      pozicija_bloka );


ALTER TABLE blok ADD CONSTRAINT blok_naziv_bloka_skup_opreme_id_skup_opreme_un UNIQUE ( naziv_bloka,
                                                                                        skup_opreme_id_skup_opreme );

CREATE TABLE carolija_prizivaca (
    id_carolije_prizivaca   INTEGER NOT NULL,
    naziv                   VARCHAR2(30 CHAR) NOT NULL,
    opis                    VARCHAR2(100) NOT NULL
);

ALTER TABLE carolija_prizivaca ADD CONSTRAINT naziv_not_empty CHECK ( naziv <> '' );

ALTER TABLE carolija_prizivaca ADD CONSTRAINT opis_not_empty CHECK ( opis <> '' );

ALTER TABLE carolija_prizivaca ADD CONSTRAINT carolija_prizivaca_pk PRIMARY KEY ( id_carolije_prizivaca );

ALTER TABLE carolija_prizivaca ADD CONSTRAINT carolija_prizivaca_naziv_un UNIQUE ( naziv );

CREATE TABLE champion (
    champion_id           INTEGER NOT NULL,
    opis_champion         VARCHAR2(150 CHAR),
    champion_difficulty   INTEGER DEFAULT 2,
    champion_role         VARCHAR2(15),
    champion_top          INTEGER,
    champion_bottom      INTEGER,
    champion_jungle       INTEGER,
    champion_mid          INTEGER,
    champion_support      INTEGER,
    champion_moniker      VARCHAR2(30 CHAR) NOT NULL
);

ALTER TABLE champion
    ADD CHECK ( champion_difficulty IN (
        1,
        2,
        3
    ) );

ALTER TABLE champion
    ADD CONSTRAINT uloga_ch CHECK ( champion_role IN (
        'assassin',
        'fighter',
        'mage',
        'marksman',
        'specialist',
        'support',
        'tank'
    ) );

ALTER TABLE champion
    ADD CONSTRAINT top_ch CHECK ( champion_top IN (
        0,
        1
    ) );

ALTER TABLE champion
    ADD CONSTRAINT bottom_ch CHECK ( champion_bottom IN (
        0,
        1
    ) );

ALTER TABLE champion
    ADD CONSTRAINT jungle_ch CHECK ( champion_jungle IN (
        0,
        1
    ) );

ALTER TABLE champion
    ADD CONSTRAINT mid_ch CHECK ( champion_mid IN (
        0,
        1
    ) );

ALTER TABLE champion
    ADD CONSTRAINT support_ch CHECK ( champion_support IN (
        0,
        1
    ) );

ALTER TABLE champion ADD CONSTRAINT champion_moniker_ch CHECK ( champion_moniker <> '' );

ALTER TABLE champion ADD CONSTRAINT champion_pk PRIMARY KEY ( champion_id );

ALTER TABLE champion ADD CONSTRAINT champion_champion_moniker_un UNIQUE ( champion_moniker );

CREATE TABLE champion_shard (
    vrednost_shard         INTEGER,
    id_shard               INTEGER NOT NULL,
    champion_champion_id   INTEGER NOT NULL,
    orb_id_orb             INTEGER NOT NULL
);

ALTER TABLE champion_shard ADD CONSTRAINT champion_shard_pk PRIMARY KEY ( id_shard );

CREATE TABLE daje (
    nagrada_id_nagrade   INTEGER NOT NULL,
    orb_id_orb           INTEGER NOT NULL
);

ALTER TABLE daje ADD CONSTRAINT daje_pk PRIMARY KEY ( nagrada_id_nagrade,
                                                      orb_id_orb );

CREATE TABLE dobionagradu (
    nagrada_id_nagrade   INTEGER NOT NULL,
    account_account_id     INTEGER NOT NULL
);

ALTER TABLE dobionagradu ADD CONSTRAINT nagradjen_pk PRIMARY KEY ( nagrada_id_nagrade,
                                                                   account_account_id );

CREATE TABLE game (
    id_game         INTEGER NOT NULL,
    vreme_game      DATE,
    trajanje_game   INTERVAL DAY(9) TO SECOND(0),
    tim_id_tima     INTEGER NOT NULL
);

ALTER TABLE game ADD CONSTRAINT tim_id_tima_un UNIQUE ( tim_id_tima );


ALTER TABLE game ADD CONSTRAINT game_pk PRIMARY KEY ( id_game );

CREATE TABLE igrao (
    bio_eliminisan_puta       INTEGER,
    broj_eliminacija          INTEGER,
    broj_asistencija          INTEGER,
    nivo_u_partiji            INTEGER,
    zaradjeno_zlata           INTEGER,
    account_account_id          INTEGER NOT NULL,
    tim_id_tima               INTEGER NOT NULL,
    runa_id_rune              INTEGER NOT NULL,
    pohvaljen_igrac_id        INTEGER,
    tim_pohvaljenog_igraca    INTEGER,
    dodeljena_vrsta_pohvale   INTEGER
);

ALTER TABLE igrao ADD CONSTRAINT bio_eliminisan_puta_ch CHECK ( bio_eliminisan_puta >= 0 );

ALTER TABLE igrao ADD CONSTRAINT broj_eliminacija_ch CHECK ( broj_eliminacija >= 0 );

ALTER TABLE igrao ADD CONSTRAINT nivo_u_partiji_ch CHECK ( nivo_u_partiji >= 1 );

ALTER TABLE igrao ADD CONSTRAINT zaradjeno_zlata_ch CHECK ( zaradjeno_zlata >= 0 );

ALTER TABLE igrao ADD CONSTRAINT tim_pohvaljenog_igraca_ch CHECK ( tim_pohvaljenog_igraca = tim_id_tima );

ALTER TABLE igrao
    ADD CHECK ( ( dodeljena_vrsta_pohvale IS NOT NULL
                  AND pohvaljen_igrac_id IS NOT NULL )
                OR ( dodeljena_vrsta_pohvale IS NULL
                     AND pohvaljen_igrac_id IS NULL ) );

ALTER TABLE igrao ADD CONSTRAINT igrao_pk PRIMARY KEY ( tim_id_tima,
                                                        account_account_id );

CREATE TABLE item (
    id_item      INTEGER NOT NULL,
    naziv_item   VARCHAR2(50),
    opis_item    VARCHAR2(150)
);

ALTER TABLE item ADD CONSTRAINT naziv_item_ch CHECK ( naziv_item <> '' );

ALTER TABLE item ADD CONSTRAINT opis_item_ch CHECK ( opis_item <> '' );

ALTER TABLE item ADD CONSTRAINT item_pk PRIMARY KEY ( id_item );

ALTER TABLE item ADD CONSTRAINT item_naziv_item_un UNIQUE ( naziv_item );

CREATE TABLE izabraocarlolijuprizivaca ( 
    carolija_prizivaca_id_carolije_prizivaca   INTEGER NOT NULL,
    igrao_account_id                           INTEGER NOT NULL,
    igrao_tim_id_tima                          INTEGER NOT NULL
);

ALTER TABLE izabraocarlolijuprizivaca
    ADD CONSTRAINT izabraocarlolijuprizivaca_pk PRIMARY KEY ( carolija_prizivaca_id_carolije_prizivaca,
                                                              igrao_account_id,
                                                              igrao_tim_id_tima );

CREATE TABLE kupio (
    igrao_tim_id_tima        INTEGER NOT NULL,
    igrao_account_account_id   INTEGER NOT NULL,
    item_id_item             INTEGER NOT NULL
);

ALTER TABLE kupio
    ADD CONSTRAINT kupio_pk PRIMARY KEY ( igrao_tim_id_tima,
                                          igrao_account_account_id,
                                          item_id_item );

CREATE TABLE nagrada (
    id_nagrade      INTEGER NOT NULL,
    naziv_nagrade   VARCHAR2(50),
    prag            INTEGER
);

ALTER TABLE nagrada ADD CONSTRAINT prag_ch CHECK ( prag >= 0 );

ALTER TABLE nagrada ADD CONSTRAINT nagrada_pk PRIMARY KEY ( id_nagrade );

ALTER TABLE nagrada ADD CONSTRAINT nagrada_naziv_nagrade_un UNIQUE ( naziv_nagrade );

CREATE TABLE account (
    account_username    VARCHAR2(50 CHAR) NOT NULL,
    account_id          INTEGER NOT NULL,
    account_email       VARCHAR2(50 CHAR) NOT NULL,
    account_password    VARCHAR2(50 CHAR) NOT NULL,
    account_level       INTEGER DEFAULT 1 NOT NULL,
    account_ban_until   DATE,
    pohvala_poeni       INTEGER
);

ALTER TABLE account ADD CONSTRAINT account_pk PRIMARY KEY ( account_id );

CREATE TABLE orb (
    id_orb                   INTEGER NOT NULL,
    naziv_orba               VARCHAR2(30),
    broj_fragmenata_kljuca   INTEGER
);

ALTER TABLE orb ADD CONSTRAINT naziv_orba_ch CHECK ( naziv_orba <> '' );

ALTER TABLE orb ADD CONSTRAINT orb_pk PRIMARY KEY ( id_orb );

ALTER TABLE orb ADD CONSTRAINT orb_naziv_orba_un UNIQUE ( naziv_orba );

CREATE TABLE posedujeorb (
    orb_id_orb         INTEGER NOT NULL,
    account_account_id   INTEGER NOT NULL,
    broj_orbova        INTEGER
);

ALTER TABLE posedujeorb ADD CONSTRAINT broj_orbova_ch CHECK ( broj_orbova >= 0 );

ALTER TABLE posedujeorb ADD CONSTRAINT posedujeorb_pk PRIMARY KEY ( orb_id_orb,
                                                                    account_account_id );

CREATE TABLE posedujeshard (
    champion_shard_id_shard   INTEGER NOT NULL,
    account_account_id          INTEGER NOT NULL
);

ALTER TABLE posedujeshard ADD CONSTRAINT posedujeshard_pk PRIMARY KEY ( champion_shard_id_shard,
                                                                        account_account_id );

CREATE TABLE runa (
    id_rune     INTEGER NOT NULL,
    naziv       VARCHAR2(30 CHAR),
    opis_rune   VARCHAR2(50 CHAR)
);

ALTER TABLE runa ADD CHECK ( naziv <> '' );

ALTER TABLE runa ADD CONSTRAINT runa_pk PRIMARY KEY ( id_rune );

ALTER TABLE runa ADD CONSTRAINT runa_naziv_un UNIQUE ( naziv );

CREATE TABLE skup_opreme (
    id_skup_opreme          INTEGER NOT NULL,
    datum_kreiranja_skupa   DATE,
    naziv_skupa             VARCHAR2(40 CHAR),
    account_account_id        INTEGER NOT NULL,
    champion_champion_id    INTEGER NOT NULL
);

ALTER TABLE skup_opreme ADD CONSTRAINT naziv_ch CHECK ( naziv_skupa <> '' );

ALTER TABLE skup_opreme ADD CONSTRAINT skup_opreme_pk PRIMARY KEY ( id_skup_opreme );

ALTER TABLE skup_opreme ADD CONSTRAINT skup_opreme_naziv_skupa_un UNIQUE ( naziv_skupa );

CREATE TABLE stavka (
    preferirani_slot                  INTEGER,
    blok_pozicija_bloka               INTEGER NOT NULL, 
    blok_skup_opreme_id_skup_opreme   INTEGER NOT NULL,
    item_id_item                      INTEGER NOT NULL
);

ALTER TABLE stavka
    ADD CONSTRAINT preferirani_slot_ch CHECK ( preferirani_slot BETWEEN 0 AND 6 );

ALTER TABLE stavka
    ADD CONSTRAINT stavka_pk PRIMARY KEY ( item_id_item,
                                           blok_skup_opreme_id_skup_opreme,
                                           blok_pozicija_bloka );

CREATE TABLE tim (
    eliminacije_tima              INTEGER,
    asistencije_tima              INTEGER,
    primljenih_eliminacija_tima   INTEGER,
    id_tima                       INTEGER NOT NULL,
    game_id_game                  INTEGER NOT NULL
);

ALTER TABLE tim ADD CONSTRAINT eliminacije_tima_ch CHECK ( eliminacije_tima >= 0 );

ALTER TABLE tim ADD CONSTRAINT asistencije_tima_ch CHECK ( asistencije_tima >= 0 );

ALTER TABLE tim ADD CONSTRAINT primljenih_eliminacija_ch CHECK ( primljenih_eliminacija_tima >= 0 );

ALTER TABLE tim ADD CONSTRAINT tim_pk PRIMARY KEY ( id_tima );

CREATE TABLE vrstapohvale (
    id_vrste_pohvale      INTEGER NOT NULL,
    naziv_vrste_pohvale   VARCHAR2(30),
    broj_poena            INTEGER
);

ALTER TABLE vrstapohvale ADD CONSTRAINT broj_poena_ch CHECK ( broj_poena >= 0 );

ALTER TABLE vrstapohvale ADD CONSTRAINT vrstapohvale_pk PRIMARY KEY ( id_vrste_pohvale );


ALTER TABLE vrstapohvale ADD CONSTRAINT vrstapohvale_naziv_vrste_pohvale_un UNIQUE ( naziv_vrste_pohvale );

ALTER TABLE blok
    ADD CONSTRAINT blok_skup_opreme_fk FOREIGN KEY ( skup_opreme_id_skup_opreme )
        REFERENCES skup_opreme ( id_skup_opreme )
        ON DELETE CASCADE;

ALTER TABLE champion_shard
    ADD CONSTRAINT champion_shard_champion_fk FOREIGN KEY ( champion_champion_id )
        REFERENCES champion ( champion_id );

ALTER TABLE champion_shard
    ADD CONSTRAINT champion_shard_orb_fk FOREIGN KEY ( orb_id_orb )
        REFERENCES orb ( id_orb );

ALTER TABLE daje
    ADD CONSTRAINT daje_nagrada_fk FOREIGN KEY ( nagrada_id_nagrade )
        REFERENCES nagrada ( id_nagrade );

ALTER TABLE daje
    ADD CONSTRAINT daje_orb_fk FOREIGN KEY ( orb_id_orb )
        REFERENCES orb ( id_orb );

ALTER TABLE game
    ADD CONSTRAINT game_tim_fk FOREIGN KEY ( tim_id_tima )
        REFERENCES tim ( id_tima );

ALTER TABLE igrao
    ADD CONSTRAINT igrao_igrao_fk FOREIGN KEY ( tim_pohvaljenog_igraca,
                                                pohvaljen_igrac_id )
        REFERENCES igrao ( tim_id_tima,
                           account_account_id );

ALTER TABLE igrao
    ADD CONSTRAINT igrao_account_fk FOREIGN KEY ( account_account_id )
        REFERENCES account ( account_id );

ALTER TABLE igrao
    ADD CONSTRAINT igrao_runa_fk FOREIGN KEY ( runa_id_rune )
        REFERENCES runa ( id_rune );

ALTER TABLE igrao
    ADD CONSTRAINT igrao_tim_fk FOREIGN KEY ( tim_id_tima )
        REFERENCES tim ( id_tima );

ALTER TABLE igrao
    ADD CONSTRAINT igrao_vrstapohvale_fk FOREIGN KEY ( dodeljena_vrsta_pohvale )
        REFERENCES vrstapohvale ( id_vrste_pohvale );

ALTER TABLE izabraocarlolijuprizivaca
    ADD CONSTRAINT izabraocarlolijuprizivaca_carolija_prizivaca_fk FOREIGN KEY ( carolija_prizivaca_id_carolije_prizivaca )
        REFERENCES carolija_prizivaca ( id_carolije_prizivaca );

ALTER TABLE izabraocarlolijuprizivaca
    ADD CONSTRAINT izabraocarlolijuprizivaca_igrao_fk FOREIGN KEY ( igrao_tim_id_tima,
                                                                    igrao_account_id )
        REFERENCES igrao ( tim_id_tima,
                           account_account_id );

ALTER TABLE kupio
    ADD CONSTRAINT kupio_igrao_fk FOREIGN KEY ( igrao_tim_id_tima,
                                                igrao_account_account_id )
        REFERENCES igrao ( tim_id_tima,
                           account_account_id );

ALTER TABLE kupio
    ADD CONSTRAINT kupio_item_fk FOREIGN KEY ( item_id_item )
        REFERENCES item ( id_item );

ALTER TABLE dobionagradu
    ADD CONSTRAINT nagradjen_nagrada_fk FOREIGN KEY ( nagrada_id_nagrade )
        REFERENCES nagrada ( id_nagrade );

ALTER TABLE dobionagradu
    ADD CONSTRAINT nagradjen_account_fk FOREIGN KEY ( account_account_id )
        REFERENCES account ( account_id );

ALTER TABLE posedujeorb
    ADD CONSTRAINT posedujeorb_account_fk FOREIGN KEY ( account_account_id )
        REFERENCES account ( account_id );

ALTER TABLE posedujeorb
    ADD CONSTRAINT posedujeorb_orb_fk FOREIGN KEY ( orb_id_orb )
        REFERENCES orb ( id_orb );

ALTER TABLE posedujeshard
    ADD CONSTRAINT posedujeshard_champion_shard_fk FOREIGN KEY ( champion_shard_id_shard )
        REFERENCES champion_shard ( id_shard );

ALTER TABLE posedujeshard
    ADD CONSTRAINT posedujeshard_account_fk FOREIGN KEY ( account_account_id )
        REFERENCES account ( account_id );

ALTER TABLE skup_opreme
    ADD CONSTRAINT skup_opreme_champion_fk FOREIGN KEY ( champion_champion_id )
        REFERENCES champion ( champion_id );

ALTER TABLE skup_opreme
    ADD CONSTRAINT skup_opreme_account_fk FOREIGN KEY ( account_account_id )
        REFERENCES account ( account_id );

ALTER TABLE stavka
    ADD CONSTRAINT stavka_blok_fk FOREIGN KEY ( blok_skup_opreme_id_skup_opreme,
                                                blok_pozicija_bloka )
        REFERENCES blok ( skup_opreme_id_skup_opreme,
                          pozicija_bloka ) 
        ON DELETE CASCADE;

ALTER TABLE stavka
    ADD CONSTRAINT stavka_item_fk FOREIGN KEY ( item_id_item )
        REFERENCES item ( id_item );

ALTER TABLE tim
    ADD CONSTRAINT tim_game_fk FOREIGN KEY ( game_id_game )
        REFERENCES game ( id_game );
