1. SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950
 
2.SELECT winner
FROM nobel
WHERE yr = 1962
AND subject = 'Literature'
   
3.SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'

4.SELECT winner
FROM nobel
WHERE yr >= 2000
AND subject = 'Peace'

5.SELECT yr, subject, winner
FROM nobel
WHERE 1980 <= yr 
AND yr <= 1989
AND subject = 'Literature'

/*can't use a <= yr <= b */

6. SELECT * FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama')

7. SELECT winner
FROM nobel
WHERE winner LIKE 'John%'

/*must use single quotes around like entry*/

8. SELECT * 
FROM nobel
WHERE subject = 'Physics' AND yr = 1980
OR subject = 'Chemistry' AND yr = 1984

9. SELECT *
FROM nobel
WHERE yr = 1980
AND NOT subject IN ('Chemistry', 'Medicine')

10. SELECT *
FROM nobel
WHERE yr < 1910 AND subject = 'Medicine'
OR yr >= 2004 AND subject = 'Literature'

11. SELECT *
FROM nobel
WHERE winner = 'Peter Grünberg'

/*alt-0252 is keycode, so long as you input it no need for special searches or CAST usage*/

12. SELECT * 
FROM nobel
WHERE winner = 'Eugene O\'Neill'

/* standard backslash to escape*/

13. SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir %'
ORDER BY yr DESC, winner ASC

14. SELECT winner, subject
FROM nobel
WHERE yr=1984
ORDER BY 
 CASE WHEN subject IN ('Chemistry', 'Physics') THEN 1
 ELSE 0 END, subject, winner;

