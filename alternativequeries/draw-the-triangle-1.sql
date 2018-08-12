select line from (
select rpad('*', rownum * 2, ' *') as line from dual connect by rownum <= 20)
order by 1 desc; 