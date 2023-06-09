/* 
 Total runs scored by team
 */
select
    batting_team as team,
    sum(total_runs) as Total_run
from
    deliveries
group by
    batting_team
order by
    batting_team;


/*Output-
            team             | total_run 
-----------------------------+-----------
 Chennai Super Kings         |     20899
 Deccan Chargers             |     11463
 Delhi Daredevils            |     21953
 Gujarat Lions               |      4862
 Kings XI Punjab             |     23068
 Kochi Tuskers Kerala        |      1901
 Kolkata Knight Riders       |     21965
 Mumbai Indians              |     24521
 Pune Warriors               |      6358
 Rajasthan Royals            |     17703
 Rising Pune Supergiant      |      2470
 Rising Pune Supergiants     |      2063
 Royal Challengers Bangalore |     23436
 Sunrisers Hyderabad         |     11652
*/    