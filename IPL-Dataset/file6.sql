/*
 Number of matches won per team per year in IPL
 */
select
    season,
    winner,
    count(winner)
from
    Matches
where
    winner is not null
group by
    season,
    winner
order by
    season;
/*output-
 season |           winner            | count 
--------+-----------------------------+-------
 2008   | Royal Challengers Bangalore |     4
 2008   | Rajasthan Royals            |    13
 2008   | Deccan Chargers             |     2
 2008   | Kolkata Knight Riders       |     6
 2008   | Mumbai Indians              |     7
 2008   | Kings XI Punjab             |    10
 2008   | Delhi Daredevils            |     7
 2008   | Chennai Super Kings         |     9
 2009   | Kings XI Punjab             |     7
 2009   | Royal Challengers Bangalore |     9
 2009   | Deccan Chargers             |     9
 2009   | Delhi Daredevils            |    10
 2009   | Chennai Super Kings         |     8
 2009   | Mumbai Indians              |     5
 2009   | Kolkata Knight Riders       |     3
 2009   | Rajasthan Royals            |     6

*/    