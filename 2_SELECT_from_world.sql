-- 1. Intro
SELECT
  name, continent, population
FROM
  world;

-- 2. Large Countries
SELECT
 name
FROM
  world
WHERE
  population >= 200000000;

  -- 3. Per capita GDP
SELECT
  name, (GDP / population) AS per_capita_gdp
FROM
  world
WHERE
  population >= 200000000;

-- 4. South America in Millions
SELECT
  name, (population / 1000000) AS pop_in_millions
FROM
  world
WHERE
  continent = 'South America';

-- 5. France, Germany, Italy
SELECT
  name, population
FROM
  world
WHERE
  name IN ('France', 'Germany', 'Italy');

  -- 6. United
  SELECT
    name
  FROM
    world
  WHERE
    name LIKE '%United%';

-- 7. Two ways to be big
SELECT
  name, population, area
FROM
  world
WHERE
  area > 3000000 OR population > 250000000;

-- 8. One or the other
SELECT
  name, population, area
FROM
  world
WHERE
  area > 3000000 XOR population > 250000000;

-- 9. Rounding
SELECT
  name, ROUND(population / 1000000, 2), ROUND(GDP / 1000000000, 2)
FROM
  world
WHERE
  continent = 'South America';

  -- 10. Trillion dollar economies
SELECT
  name, ROUND(GDP / population, -3) -- -3 rounds to the nearest 1000
FROM
  world
WHERE
  GDP >= 1000000000000;

-- 11. Name and capital have the same length
SELECT
 name,  capital
FROM
  world
WHERE
  LENGTH(name) = LENGTH(capital);

-- 12. Matching name and capital
SELECT
  name, capital
FROM
  world
WHERE
  LEFT(name, 1) = LEFT(capital, 1) AND name <> capital;

-- 13. All the vowels
SELECT name
   FROM world
WHERE
  name NOT LIKE '% %'
  AND name LIKE '%a%'
  AND name LIKE '%e%'
  AND name LIKE '%i%'
  AND name LIKE '%o%'
  AND name LIKE '%U%';
