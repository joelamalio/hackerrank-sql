SELECT CEIL(AVG(SALARY) - AVG(TO_NUMBER(REPLACE(SALARY, 0, '')))) FROM EMPLOYEES;