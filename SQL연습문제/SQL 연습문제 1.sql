# 날짜 : 2024/07/08
# 이름 : 하정훈
# 내용 : SQL 연습문제 1 실습하기

# 실습 1-1 실습 데이터베이스와 사용자 생성하기
create database `shop`;
create user 'shop'@'%' identified by '1234';
grant all privileges on `shop`.* to 'shop'@'%';
flush privileges;
# 실습 1-2 테이블 생성 및 데이터 입력하기

use shop;

create table `customer` (
`custid` varchar(10) primary key,
`name` varchar(10) not null,
`hp` char(13) unique,
`addr` varchar(100),
`rdate` date
);

create table `product` (
`prodno` int primary key,
`prodname` varchar(10) not null,
`stock` int default 0,
`price` int,
`company` varchar(20) not null
);

create table `order` (
`orderno` int auto_increment primary key,
`orderid` varchar(10) not null,
`orderproduct` int not null,
`ordercount` int not null default 1,
`orderdate` datetime not null
);

# 실습 1-3
insert into `customer` values ('c101', '김유신', '010-1234-1001', '김해시 봉황동', '2022-01-01');
insert into `customer` values ('c102', '김춘추', '010-1234-1002', '경주시 보문동', '2022-01-02');
insert into `customer` values ('c103', '장보고', '010-1234-1003', '완도군 청산면', '2022-01-03');
insert into `customer` values ('c104', '강감찬', '010-1234-1004', '서울시 마포구', '2022-01-04');
insert into `customer` (`custid`, `name`, `rdate`) values ('c105', '이성계', '2022-01-05');
insert into `customer` values ('c106', '정철', '010-1234-1006', '경기도 용인시', '2022-01-06');
insert into `customer` (`custid`, `name`, `rdate`) values ('c107', '허준', '2022-01-07');
insert into `customer` values ('c108', '이순신', '010-1234-1008', '서울시 영등포구', '2022-01-08');
insert into `customer` values ('c109', '송상현', '010-1234-1009', '부산시 동래구', '2022-01-09');
insert into `customer` values ('c110', '정약용', '010-1234-1010', '경기도 광주시', '2022-01-10');

insert into `product` values ('1', '새우깡', '5000', '1500', '농심');
insert into `product` values ('2', '초코파이', '2500', '2500', '오리온');
insert into `product` values ('3', '포카칩', '3600', '1700', '오리온');
insert into `product` values ('4', '양파링', '1250', '1800', '농심');
insert into `product`(`prodno`, `prodname`, `stock`, `company`) values ('5', '죠리퐁', '2200', '크라운');
insert into `product` values ('6', '마가렛트', '3500', '3500', '롯데');
insert into `product` values ('7', '뿌셔뿌셔', '1650', '1200', '오뚜기');

insert into `order` (`orderid`, `orderproduct`, `ordercount`, `orderdate`) values ('c102', '3', '2', '2022-07-01 13:15:10');
insert into `order` (`orderid`, `orderproduct`, `ordercount`, `orderdate`) values ('c101', '4', '1', '2022-07-01 14:16:11');
insert into `order` (`orderid`, `orderproduct`, `ordercount`, `orderdate`) values ('c108', '1', '1', '2022-07-01 17:23:18');
insert into `order` (`orderid`, `orderproduct`, `ordercount`, `orderdate`) values ('c109', '6', '5', '2022-07-02 10:46:36');
insert into `order` (`orderid`, `orderproduct`, `ordercount`, `orderdate`) values ('c102', '2', '1', '2022-07-03 09:15:37');
insert into `order` (`orderid`, `orderproduct`, `ordercount`, `orderdate`) values ('c101', '7', '3', '2022-07-03 12:35:12');
insert into `order` (`orderid`, `orderproduct`, `ordercount`, `orderdate`) values ('c110', '1', '2', '2022-07-03 16:55:36');
insert into `order` (`orderid`, `orderproduct`, `ordercount`, `orderdate`) values ('c104', '2', '4', '2022-07-04 14:23:23');
insert into `order` (`orderid`, `orderproduct`, `ordercount`, `orderdate`) values ('c102', '1', '3', '2022-07-04 21:54:34');
insert into `order` (`orderid`, `orderproduct`, `ordercount`, `orderdate`) values ('c107', '6', '1', '2022-07-05 14:21:03');

# 실습 1-4 고객 테이블에 모든 속성 조회하기
select * from `customer`;

# 실습 1-5 고객 테이블에서 고객 아이디, 이름, 휴대폰 번호 조회하기
select `custid`, `name`, `hp` from `customer`;

# 실습 1-6 제품 테이블에 존재하는 모든 속성 조회하기
select * from `product`;

# 실습 1-7 제품 테이블에서 제조업체 조회하기
select `company` from `product`;

# 실습 1-8 제품 테이블에서 제조업체를 중복없이 조회하기
select distinct `company` from `product`;

# 실습 1-9 제품 테이블에서 제품명과 단가 조회하기
select `prodname`, `price` from `product`;

# 실습 1-10 제품명과 단가 조회하되 단가에 500원을 더해 조정단가로 출력하기
select `prodname`, (`price`+500) as `조정단가` from `product`;

# 실습 1-11 제품테이블에서 오리온이 제조한 제품의 제품명, 재고량, 단가 조회하기
select `prodname`, `stock`, `price` from `product` where `company`='오리온'; 

# 실습 1-12 주문 테이블에서 c102 고객이 주문한 주문제품, 수량, 주문일자 조회하기
select `orderproduct`, `ordercount`, `orderdate`
 from `order` where `orderid`='c102';

# 실습 1-13 주문 테이블에서 c102 고객이 2개이상 주문한 주문제품, 수량, 주문일자 조회하기
select `orderproduct`, `ordercount`, `orderdate`
 from `order` where `orderid`='c102' and `ordercount` >= 2;

# 실습 1-14 제품 테이블에서 단가가 1000원 이상 2000원 이하인 제품 조회하기
select * from `product` where `price` >= 1000 and `price` <= 2000;

# 실습 1-15 고객 테이블에서 성이 김씨인 고객의 아이디, 이름, 휴대폰, 주소 조회하기
select `custid`, `name`, `hp`, `addr` from
 `customer` where `name` like '김%';

# 실습 1-16 고객 테이블에서 고객 이름이 2자인 고객의 아이디, 이름, 휴대폰, 주소 조회하기
select `custid`, `name`, `hp`, `addr` from `customer` where `name` like '__';

# 실습 1-17 고객 테이블에서 휴대폰 번호가 입력되지 않은 고객 조회하기
select * from `customer` where `hp` is null;

# 실습 1-18 고객 테이블에서 주소가 입력된 고객 조회하기
select * from `customer` where `addr` is not null;

# 실습 1-19 고객 테이블에서 가입일을 내림차순으로 정렬하여 고객 조회하기
select * from `customer` order by `rdate` desc;

# 실습 1-20 주문 테이블에서 수량이 3개 이상인 주문내용 조회하기
# ( 단 주문 수량으로 내림차순 정렬, 수량이 같으면 제품번호를 기준으로 오름차순 정렬)
select * from `order` where `ordercount` >= 3
order by `ordercount` desc, `orderproduct`;

# 실습 1-21 제품 테이블에서 모든 제품의 단가 평균 조회하기
select avg(`price`) from `product`;

# 실습 1-22 농심에서 제조한 제품의 재고량 합계 조회하기
select sum(`stock`) as `재고량 합계` from `product` where `company`='농심';

# 실습 1-23 고객 테이블에 고객이 몇 명 등록되어 있는지 조회하기
select count(*) as `고객수` from `customer`;

# 실습 1-24 제품 테이블에서 제조업체의 수 조회하기
select count(distinct`company`) as `제조업체 수` from `product`;

# 실습 1-25 주문 테이블에서 주문제품별 수량의 합계 조회하기
select `orderproduct` as `주문 상품번호`,
 sum(`ordercount`) as `총 주문수량` from `order`
 group by `orderproduct` order by `orderproduct`;

# 실습 1-26 제품 테이블에서 제조업체별 제조한 제품의 개수와 제품중 가장 비싼 단가 조회하기
select `company` as `제조업체`, count(*) as `제품수`, max(`price`) as `최고가`
from `product` group by `company`;

# 실습 1-27 제품 테이블에서 제품을 2개 이상 제조한 제조업체별로 제품의 개수와 제품 중 가장 비싼 단가 조회하기
select `company` as `제조업체`, count(*) as `제품수`, max(`price`) as `최고가`
from `product` group by `company` having (`제품수`) >= 2;

# 실습 1-28 주문 테이블에서 각 주문고객이 주문한 제품의 총 주문수량을 주문 제품별로 조회하기
select `orderproduct`, `orderid`, sum(`ordercount`) as `총 주문수량` from `order`
group by `orderno` order by `orderproduct`, `총 주문수량` desc;

# 실습 1-29 c102 고객이 주문한 제품의 이름 조회하기
select a.`orderid`, b.`prodname` from `order` as a
join `product` as b
on a.`orderproduct` = b.`prodno`
where `orderid` = 'c102';

# 실습 1-30 주문일자가 7월 3일인 고객의 아이디, 이름, 상품명 그리고 주문 날짜시간 조회하기
select `orderid`, `name`, `prodname`, `orderdate` from `order` as a
join `customer` as b
on a.`orderid` = b.`custid`
join `product` as c
on a.`orderproduct` = c.`prodno`
where date_format(`orderdate`, '%Y-%m-%d') = '2022-07-03';
# where `orderdate` like '2022-07-03%';

# substr(`orderdate`, 1, 10) = '2022-07-03'; 으로 drderdate를 잘라서 사용하는 방법도 있다

