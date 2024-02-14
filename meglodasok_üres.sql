-- 1. feladat:
CREATE DATABASE napsutes
CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

-- 3. feladat:
UPDATE regiok
SET regioNev = 'Észak-Írország'
WHERE regioNev = 'Észak Írország'

-- 4. feladat:
SELECT
  COUNT(meresek.id) AS rekordszam,
  AVG(meresek.perc) AS expr1
FROM meresek

-- 5. feladat:


-- 6. feladat:
