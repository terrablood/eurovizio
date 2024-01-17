1.

-

2.

select ev, eredeti, orszag
from d 
order by ev
;

3.

select sorszam
from d 
where helyezes = 1
group by sorszam
order by count(sorszam) desc
having Count(helyezes) >= 5
;

4.



select t1.ev
from d as t1,d as t2,d as t3 
where orszag ="Belgium" or orszag ="Hollandia" or orszag ="Luxemburg" 
and t1.orszag <> t2.orszag and t1.orszag <> t3.orszag and t3.orszag <> t2.orszag 
and t1.ev = t2.ev and t1.ev = t3.ev and t3.ev = t2.ev
group by ev
;

5.

select d.orszag, d.ev
from d as d, v as v
where d.helyezes = 1 and v.ev = d.ev+1 and d.orszag <> v.orszag
;

6.

select d.orszag
from d as d, n as n
Where d.orszag = n.orszag and d.nyelv <> n.nyelv
;

7.
  
select top 1 t1.ev
from d as t1, d as t2, d as t3
order by t1.ev
where month(05) and t1.ev+1 = t2.ev and t2.ev+1 = t3.ev
;

8.

select ev, helyezes, orszag, eredeti
from d 
where helyezes <4 and helyezes >0
group by ev
order by ev
