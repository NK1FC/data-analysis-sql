/*
 Extra runs conceded per team in the year 2016
 */
select
    bowling_team as team,
    sum(extra_runs) as total_runs_concieded
from
    deliveries
    join matches on deliveries.match_id = matches.id
where
    season = '2016'
group by
    team;
/*output-
            team             | total_runs_concieded 
-----------------------------+----------------------
 Kolkata Knight Riders       |                  122
 Rising Pune Supergiants     |                  108
 Mumbai Indians              |                  102
 Delhi Daredevils            |                  106
 Kings XI Punjab             |                  100
 Royal Challengers Bangalore |                  156
 Gujarat Lions               |                   98
 Sunrisers Hyderabad         |                  107
*/    