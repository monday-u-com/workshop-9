-- 1 
select count(*) from player where country = 'Serbia'

-- 2
select country, count(*) as players_count 
from player 
group by country 
order by players_count DESC 
limit 1

-- 3
select player_name
from player p, goalscore g, assist a
where g.match_id = 31 and a.assist_id = g.assist_id and a.player_id = p.player_id

-- 4
select player_name
from goalscore g
join assist a on a.assist_id = g.assist_id
join player p on a.player_id = p.player_id
where g.match_id = 31

-- 5
select player_name
from player p
left join goalscore pm on p.player_id = pm.player_id
where pm.goal_id is NULL and p.position = 'Attacker'

-- 6 + 8
explain 
select player_name
from player p
left join goalscore pm on p.player_id = pm.player_id
where pm.goal_id is NULL and p.position = 'Attacker'

-- 7
ALTER TABLE player ADD INDEX (position);

-- 9
BEGIN TRANSACTION;

.... find the youngest manager and update his club in managerclub

COMMIT;