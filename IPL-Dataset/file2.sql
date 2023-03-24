/*
 Top 10 batsman for Royal Challengers Bangalore
 */
select
    batsman,
    sum(batsman_runs) as Runs
from
    deliveries
where
    batting_team = 'Royal Challengers Bangalore'
group by
    batsman
order by
    Runs desc
limit
    10;
/*output-
    batsman     | runs 
----------------+------
 V Kohli        | 4423
 CH Gayle       | 3175
 AB de Villiers | 2815
 JH Kallis      | 1132
 R Dravid       |  898
 TM Dilshan     |  587
 RV Uthappa     |  549
 LRPL Taylor    |  517
 SS Tiwary      |  487
 MA Agarwal     |  433
*/