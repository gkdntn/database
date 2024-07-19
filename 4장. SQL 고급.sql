#날짜 : 2024/07/03
#이름 : 하정훈
#내용 : 4장 SQL 고급

#실습 4-1
create table `member` (
`uid` varchar(10) primary key,
`name` varchar(10) not null,
`hp` char(13) unique not null,
`pos`  varchar(10) default '사원',
`dep` tinyint,
`rdate` datetime not null
);
create table `department` (
`depNo` tinyint primary key,
`name` varchar(10) not null,
`tel` char(12) not null
);
create table `sales` (
`seq` int auto_increment primary key,
`uid` varchar(10) not null,
`year` year not null,
`month` tinyint not null,
`sale` int
);
#실습 4-2
insert into `member` values('a101', '박혁거세', '010-1234-1001', '부장', '101', '2020-11-19 11:39:48');
insert into `member` values('a102', '김유신', '010-1234-1002', '차장', '101', '2020-11-19 11:39:48');
insert into `member` values('a103', '김춘추', '010-1234-1003', '사원', '101', '2020-11-19 11:39:48');
insert into `member` values('a104', '장보고', '010-1234-1004', '대리', '102', '2020-11-19 11:39:48');
insert into `member` values('a105', '강감찬', '010-1234-1005', '과장', '102', '2020-11-19 11:39:48');
insert into `member` values('a106', '이성계', '010-1234-1006', '차장', '103', '2020-11-19 11:39:48');
insert into `member` values('a107', '정철', '010-1234-1007', '차장', '103', '2020-11-19 11:39:48');
insert into `member` values('a108', '이순신', '010-1234-1008', '부장', '104', '2020-11-19 11:39:48');
insert into `member` values('a109', '허균', '010-1234-1009', '부장', '104', '2020-11-19 11:39:48');
insert into `member` values('a110', '정약용', '010-1234-1010', '사원', '105', '2020-11-19 11:39:48');
insert into `member` values('a111', '박지원', '010-1234-1011', '사원', '105', '2020-11-19 11:39:48');
# 현재 시간 입력은 now()를 적으면 현재 시간이 정확하게 적힘

insert into `department` values ('101', '영업1부', '051-512-1001');
insert into `department` values ('102', '영업2부', '051-512-1002');
insert into `department` values ('103', '영업3부', '051-512-1003');
insert into `department` values ('104', '영업4부', '051-512-1004');
insert into `department` values ('105', '영업5부', '051-512-1005');
insert into `department` values ('106', '영업지원부', '051-512-1006');
insert into `department` values ('107', '인사부', '051-512-1007');

insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a101', '2018', '1', '98100');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a102', '2018', '1', '136000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a103', '2018', '1', '80100');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a104', '2018', '1', '78000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a105', '2018', '1', '93000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a101', '2018', '2', '23500');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a102', '2018', '2', '126000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a103', '2018', '2', '18500');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a105', '2018', '2', '19000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a106', '2018', '2', '53000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a101', '2019', '1', '24000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a102', '2019', '1', '109000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a103', '2019', '1', '101000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a104', '2019', '1', '53500');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a107', '2019', '1', '24000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a102', '2019', '2', '160000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a103', '2019', '2', '101000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a104', '2019', '2', '43000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a105', '2019', '2', '24000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a106', '2019', '2', '109000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a102', '2020', '1', '201000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a104', '2020', '1', '63000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a105', '2020', '1', '74000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a106', '2020', '1', '122000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a107', '2020', '1', '111000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a102', '2020', '2', '120000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a103', '2020', '2', '93000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a104', '2020', '2', '84000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a105', '2020', '2', '180000');
insert into `sales` (`uid`, `year`, `month`, `sale`) values ('a106', '2020', '2', '76000');

#실습 4-3
select * from `Member` where `name`='김유신';
select * from `Member` where `name` <> '김춘추';
select * from `Member` where `pos` IN ('사원', '대리');
select * from `Member` where `name` LIKE '%신';
select * from `Member` where `name` LIKE '김__';
select * from `Member` where `name` LIKE '정__';

#실습 4-4
select * from `Sales`;
select * from `Sales` ORDER BY `sale`;
select * from `Sales` ORDER BY `sale` ASC;
select * from `Sales` ORDER BY `sale` DESC;
select * from `Sales` 
WHERE `sale` > 50000
ORDER BY `year`, `month`, `sale` DESC;
#실습 4-5
select * from `Sales` LIMIT 3;
select * from `Sales` LIMIT 5, 3;
#실습 4-6
select SUM(`sale`) AS `합계` FROM `Sales`;
select COUNT(*) as `갯수` from `Sales`;
select CONCAT('Hello', 'World') as `결과`;
select CONCAT(`uid`, `name`, `hp`) FROM `member` WHERE `uid`='a108';
SELECT NOW();
INSERT INTO `Member` 
VALUES ('a112', '유관순', '010-1234-1012', '대리', 107, NOW());
#실습 4-7
select SUM(`sale`) as `2018년 1월 매출 총합`
from `Sales` where `year`=2018 and `month`=1;
#실습 4-8
select 
SUM(`sale`) as `총합`,
AVG(`sale`) as `평균`
from `Sales` 
where 
`year`= 2019 and 
`month`=2 and
`sale` >= 50000;
#실습 4-9
select 
MIN(`sale`) as `최저매출`,
MAX(`sale`) as `최고매출`
from `Sales` 
WHERE `year`=2020;
#실습 4-10
SET SESSION sql_mode = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
select * from `sales` group by `uid`;
select * from `sales` group by `uid`, `year`;
select `uid`, sum(`sale`) as `합계` from `sales` group by `uid`;

#실습 4-11
select `uid`, sum(`sale`) as `합계` 
from `sales` group by `uid`
Having `합계` >= 200000;

#실습 4-12
create table `sales2` like `sales`; # 테이블 복사
insert into `sales2` select * from `sales`; # 데이터 복사

set sql_safe_updates=0; # 조건 없이 update 모드 해제
update `sales2` set `year` = `year` + 3;

select * from `sales` where `sale` >= 100000
union 
select * from `sales2` where `sale` >= 100000;
# 테이블을 같은 칼럼으로 합쳤다.

select * from `sales` union select * from `sales2`;
select `uid`, `year`, `sale` from `sales`
union
select `uid`, `year`, `sale` from `sales2`;

select `uid`, `year`, sum(sale) as `합계`
from `sales`
group by `uid`, `year`
union
select `uid`, `year`, sum(sale) as `합계`
from `sales2`
group by `uid`, `year`
order by `year`, `합계` desc;

#실습 4-13
select * from `sales`
inner join `member` on `sales`.`uid` = `member`.`uid`;

select * from `sales` as a
join `member` as b 
on a.uid = b.uid; 

select * from `member`
inner join `department` on `member`.`dep` = `department`.`depNo`;

select 
a.`seq`,
a.`uid`, 
a.`sale`, 
b.`name`, 
b.`pos` 
from `sales` as a
join `member` as b
using (`uid`);

select 
a.`seq`, a.`uid`, b.`name`, b.`pos` 
from `sales` as a 
join `member` as b using(`uid`);

select a.`seq`, a.`uid`, a.`sale`, b.`name`, b.`pos` 
from `sales` as a
join `member` as b using(`uid`) 
where `sale` >= 100000;

select a.`seq`, a.`uid`, b.`name`, b.`pos`, a.`year`, sum(`sale`) as `합계`
from `sales` as a 
join `member` as b using(`uid`)
group by a.`uid`, a.`year` having `합계` >= 100000
order by a.`year`, `합계` desc;

select * from `sales` as a
join `member` as b using(`uid`)
join `department` as c on b.dep = c.depNo;

select a.`seq`, a.`uid`, a.`sale`, b.`name`, b.`pos`, c.`name`
from `sales` as a
join `member` as b using(`uid`)
join `department` as c on b.dep = c.depno;

select a.`seq`, a.`uid`, a.`sale`, b.`name`, b.`pos`, c.`name`
from `sales` as a
join `member` as b using (`uid`)
join `department` as c on b.dep = c.depNo
where `sale` > 100000
order by `sale` desc;

#실습 4-14 외부 조인
select * from `sales` as a
join `member` as b
on a.`uid` = b.`uid`; # --> inner join 내부 조인이다

select * from `sales` as a
left join `member` as b
on a.`uid` = b.`uid`;

select * from `sales` as a
right join `member` as b
on a.`uid` = b.`uid`;  # --> 기준 테이블에 문제되지 않는다면 조인한 테이블에 데이터가 없어도 표시된다.

select a.`seq`, a.`uid`, `sale`, `name`, `pos`
from `sales` as a
left join `member` as b using(`uid`);

select a.`seq`, a.`uid`, `sale`, `name`, `pos`
from `sales` as a
right join `member` as b using (`uid`);

#실습 4-15
select `uid`, b.`name`, `pos`, c.`name`
 from `member` as b
join `department` as c
on b.`dep` = c.`depno` ;

#실습 4-16
select b.`name`, a.`year`,
sum(sale) as `합계` 
from `sales` as a
join `member` as b
using (`uid`)
where b.`name`='김유신' and a.`year`='2019';


#실습 4-17
select b.`name`, c.`name`, b.`pos`, a.`year`,
sum(sale) as `매출 합`
from `sales` as a
join `member` as b
using (`uid`)
join `department` as c
on b.`dep` = c.`depno`
where `year`='2019' and `sale` >= '50000'
group by a.`uid`
having `매출 합` >= 100000
order by `매출 합` desc;