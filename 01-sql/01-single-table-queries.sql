-- 01. Querying data
SELECT LastName FROM employees;
SELECT LastName, FirstName FROM employees;
SELECT * FROM employees;
SELECT FirstName as '이름' FROM employees;
SELECT Name, Milliseconds / 60000 AS '재생 시간(분)' FROM tracks;

-- 02. Sorting data
SELECT FirstName FROM employees ORDER BY FirstName;
SELECT FirstName FROM employees ORDER BY FirstName DESC;
SELECT Country, City FROM customers ORDER BY Country DESC, City ASC;
SELECT Name, Milliseconds / 60000 AS '재생 시간(분)' From tracks ORDER BY Milliseconds DESC;

-- NULL 정렬 예시
SELECT ReportsTo FROM employees ORDER BY ReportsTo;

-- 03. Filtering data
SELECT DISTINCT Country FROM customers ORDER BY Country;
SELECT LastName, FirstName, City From customers WHERE City = 'Prague'; 
SELECT LastName, FirstName, City From customers WHERE City != 'Prague'; 
SELECT LastName, FirstName, Company, Country From customers WHERE Company IS NULL AND Country = 'USA';
SELECT LastName, FirstName, Company, Country From customers WHERE Company IS NULL OR Country = 'USA';
SELECT Name, Bytes FROM tracks WHERE 100000 <= Bytes AND Bytes <= 500000;
SELECT Name, Bytes FROM tracks WHERE Bytes BETWEEN 100000 AND 500000;
SELECT Name, Bytes FROM tracks WHERE Bytes BETWEEN 100000 AND 500000 ORDER BY Bytes;
SELECT LastName, FirstName, Country From customers WHERE Country = 'Canada' OR Country = 'Germany' OR Country = 'France';
SELECT LastName, FirstName, Country From customers WHERE Country IN ('Canada', 'Germany', 'France');
SELECT LastName, FirstName, Country From customers WHERE Country NOT IN ('Canada', 'Germany', 'France');
SELECT LastName, FirstName From customers where LastName LIKE '%son';
SELECT LastName, FirstName From customers where FirstName LIKE '___a';
SELECT TrackId, Name, Bytes From tracks ORDER BY Bytes DESC LIMIT 3, 4;
SELECT TrackId, Name, Bytes From tracks ORDER BY Bytes DESC LIMIT 4 OFFSET 3;

-- 04. Grouping data
SELECT Country FROM customers GROUP BY Country;
SELECT Country, COUNT(*) FROM customers GROUP BY Country;
SELECT Composer, AVG(Bytes) FROM tracks GROUP BY Composer ORDER BY AVG(Bytes) DESC;
SELECT Composer, AVG(Bytes) as avgOFBytes FROM tracks GROUP BY Composer ORDER BY avgOFBytes DESC;
SELECT Composer, AVG(Milliseconds / 60000) AS avgOfMinute FROM tracks GROUP BY Composer HAVING avgOfMinute < 10;

-- 에러


-- 에러 해결
