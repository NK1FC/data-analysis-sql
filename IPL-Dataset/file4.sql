/*
 Matches played by team by season
 */
select
    m.season,
    m.team,
    sum(m.Total) as Total
from
    (
        select
            season,
            team1 as team,
            count(team1) as Total
        from
            Matches
        group by
            season,
            team
        union
        all
        select
            season,
            team2 as team,
            count(team2) as Total
        from
            Matches
        group by
            season,
            team
    ) as m
group by
    m.season,
    m.team
order by
    m.season,
    m.team;
/*output-
season |            team             | total 
--------+-----------------------------+-------
 2008   | Chennai Super Kings         |    16
 2008   | Deccan Chargers             |    14
 2008   | Delhi Daredevils            |    14
 2008   | Kings XI Punjab             |    15
 2008   | Kolkata Knight Riders       |    13
 2008   | Mumbai Indians              |    14
 2008   | Rajasthan Royals            |    16
 2008   | Royal Challengers Bangalore |    14
 2009   | Chennai Super Kings         |    14
 2009   | Deccan Chargers             |    16
 2009   | Delhi Daredevils            |    15
 2009   | Kings XI Punjab             |    14
 2009   | Kolkata Knight Riders       |    13
 2009   | Mumbai Indians              |    13
 2009   | Rajasthan Royals            |    13
 2009   | Royal Challengers Bangalore |    16
 2010   | Chennai Super Kings         |    16
 2010   | Deccan Chargers             |    16
 2010   | Delhi Daredevils            |    14
 2010   | Kings XI Punjab             |    14
 2010   | Kolkata Knight Riders       |    14

*/    