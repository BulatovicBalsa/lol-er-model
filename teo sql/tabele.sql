create table item (
    item_id integer not null,
    item_description varchar(50),
    item_name varchar(20) not null,
    
    CONSTRAINT item_pk PRIMARY KEY (item_id),
    CONSTRAINT item_name_uq UNIQUE (item_name)
);

create table game_patch (
    patch_name varchar(20),
    patch_start_date Date not null,
    
    CONSTRAINT game_patch_pk PRIMARY KEY (patch_name)
);

create table inventory (
    inventory_patch_name varchar(20),
    inventory_id integer,
    
    CONSTRAINT inventory_pk PRIMARY KEY (inventory_patch_name,inventory_id),
    CONSTRAINT inventory_patch_name_fk FOREIGN KEY (inventory_patch_name) REFERENCES game_patch(patch_name)
);

create table stats (
    stats_item_id integer not null,
    stats_patch_name varchar(20),
    stats_health integer not null,
    stats_AS integer not null,
    stats_AP integer not null,
    stats_AD integer not null,
    stats_MR integer not null,
    
    CONSTRAINT stats_pk PRIMARY KEY (stats_patch_name,stats_item_id),
    CONSTRAINT stats_patch_name_fk FOREIGN KEY (stats_patch_name) REFERENCES game_patch(patch_name),
    CONSTRAINT stats_item_id_fk FOREIGN KEY (stats_item_id) REFERENCES item(item_id)
);

create table in_game_pricelist (
    in_game_pricelist_id integer not null,
    in_game_pricelist_patch_name varchar(20),
    in_game_pricelist_item_id integer,
    in_game_pricelist_price integer not null,
    
    CONSTRAINT in_game_pricelist_pk PRIMARY KEY (in_game_pricelist_id,in_game_pricelist_patch_name,in_game_pricelist_item_id),
    CONSTRAINT in_game_pricelist_patch_name_fk FOREIGN KEY (in_game_pricelist_patch_name) REFERENCES game_patch(patch_name),
    CONSTRAINT in_game_pricelist_item_id_fk FOREIGN KEY (in_game_pricelist_item_id) REFERENCES item(item_id)
);

create table item_category (
    item_category_id integer not null,
    item_category_name varchar(20) not null,
    item_category_description varchar(50),
    
    CONSTRAINT item_category_pk PRIMARY KEY (item_category_id)
);

create table belongs_to_category (
    item_id integer not null,
    item_category_id integer not null,
    
    CONSTRAINT belongs_to_category_pk PRIMARY KEY (item_id,item_category_id),
    CONSTRAINT item_id_fk FOREIGN KEY (item_id) REFERENCES item(item_id),
    CONSTRAINT item_category_id_fk FOREIGN KEY (item_category_id) REFERENCES item_category(item_category_id)
);

create table demands_item (
    item_id_demanding integer not null,
    item_id_required integer not null,
    
    CONSTRAINT demands_item_pk PRIMARY KEY (item_id_demanding,item_id_required),
    CONSTRAINT item_id_demanding_fk FOREIGN KEY (item_id_demanding) REFERENCES item(item_id),
    CONSTRAINT item_id_required_fk FOREIGN KEY (item_id_required) REFERENCES item(item_id)
);

create table contains_item (
    inventory_patch_name varchar(20),
    inventory_id integer,
    item_id integer,
    
    CONSTRAINT contains_item_pk PRIMARY KEY (inventory_patch_name,inventory_id,item_id),
    CONSTRAINT inventory_fk FOREIGN KEY (inventory_patch_name, inventory_id) REFERENCES inventory(inventory_patch_name, inventory_id),
    CONSTRAINT containts_item_id_fk FOREIGN KEY (item_id) REFERENCES item(item_id)
);

create table predmet (
    predmet_id integer not null,
    predmet_name varchar(20) not null,
    predmet_description varchar(50),
    predmet_type varchar(20),
    
    CONSTRAINT predmet_pk PRIMARY KEY (predmet_id)
);

create table discount (
    predmet_id integer not null,
    discount_start_date Date not null,
    discount_name varchar(20),
    discount_priority integer default 0,
    discount_percent integer not null,
    
    CONSTRAINT discount_pk PRIMARY KEY (predmet_id,discount_start_date),
    CONSTRAINT predmet_id_fk FOREIGN KEY (predmet_id) REFERENCES predmet(predmet_id),
    CONSTRAINT discount_priority_ch CHECK (discount_priority in (0,1,2,3)),
    CONSTRAINT discount_percent_ch CHECK (discount_percent BETWEEN 0 AND 100)
);

create table pricelist (
    predmet_id integer not null,
    pricelist_start_date date,
    pricelist_price integer not null,
    
    CONSTRAINT pricelist_pk PRIMARY KEY (predmet_id,pricelist_start_date),
    CONSTRAINT pricelist_predmet_id_fk FOREIGN KEY (predmet_id) REFERENCES predmet(predmet_id),
    CONSTRAINT pricelist_price_ch CHECK (pricelist_price>0)
);

create table payment_method (
      payment_method_id integer not null,
      payment_method_name varchar(20) not null,
      
      CONSTRAINT payment_method_pk PRIMARY KEY (payment_method_id)
);

create table user_account (
    user_account_id integer not null,
    user_account_username VARCHAR(50) not null,
    user_account_email VARCHAR(50) not null,
    user_account_password VARCHAR(50) not null,
    user_account_level integer default 1,
    user_account_ban_until date,
    
    CONSTRAINT user_account_pk PRIMARY KEY (user_account_id)
);

create table purchase (
    purchase_id integer not null,
    purchase_date date not null,
    payment_method_id integer not null,
    predmet_id integer not null,
    user_account_buyer integer not null,
    user_account_gifter integer,
    user_account_recipient integer,
    
    CONSTRAINT purchase_pk PRIMARY KEY (purchase_id),
    CONSTRAINT purchase_payment_method_id_fk FOREIGN KEY (payment_method_id) REFERENCES payment_method(payment_method_id),
    CONSTRAINT purchase_predmet_id_fk FOREIGN KEY (predmet_id) REFERENCES predmet(predmet_id),
    CONSTRAINT purchase_user_account_buyer_fk FOREIGN KEY (user_account_buyer) REFERENCES user_account(user_account_id),
    CONSTRAINT purchase_user_account_gifter_fk FOREIGN KEY (user_account_gifter) REFERENCES user_account(user_account_id),    
    CONSTRAINT purchase_user_account_recipient_fk FOREIGN KEY (user_account_recipient) REFERENCES user_account(user_account_id)
);

create table review (
    review_id integer,
    review_text varchar(100),
    review_rating integer not null,
    review_date date,
    purchase_id integer,
    
    CONSTRAINT review_pk PRIMARY KEY (review_id,purchase_id),
    CONSTRAINT review_purchase_id_fk FOREIGN KEY (purchase_id) REFERENCES purchase(purchase_id),
    CONSTRAINT review_rating_ch CHECK (review_rating BETWEEN 0 AND 10)
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
    predmet_id integer not null,
    
    CONSTRAINT champion_pk PRIMARY KEY (champion_id),
    CONSTRAINT champion_predmet_id_fk FOREIGN KEY (predmet_id) REFERENCES predmet(predmet_id),
    CONSTRAINT champion_predmet_id_un UNIQUE (predmet_id),
    CONSTRAINT champion_difficulty_ch CHECK (champion_difficulty in (1, 2, 3)),
    CONSTRAINT champion_jungle_ch CHECK (champion_jungle in (0, 1)),
    CONSTRAINT champion_bottom_ch CHECK (champion_bottom in (0, 1)),
    CONSTRAINT champion_top_ch CHECK (champion_top in (0, 1)),
    CONSTRAINT champion_mid_ch CHECK (champion_mid in (0, 1)),
    CONSTRAINT champion_support_ch CHECK (champion_support in (0, 1)),
    CONSTRAINT champion_role_ch CHECK (champion_role in ('assassin', 'mage', 'marksman', 'support', 'tank', 'fighter', 'specialist'))
);

create table skin (
    champion_id integer not null,
    skin_id integer not null,
    skin_name VARCHAR(30) not null,
    skin_rarity VARCHAR(10) not null,
    skin_legacy integer default 0,
    predmet_id integer not null,

    CONSTRAINT skin_pk PRIMARY KEY (skin_id),
    CONSTRAINT champion_id_fk FOREIGN KEY (champion_id) REFERENCES champion(champion_id),
    CONSTRAINT skin_predmet_id_fk FOREIGN KEY (predmet_id) REFERENCES predmet(predmet_id),
    CONSTRAINT skin_predmet_id_un UNIQUE (predmet_id),
    CONSTRAINT skin_rarity_ch CHECK (skin_rarity in ('common', 'epic', 'legendary', 'ultimate', 'mythic')),
    CONSTRAINT skin_legacy_ch CHECK (skin_legacy in (0, 1)),
    CONSTRAINT skin_name_uq UNIQUE (skin_name)
);

CREATE TABLE chroma (
    skin_id integer not null,
    chroma_id integer not null,
    chroma_name VARCHAR(100) not null,
    predmet_id integer not null,

    CONSTRAINT chroma_pk PRIMARY KEY (chroma_id),
    CONSTRAINT chroma_skin_name_fk FOREIGN KEY (skin_id) REFERENCES skin(skin_id),
    CONSTRAINT chroma_predmet_id_fk FOREIGN KEY (predmet_id) REFERENCES predmet(predmet_id),
    CONSTRAINT chroma_predmet_id_un UNIQUE (predmet_id),
    CONSTRAINT chroma_name_uq UNIQUE (chroma_name)
);

create table ward (
    ward_id integer not null,
    ward_name varchar(20) not null,
    predmet_id integer not null,
    
    CONSTRAINT ward_pk PRIMARY KEY (ward_id),
    CONSTRAINT ward_predmet_id_fk FOREIGN KEY (predmet_id) REFERENCES predmet(predmet_id)
);
