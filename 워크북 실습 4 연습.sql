select * from `sales` group by `uid`;
select * from `sales` group by `year`;
select * from `sales` group by `uid`, `year`;
select `uid`, count(*) as `건수` from `sales` group by `uid`;
select `uid`, sum(sale) as `합계` from `sales` group by `uid`;
select `uid`, avg(sale) as `평균` from `sales` group by `uid`;

select `uid`, `year`, sum(sale) as `합계`
from `sales`
group by `uid`, `year`;

select `uid`, `year`, sum(sale) as `합계`
from `sales`
group by `uid`, `year`
order by `year`, `합계` desc;

select `uid`, `year`, sum(sale) as `합계`
from `sales`
where `sale` >= 50000
group by `uid`, `year`
order by `합계` desc;


