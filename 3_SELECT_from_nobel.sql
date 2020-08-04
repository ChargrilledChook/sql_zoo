-- 1. Change the query shown so that it displays Nobel prizes for 1950.
SELECT
  yr, subject, winner
FROM
  nobel
WHERE
  yr = 1950

  -- 2. Show who won the 1962 prize for Literature.
SELECT
  winner
FROM
  nobel
WHERE
 yr = 1962 AND subject = 'Literature';

 -- 3. Show the year and subject that won 'Albert Einstein' his prize.
SELECT
  yr, subject
FROM
  nobel
WHERE
  winner = 'Albert Einstein';

-- 4. Give the name of the 'Peace' winners since the year 2000, including 2000.
SELECT
  winner
FROM
  nobel
WHERE
  subject = 'peace' AND yr > 1999;

-- 5. Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.
SELECT
  yr, subject, winner
FROM
  nobel
WHERE
yr BETWEEN 1980 AND 1989 AND subject = 'literature';

-- 6. Show all details of the presidential winners:

-- 7. Show the winners with first name John

-- 8. Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.

-- 9. Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine

-- 10. Show year, subject, and name of people who won a 'Medicine' prize in an early year

-- 11. Find all details of the prize won by PETER GRÜNBERG

-- 12. Find all details of the prize won by EUGENE O'NEILL

-- 13. List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.

-- 14. Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.
