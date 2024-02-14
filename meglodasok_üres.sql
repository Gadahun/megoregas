-- 1. feladat:
CREATE DATABASE napsutes
CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

-- 3. feladat:
UPDATE regiok
SET regioNev = '�szak-�rorsz�g'
WHERE regioNev = '�szak �rorsz�g'

-- 4. feladat:
SELECT
  COUNT(meresek.id) AS rekordszam,
  AVG(meresek.perc) AS expr1
FROM meresek

-- 5. feladat:
SELECT
  meresek.ev,
  SUM(meresek.perc / 60) AS orak
FROM meresek
  INNER JOIN regiok
    ON meresek.regioId = regiok.id
WHERE regiok.regioNev LIKE 'Anglia'
AND meresek.ev BETWEEN 1990 AND 2000
GROUP BY meresek.ev
ORDER BY meresek.ev DESC

-- 6. feladat:
SELECT
  meresek.ev,
  regiok.regioNev AS terulet,
  MIN(meresek.perc) AS expr1
FROM meresek
  INNER JOIN regiok
    ON meresek.regioId = regiok.id
WHERE meresek.ho = 2
AND meresek.perc >= 6000
GROUP BY meresek.ev,
         regiok.regioNev
ORDER BY expr1 DESC