CREATE OR REPLACE VIEW prosecan_broj_itema_po_skupu_opreme_za_champione_cije_ime_pocinje_odredjenim_slovom AS
WITH championi_koji_imaju_vise_od_4_itema_ukupno_u_skupovima_opreme AS (
    SELECT champion.champion_moniker, skup_opreme.champion_champion_id champion_id, COUNT(*) broj_itema
    FROM skup_opreme INNER JOIN blok ON skup_opreme.id_skup_opreme = blok.skup_opreme_id_skup_opreme
    INNER JOIN champion ON skup_opreme.champion_champion_id = champion.champion_id
    INNER JOIN stavka ON (stavka.blok_pozicija_bloka = blok.pozicija_bloka AND stavka.blok_skup_opreme_id_skup_opreme = blok.skup_opreme_id_skup_opreme)
    GROUP BY skup_opreme.champion_champion_id, champion.champion_moniker HAVING COUNT(*) > 5
),
broj_itema_po_skupu_opreme AS (
    SELECT skup_opreme.champion_champion_id champion_id, skup_opreme.id_skup_opreme, COUNT(*) broj_itema
    FROM skup_opreme INNER JOIN blok ON skup_opreme.id_skup_opreme = blok.skup_opreme_id_skup_opreme
    INNER JOIN stavka ON (stavka.blok_pozicija_bloka = blok.pozicija_bloka AND stavka.blok_skup_opreme_id_skup_opreme = blok.skup_opreme_id_skup_opreme)
    GROUP BY skup_opreme.id_skup_opreme, skup_opreme.champion_champion_id
),
prosecan_broj_itema_po_skupu_opreme AS (
    SELECT broj_itema_po_skupu_opreme.champion_id champion_id, AVG(broj_itema) prosecan_broj_itema_po_skupu_opreme FROM broj_itema_po_skupu_opreme GROUP BY broj_itema_po_skupu_opreme.champion_id
)
SELECT championi_koji_imaju_vise_od_4_itema_ukupno_u_skupovima_opreme.champion_id, championi_koji_imaju_vise_od_4_itema_ukupno_u_skupovima_opreme.champion_moniker, prosecan_broj_itema_po_skupu_opreme.prosecan_broj_itema_po_skupu_opreme
FROM championi_koji_imaju_vise_od_4_itema_ukupno_u_skupovima_opreme INNER JOIN prosecan_broj_itema_po_skupu_opreme ON championi_koji_imaju_vise_od_4_itema_ukupno_u_skupovima_opreme.champion_id = prosecan_broj_itema_po_skupu_opreme.champion_id
WHERE championi_koji_imaju_vise_od_4_itema_ukupno_u_skupovima_opreme.champion_moniker LIKE 'L%';


SELECT * FROM prosecan_broj_itema_po_skupu_opreme_za_champione_cije_ime_pocinje_odredjenim_slovom;