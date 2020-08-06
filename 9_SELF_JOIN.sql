-- 1. How many stops are in the database.
SELECT COUNT(*)
FROM stops;

-- 2. Find the id value for the stop 'Craiglockhart'
SELECT DISTINCT id
FROM stops JOIN route ON id=stop
WHERE name='Craiglockhart'

-- 3. Give the id and the name for the stops on the '4' 'LRT' service.
SELECT id, name
FROM stops JOIN route ON id = stop
WHERE num=4 AND company = 'LRT'
ORDER BY pos;

-- 4. ...Add a HAVING clause to restrict the output to these two routes.


-- 5.
-- 6.
-- 7.
-- 8.
-- 9.
-- 10.
