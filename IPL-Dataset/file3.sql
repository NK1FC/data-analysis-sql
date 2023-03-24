/*
 Foreign umpire analysis
 */
select
    country,
    count(country) as number_of_umpires
from
    umpires
where
    country not in (' India')
group by
    country;

/*output-
    country    | number_of_umpires 
---------------+-------------------
  West Indies  |                 1
  England      |                 3
  South Africa |                 5
  Australia    |                 7
  New Zealand  |                 4
  Zimbabwe     |                 1
  Pakistan     |                 2
  Sri Lanka    |                 2

*/    