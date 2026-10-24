# Weather Observation Station 8

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

Query the list of *CITY* names from **STATION** which have vowels (i.e., *a*, *e*, *i*, *o*, and *u*) as both their first *and* last characters. Your result cannot contain duplicates.


**Input Format**

The **STATION** table is described as follows:

<img src="https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg" title="Station.jpg" />

where *LAT\_N* is the northern latitude and *LONG\_W* is the western longitude.

**Constraints**

 

**Output Format**

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-10-24T18:40:43.417Z  

```sql
/*
Enter your query here.
*/
SELECT DISTINCT CITY
FROM STATION
WHERE UPPER(LEFT(CITY,1)) IN ('A','E','I','O','U')
    AND UPPER(RIGHT(CITY,1)) IN ('A','E','I','O','U');

```

---

[View on HackerRank](https://www.hackerrank.com/challenges/weather-observation-station-8/problem)