# 날짜 : 2024/07/11
# 이름 : 하정훈
# 내용 : SQL 연습문제 4

# 실습 4-1
create database `theater`;
create user 'theater'@'%' identified by '1234';
grant all privileges on `theater`.* to 'theater'@'%';
flush privileges;
use theater;

# 실습 4-2
create table `movies` (
`movie_id` int primary key auto_increment,
`title` varchar(30) not null,
`genre` varchar(10) not null,
`release_date` date not null
);

create table `customers` (
`customer_id` int primary key auto_increment,
`name` varchar(20) not null,
`email` varchar(50) not null,
`phone` char(13) not null
);

create table `bookings` (
`booking_id` int primary key,
`customer_id` int not null,
`movie_id` int not null,
`num_tickets` int not null,
`booking_date` datetime not null
);

# 실습 4-3
insert into `movies` ( `title`, `genre`, `release_date`) values ('쇼생크의 탈출', '드라마', '1994-10-14');
insert into `movies` ( `title`, `genre`, `release_date`) values ('타이타닉', '로맨스', '1997-03-24');
insert into `movies` ( `title`, `genre`, `release_date`) values ('탑건', '액션', '1987-07-16');
insert into `movies` ( `title`, `genre`, `release_date`) values ('쥬라기공원', '액션', '1994-02-11');
insert into `movies` ( `title`, `genre`, `release_date`) values ('글래디에이터', '액션', '2000-05-03');
insert into `movies` ( `title`, `genre`, `release_date`) values ('시네마천구', '드라마', '1995-04-12');
insert into `movies` ( `title`, `genre`, `release_date`) values ('미션임파서블', '액션', '1995-11-11');
insert into `movies` ( `title`, `genre`, `release_date`) values ('노트북', '로맨스', '2003-08-23');
insert into `movies` ( `title`, `genre`, `release_date`) values ('인터스텔라', 'SF', '2011-05-26');
insert into `movies` ( `title`, `genre`, `release_date`) values ('아바타', 'SF', '2010-02-10');
update `movies` set `title` = '시네마천국' where `release_date` = '1995-04-12';

insert into `customers` (`name`, `email`, `phone`) values ('김유신', 'kys@example.com', '010-1234-1001');
insert into `customers` (`name`, `email`, `phone`) values ('김춘추', 'kcc@example.com', '010-1234-1002');
insert into `customers` (`name`, `email`, `phone`) values ('장보고', 'jbg@example.com', '010-1234-1003');
insert into `customers` (`name`, `email`, `phone`) values ('강감찬', 'kgc@example.com', '010-1234-1004');
insert into `customers` (`name`, `email`, `phone`) values ('이순신', 'lss@example.com', '010-1234-1005');

insert into `bookings` values ('101', '1','1', '2', '2023-01-10 00:00:00');
insert into `bookings` values ('102', '2','2', '3', '2023-01-11 00:00:00');
insert into `bookings` values ('103', '3','2', '2', '2023-01-13 00:00:00');
insert into `bookings` values ('104', '4','3', '1', '2023-01-17 00:00:00');
insert into `bookings` values ('105', '5','5', '2', '2023-01-21 00:00:00');
insert into `bookings` values ('106', '3','8', '2', '2023-01-21 00:00:00');
insert into `bookings` values ('107', '1','10', '4', '2023-01-21 00:00:00');
insert into `bookings` values ('108', '2','9', '1', '2023-01-22 00:00:00');
insert into `bookings` values ('109', '5','7', '2', '2023-01-23 00:00:00');
insert into `bookings` values ('110', '3','4', '2', '2023-01-23 00:00:00');
insert into `bookings` values ('111', '1','6', '1', '2023-01-24 00:00:00');
insert into `bookings` values ('112', '3','5', '3', '2023-01-25 00:00:00');

# 실습 4-4
select `title` from `movies`;

# 실습 4-5
select * from `movies` where `genre` = '로맨스';

# 실습 4-6
select `title`, `release_date` from `movies` where `release_date` > '2010-01-01';

# 실습 4-7
select `booking_id`, `booking_date` from `bookings` where `num_tickets` >= '3';

# 실습 4-8
select * from `bookings` where `booking_date` < '2023-01-20';

# 실습 4-9
select * from `movies` where `release_date` between '1990-01-01' and '1999-12-31';

# 실습 4-10
select * from `bookings`
order by `booking_date` desc
limit 3;

# 실습 4-11
select `title`, `release_date` from `movies`
order by `release_date` 
limit 1;

# 실습 4-12
select
concat(`title`, ' - ', `release_date`) as `movie_info`
from `movies`
where `genre` = '액션' AND `title` like '%공원%'
order by `release_date`
limit 1;

# 실습 4-13
select `booking_date`, `title` from `bookings`
join `movies`
using (`movie_id`)
where `customer_id` = '2';

# 실습 4-14
select
c.`name`,
c.`phone`,
b.`booking_date`,
m.`title`
from `bookings` as b
join `customers` as c using (`customer_id`)
join `movies` as m using (`movie_id`);

# 실습 4-15
select
m.`genre`,
avg(b.`num_tickets`) as `avg_tickets`
from `bookings` as b
join `movies` as m using (`movie_id`)
group by `genre`;

# 실습 4-16
select 
c.`name`,
avg(b.`num_tickets`) as `avg_tickets`
from `bookings` as b
join `customers` as c using (`customer_id`)
group by `name`;

# 실습 4-17
select
c.`name`,
sum(b.`num_tickets`) as `전체 예매 티켓 수`
from `bookings` as b
join `customers` as c using (`customer_id`)
group by `name`
order by `전체 예매 티켓 수` desc;

# 실습 4-18
select
b.`booking_id`,
b.`movie_id`,
c.`name`,
b.`booking_date`
from `Bookings` as B
JOIN `Customers` as C using (`customer_id`)
ORDER BY B.`booking_date`
LIMIT 1;

# 실습 4-19
select
`genre`, `title`, `release_date` from `movies`
where (`genre`, `release_date`) in (select `genre`, max(`release_date`)
from `movies`
group by `genre`
);

# 실습 4-20
select * from `movies`
where `movie_id` in 
(select `movie_id` from `bookings` where `customer_id` = 
(select `customer_id` from `customers` where `name` = '김유신')
);

# 실습 4-21
select `name`, `email` from `customers`
where `customer_id` = 
(select `customer_id` from `bookings` group by `customer_id` 
order by sum(num_tickets) desc
limit 1 );

# 실습 4-22
select * from `bookings` 
where `num_tickets` > (select avg(`num_tickets`) from `bookings`);

# 실습 4-23
select
m.`title`, sum(b.`num_tickets`) as `total_tickets`
from `bookings` as b
join `movies` as m using (`movie_id`)
group by `title`;

# 실습 4-24
select
c.`name`, sum(b.`num_tickets`) as `total_tickets`,
avg(b.`num_tickets`) as `avg_tickets`
from `bookings` as b
join `customers` as c using (`customer_id`)
group by `name`;

# 실습 4-25
SET SESSION sql_mode = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
select
c.`customer_id`,
c.`name`,
c.`email`,
sum(b.`num_tickets`) as `예매 티켓수`
from `bookings` as b
join `customers` as c using (`customer_id`)
group by `customer_id`
order by `예매 티켓수` desc;

# 실습 4-26
select
c.`name`,
m.`title`,
b.`num_tickets`,
b.`booking_date`
from `bookings` as b
join `customers` as c using (`customer_id`)
join `movies` as m using (`movie_id`)
order by `num_tickets` desc;

# 실습 4-27
select
m.`title`,
m.`genre`,
sum(b.`num_tickets`) as `예매 티켓 수`,
avg(b.`num_tickets`) as `평균 티켓 수`
from `bookings` as b
join `movies` as m using (`movie_id`)
where m.`genre` = '액션'
group by `title`
order by `평균 티켓 수` desc
limit 1;

# 실습 4-28
select
b.`customer_id`,
c.`name`,
sum(`num_tickets`) as `ticket_total`
from `bookings` as b
join `customers` as c using (`customer_id`)
group by `customer_id`
order by `ticket_total` desc;

# 실습 4-29
select
b.`booking_id`,
b.`customer_id`,
b.`movie_id`,
maxTickets.`max_tickets`
from `bookings` b
join (select `movie_id`, max(num_tickets) as `max_tickets`
from `bookings`
group by `movie_id`
) as maxtickets
on b.`movie_id` = maxTickets.`movie_id` and b.`num_tickets` = maxTickets.`max_tickets`;

# 실습 4-30
select
b.`booking_id`,
b.`customer_id`,
c.`name`,
m.`title`,
m.`genre`,
sum(b.`num_tickets`) as `예매 티켓 수`
from `bookings` as b
join `customers` as c using (`customer_id`)
join `movies` as m using (`movie_id`)
group by m.`title`
having `예매 티켓 수` = (
select max(total_tickets)
from (
		select sum(b2.`num_tickets`) as `total_tickets`
        from `bookings` as b2
        join `movies` as m2 using (`movie_id`)
        where m2.`genre`= m.`genre`
        group by m2.`title`
        ) as selectmax
        )
        order by `예매 티켓 수` desc;
        