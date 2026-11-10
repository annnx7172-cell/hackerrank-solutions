# Average Population of Each Continent

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

Given the **CITY** and **COUNTRY** tables, query the names of all the continents (*COUNTRY.Continent*) and their respective average city populations (*CITY.Population*) rounded *down* to the nearest integer.

**Note:** *CITY.CountryCode* and *COUNTRY.Code* are matching key columns.



**Input Format**

The **CITY** and **COUNTRY** tables are described as follows:
<img src="https://s3.amazonaws.com/hr-challenge-images/8137/1449729804-f21d187d0f-CITY.jpg" title="CITY.jpg" />

<img src="https://s3.amazonaws.com/hr-challenge-images/8342/1449769013-e54ce90480-Country.jpg" title="Country.jpg" />

**Constraints**

 

**Output Format**

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-11-10T17:45:37.159Z  

```sql
SELECT CR.CONTINENT, FLOOR(AVG(C.POPULATION))
FROM CITY AS C
INNER JOIN COUNTRY AS CR
ON C.COUNTRYCODE = CR.CODE
GROUP BY CR.CONTINENT;

```

---

[View on HackerRank](https://www.hackerrank.com/challenges/average-population-of-each-continent/problem)