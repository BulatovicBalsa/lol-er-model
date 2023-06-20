create or replace view champion_lookup as 
select champion_moniker, ukupno_skinova, ukupno_chroma, nvl(prosek_dugackih_emota, 0) as prosek_dugackih
from champion natural join (select champion_id, count(*) ukupno_skinova from skin group by champion_id)
left outer join (select champion_id as ccid, count(*) as ukupno_chroma from chroma group by champion_id) on champion_id = ccid
left outer join (select champion_owner, round(avg(emote_duration), 2) as prosek_dugackih_emota 
from emote where emote_duration > 4 group by champion_owner)
on champion_id = champion_owner
order by champion_moniker;

select * from champion_lookup;