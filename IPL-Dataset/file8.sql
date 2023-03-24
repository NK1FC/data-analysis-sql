/*
 Top 10 economical bowlers in the year 2015
 */
select
    bowler,
    (
        round(((round((sum(total_runs) - sum(penalty_runs) - sum(bye_runs) - sum(legbye_runs)),2)/
        round((count(bowler)-sum(case when noball_runs>0 or wide_runs>0 then 1 else 0 end)),2))*6.00),2)
    ) as economy
from
    deliveries
    join matches on deliveries.match_id = matches.id
where
    season = '2015'
group by
    bowler
order by economy
limit 10;
/*output-
      bowler      | economy 
------------------+---------
 RN ten Doeschate |    4.00
 J Yadav          |    4.14
 V Kohli          |    5.45
 R Ashwin         |    5.85
 S Nadeem         |    6.14
 Parvez Rasool    |    6.20
 MC Henriques     |    6.32
 Z Khan           |    6.46
 MA Starc         |    6.77
 GB Hogg          |    6.86
*/