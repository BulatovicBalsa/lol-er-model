create table region (
    region_id integer not null,
    region_short varchar(4) not null,
    region_name varchar(22) not null,
    
    CONSTRAINT region_pk PRIMARY KEY (region_id),
    CONSTRAINT region_name_uq UNIQUE (region_name)
);

create table ip (
    ip_id integer not null,
    ip_address varchar(45) not null,
    ip_blocked integer default 0,
    
    CONSTRAINT ip_blocked_ch CHECK (ip_blocked in (0, 1)),
    CONSTRAINT ip_pk primary key (ip_id),
    CONSTRAINT ip_address_uq UNIQUE (ip_address)
);

CREATE TABLE server (
    server_id INTEGER not null,
    server_city VARCHAR(100) not null,
    server_country VARCHAR(100) not null,
    status VARCHAR(20) default 'Offline' not null ,
    server_address integer,
    
    CONSTRAINT server_pk PRIMARY KEY (server_id),
    CONSTRAINT server_status_ch CHECK (status IN ('Online', 'Offline', 'Maintenance', 'Busy', 'Error', 'Standby', 'Decommissioned', 'Unknown')),
    CONSTRAINT server_address_fk FOREIGN KEY (server_address) REFERENCES ip(ip_id)
);

create table region_server (
    server_id INTEGER not null,
    region_id integer not null,
    CONSTRAINT region_server_pk PRIMARY KEY (server_id, region_id),
    CONSTRAINT region_server_ser_id_fk FOREIGN KEY (server_id) REFERENCES Server (server_id),
    CONSTRAINT region_server_reg_id_fk FOREIGN KEY (region_id) REFERENCES Region (region_id)
);

create table account (
    account_id integer not null,
    account_username VARCHAR(50) not null,
    account_email VARCHAR(50) not null,
    account_password VARCHAR(50) not null,
    account_level integer default 1,
    account_ban_until date,
    region_id INTEGER NOT NULL,
    
    CONSTRAINT account_pk PRIMARY KEY (account_id),
    CONSTRAINT account_region_fk FOREIGN KEY(region_id) REFERENCES region(region_id)
);

create table summoner_name (
    account_id integer not null,
    summoner_name_start_date date not null,
    summoner_name_name VARCHAR(50) not null,
    
    CONSTRAINT summoner_name_pk PRIMARY KEY (account_id, summoner_name_start_date, summoner_name_name),
    CONSTRAINT summoner_name_fk FOREIGN KEY (account_id) REFERENCES account(account_id)
);

create sequence message_seq 
    start with 1
    INCREMENT by 1
    NOCACHE
    NOCYCLE;

create sequence report_seq 
    start with 1
    INCREMENT by 1
    NOCACHE
    NOCYCLE;

create sequence journal_seq 
    start with 1
    INCREMENT by 1
    NOCACHE
    NOCYCLE;

create table message (
    message_from integer not null,
    message_number integer not null,
    message_to integer not null,
    message_content VARCHAR(256) not null,
    message_date DATE not null,
    
    CONSTRAINT message_pk PRIMARY KEY (message_from, message_number),
    CONSTRAINT message_from_fk FOREIGN KEY (message_from) REFERENCES account(account_id),
    CONSTRAINT message_to_fk FOREIGN KEY (message_to) REFERENCES account(account_id),
    CONSTRAINT message_self_send_ch CHECK (message_to != message_from)
);

create table report (
    report_from integer not null,
    report_number integer not null,
    report_to integer not null,
    report_content VARCHAR(256) not null,
    report_date DATE not null,
    
    CONSTRAINT report_pk PRIMARY KEY (report_from, report_number),
    CONSTRAINT report_from_fk FOREIGN KEY (report_from) REFERENCES account(account_id),
    CONSTRAINT report_to_fk FOREIGN KEY (report_to) REFERENCES account(account_id),
    CONSTRAINT report_self_rep_ch CHECK (report_to != report_from)
);


create table friend (
    friend_1 integer not null,
    friend_2 integer not null,
    
    CONSTRAINT friend_pk PRIMARY KEY (friend_1, friend_2),
    CONSTRAINT friend_1_fk FOREIGN KEY (friend_1) REFERENCES account(account_id),
    CONSTRAINT friend_2_fk FOREIGN KEY (friend_2) REFERENCES account(account_id),
    CONSTRAINT self_friend_ch CHECK (friend_1 != friend_2)
);

create table default_command (
    default_command_id integer not null,
    deafult_command_key_code VARCHAR(20) not null,
    default_command_action VARCHAR(100) not null,
    
    CONSTRAINT default_command_pk PRIMARY KEY (default_command_id),
    CONSTRAINT default_command_key_uq UNIQUE (deafult_command_key_code),
    CONSTRAINT default_command_action_uq UNIQUE (default_command_action)
);

create table command (
    command_id integer not null,
    account_owner_id integer not null,
    command_key_code VARCHAR(10) not null,
    command_action VARCHAR(100) not null,
    
    CONSTRAINT command_pk PRIMARY KEY (command_id),
    CONSTRAINT command_key_uq UNIQUE (command_key_code),
    CONSTRAINT command_action_uq UNIQUE (command_action),
    CONSTRAINT command_fk FOREIGN KEY (account_owner_id) REFERENCES account(account_id)
);


create table champion (
    champion_id integer not null,
    champion_difficulty integer default 2,
    champion_role VARCHAR(15) not null,
    champion_moniker VARCHAR(50) not null,
    champion_jungle integer default 0,
    champion_top integer default 0,
    champion_bottom integer default 0,
    champion_support integer default 0,
    champion_mid integer default 0,
    
    CONSTRAINT champion_pk PRIMARY KEY (champion_id),
    CONSTRAINT champion_difficulty_ch CHECK (champion_difficulty in (1, 2, 3)),
    CONSTRAINT champion_jungle_ch CHECK (champion_jungle in (0, 1)),
    CONSTRAINT champion_bottom_ch CHECK (champion_bottom in (0, 1)),
    CONSTRAINT champion_top_ch CHECK (champion_top in (0, 1)),
    CONSTRAINT champion_mid_ch CHECK (champion_mid in (0, 1)),
    CONSTRAINT champion_support_ch CHECK (champion_support in (0, 1)),
    CONSTRAINT champion_role_ch CHECK (champion_role in ('assassin', 'mage', 'marksman', 'support', 'tank', 'fighter', 'specialist'))
);

create table emote (
    champion_owner integer not null,
    emote_id integer not null,
    emote_name VARCHAR(20) not null,
    emote_duration integer default -1,
    
    CONSTRAINT emote_pk PRIMARY KEY (champion_owner, emote_id),
    CONSTRAINT emote_fk FOREIGN KEY (champion_owner) REFERENCES champion(champion_id),
    CONSTRAINT emote_uq UNIQUE (emote_id)
);

create table skin (
    champion_id integer not null,
    skin_id integer not null,
    skin_name VARCHAR(70) not null,
    skin_rarity VARCHAR(10) not null,
    skin_legacy integer default 0,

    CONSTRAINT skin_pk PRIMARY KEY (champion_id, skin_id),
    CONSTRAINT skin_fk FOREIGN KEY (champion_id) REFERENCES champion(champion_id),
    CONSTRAINT skin_rarity_ch CHECK (skin_rarity in ('common', 'epic', 'legendary', 'ultimate', 'mythic')),
    CONSTRAINT skin_legacy_ch CHECK (skin_legacy in (0, 1)),
    CONSTRAINT skin_id_uq UNIQUE (skin_id),
    CONSTRAINT skin_name_uq UNIQUE (skin_name)
);

CREATE TABLE chroma (
    champion_id integer not null,
    skin_id integer not null,
    chroma_id integer not null,
    chroma_name VARCHAR(100) not null,

    CONSTRAINT chroma_pk PRIMARY KEY (champion_id, skin_id, chroma_id),
    CONSTRAINT chroma_fk FOREIGN KEY (champion_id, skin_id) REFERENCES skin(champion_id, skin_id),
    CONSTRAINT chroma_name_uq UNIQUE (chroma_name),
    CONSTRAINT chroma_id_uq UNIQUE (chroma_id)
);

create table owns_champion (
    account_id integer not null,
    champion_id integer not null,

    CONSTRAINT owns_champion_pk PRIMARY KEY (account_id, champion_id),
    CONSTRAINT owns_champion_acc_fk FOREIGN key (account_id) REFERENCES account(account_id),
    CONSTRAINT owns_champion_champion_fk FOREIGN key (champion_id) REFERENCES champion(champion_id)
);

create table owns_skin (
    account_id integer not null,
    champion_id integer not null,
    skin_id integer not null,

    CONSTRAINT owns_skin_pk PRIMARY KEY (account_id, champion_id, skin_id),
    CONSTRAINT owns_skin_acc_fk FOREIGN key (account_id, champion_id) REFERENCES owns_champion(account_id, champion_id),
    CONSTRAINT owns_skin_fk FOREIGN key (skin_id) REFERENCES skin(skin_id)
);

create table owns_chroma (
    account_id integer not null,
    champion_id integer not null,
    skin_id integer not null,
    chroma_id integer not null,

    CONSTRAINT owns_chroma_pk PRIMARY KEY (account_id, champion_id, skin_id, chroma_id),
    CONSTRAINT owns_chroma_acc_fk FOREIGN key (account_id, champion_id, skin_id) REFERENCES owns_skin(account_id, champion_id, skin_id),
    CONSTRAINT owns_chroma_fk FOREIGN key (chroma_id) REFERENCES chroma(chroma_id)
);

create table account_journal (
  journal_id INT,
  operation VARCHAR2(10),
  operation_date TIMESTAMP,
  account_id INTEGER,
  account_username VARCHAR2(50),
  account_email VARCHAR2(50),
  account_password VARCHAR2(50),
  account_level INTEGER,
  account_ban_until DATE,
  region_id INTEGER,

  CONSTRAINT account_journal_pk PRIMARY KEY (journal_id),
  CONSTRAINT operation_ch CHECK (operation in ('insert', 'update', 'delete'))
);

create or replace view champion_lookup as 
select champion_moniker, ukupno_skinova, ukupno_chroma, nvl(prosek_dugackih_emota, 0) as prosek_dugackih
from champion natural join (select champion_id, count(*) ukupno_skinova from skin group by champion_id)
left outer join (select champion_id as ccid, count(*) as ukupno_chroma from chroma group by champion_id) on champion_id = ccid
left outer join (select champion_owner, round(avg(emote_duration), 2) as prosek_dugackih_emota 
from emote where emote_duration > 4 group by champion_owner)
on champion_id = champion_owner
order by champion_moniker;

select * from champion_lookup;

