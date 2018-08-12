SELECT 
CASE 
    WHEN a = b AND a = c THEN 'Equilateral'
    WHEN a + b <= c THEN 'Not A Triangle'
    WHEN (a = b AND a != c) OR (a = c AND a != b) OR (b = c AND b != a) THEN 'Isosceles' 
    WHEN a != b AND a != c AND b != c THEN 'Scalene'
END
FROM TRIANGLES;