/*
 Number of matches played per year for all the years in IPL.
 */
select
    season,
    count(season) as no_of_matches
from
    matches
group by
    season
order by
    season;
/*output-
 season | no_of_matches 
--------+---------------
 2008   |            58
 2009   |            57
 2010   |            60
 2011   |            73
 2012   |            74
 2013   |            76
 2014   |            60
 2015   |            59
 2016   |            60
 2017   |            59

*/    