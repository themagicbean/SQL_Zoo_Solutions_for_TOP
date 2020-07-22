1. SELECT name, continent, population FROM world

2. SELECT name FROM world WHERE population >=  200000000

3. SELECT name, gdp/population FROM world WHERE population >= 200000000
/*Note some solutions use "AS: but it is not required to pass SQL Zoo*/

4. SELECT name, population/1000000 FROM world WHERE continent = 'South America';
/*same*/

5. SELECT name, population FROM world WHERE name IN ('France', 'Germany', 'Italy');

6. SELECT name FROM world WHERE name LIKE '%United%';
/*Note MSAccess uses *s */

7. SELECT name,population, area FROM world WHERE population > 250000000 OR area > 3000000;

8. SELECT name, population, area
FROM world
WHERE (population > 250000000 OR area > 3000000)
AND NOT (population > 250000000 AND area > 3000000);

/*This works for either MS SQL or MySQL.  With MySQL only XOR will also work.*/

9. SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2) FROM world WHERE continent = 'South America'

10. SELECT name, ROUND(gdp/population, -3) AS "per-capita GDP" FROM world WHERE gdp >= 1000000000;

11. SELECT name, capital
FROM world
WHERE LENGTH(name) = LENGTH(capital)

12. SELECT name, capital
FROM world
WHERE LEFT(name,1)= LEFT(capital,1)
AND name <> capital

13.SELECT name
FROM world
WHERE name LIKE '%a%' AND 
name LIKE '%e%' AND
name LIKE '%i%' AND
name LIKE '%o%' AND
name LIKE '%u%'
AND name NOT LIKE '% %'
