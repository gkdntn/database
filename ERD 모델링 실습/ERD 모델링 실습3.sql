# 날짜 : 2024/07/18
# 이름 : 하정훈
# 내용 : ERD 실습 3


use shopping;

insert into `Users` values ('user1', '김유신', '1976-01-21', 'M', '010-1101-1976', 'kimus@naver.com', '0', '1', '서울', '2022-01-10 10:50:12');
insert into `Users` (`userId`, `userName`, `userBirth`, `userGender`, `userHp`, `userPoint`, `userLevel`, `userAddr`, `userRegDate`) values ('user2', '계백', '1975-06-11', 'M', '010-1102-1975', '1000', '1', '서울', '2022-01-10 10:50:12');
insert into `Users` (`userId`, `userName`, `userBirth`, `userGender`, `userHp`, `userPoint`, `userLevel`, `userAddr`, `userRegDate`) values ('user3', '김춘추', '1989-05-30', 'M', '010-1103-1989', '1200', '2', '서울', '2022-01-10 10:50:12');
insert into `Users` values ('user4', '이사부', '1979-04-13', 'M', '010-2101-1979', 'leesabu@gmail.com', '2600', '1', '서울', '2022-01-10 10:50:12');
insert into `Users` values ('user5', '장보고', '1966-09-12', 'M', '010-2104-1966', 'jangbg@naver.com', '9400', '4', '대전', '2022-01-10 10:50:12');
insert into `Users` values ('user6', '선덕여왕', '1979-07-28', 'M', '010-3101-1979', 'queen@naver.com', '1600', '2', '대전', '2022-01-10 10:50:12');
insert into `Users` values ('user7', '강감찬', '1984-06-15', 'F', '010-4101-1984', 'kang@daum.com', '800', '0', '대구', '2022-01-10 10:50:12');
insert into `Users` values ('user8', '신사임당', '1965-10-21', 'M', '010-5101-1965', 'sinsa@gmail.com', '1500', '1', '대구', '2022-01-10 10:50:12');
insert into `Users` values ('user9', '이이', '1972-11-28', 'F', '010-6101-1972', 'leelee@nate.com', '3400', '3', '부산', '2022-01-10 10:50:12');
insert into `Users` (`userId`, `userName`, `userBirth`, `userGender`, `userHp`, `userPoint`, `userLevel`, `userAddr`, `userRegDate`) values ('user10', '허난설헌', '1992-09-07', 'F', '010-7103-1992',  '4100', '3', '광주', '2022-01-10 10:50:12');

insert into `Points` (`userId`, `point`, `pointDesc`, `pointDate`) values ('user1', '1000', '회원가입 1000 적립', '2022-01-10 10:50:12');
insert into `Points` (`userId`, `point`, `pointDesc`, `pointDate`) values ('user1', '6000', '상품구매 5% 적립', '2022-01-10 10:50:12');
insert into `Points` (`userId`, `point`, `pointDesc`, `pointDate`) values ('user3', '2835', '상품구매 5% 적립', '2022-01-10 10:50:12');
insert into `Points` (`userId`, `point`, `pointDesc`, `pointDate`) values ('user7', '3610', '상품구매 5% 적립', '2022-01-10 10:50:12');
insert into `Points` (`userId`, `point`, `pointDesc`, `pointDate`) values ('user5', '3000', '이벤트 응모 3000 적립', '2022-01-10 10:50:12');
insert into `Points` (`userId`, `point`, `pointDesc`, `pointDate`) values ('user2', '1000', '회원가입 1000 적립', '2022-01-10 10:50:12');
insert into `Points` (`userId`, `point`, `pointDesc`, `pointDate`) values ('user2', '2000', '이벤트 응모 2000 적립', '2022-01-10 10:50:12');
insert into `Points` (`userId`, `point`, `pointDesc`, `pointDate`) values ('user2', '2615', '상품구매 5% 적립', '2022-01-10 10:50:12');
insert into `Points` (`userId`, `point`, `pointDesc`, `pointDate`) values ('user3', '1500', '이벤트 응모 1500 적립', '2022-01-10 10:50:12');
insert into `Points` (`userId`, `point`, `pointDesc`, `pointDate`) values ('user6', '15840', '상품구매 2% 적립', '2022-01-10 10:50:12');

insert into `Sellers` values ('10001', '(주)다팔아', '02-201-1976', '정우성', '서울');
insert into `Sellers` values ('10002', '판매의민족', '02-102-1975', '이정재', '서울');
insert into `Sellers` values ('10003', '멋남', '031-103-1989', '원빈', '경기');
insert into `Sellers` values ('10004', '스타일살아', '032-201-1979', '이나영', '경기');
insert into `Sellers` values ('10005', '(주)삼성전자', '02-214-1966', '장동건', '서울');
insert into `Sellers` values ('10006', '복실이옷짱', '051-301-1979', '고소영', '부산');
insert into `Sellers` values ('10007', '컴퓨존(주)', '055-401-1984', '유재석', '대구');
insert into `Sellers` values ('10008', '(주)LG전자', '02-511-1965', '강호동', '서울');
insert into `Sellers` values ('10009', '굿바디스포츠', '070-6101-1972', '조인성', '부산');
insert into `Sellers` values ('10010', '누리푸드', '051-710-1992', '강동원', '부산');

insert into `Categories` values ('10', '여성의류패션');
insert into `Categories` values ('11', '남성의류패션');
insert into `Categories` values ('12', '식품-생필품');
insert into `Categories` values ('13', '취미-반려견');
insert into `Categories` values ('14', '홈-문구');
insert into `Categories` values ('15', '자동차-공구');
insert into `Categories` values ('16', '스포츠-건강');
insert into `Categories` values ('17', '컴퓨터-가전-디지털');
insert into `Categories` values ('18', '여행');
insert into `Categories` values ('19', '도서');

insert into `Products` values ('100101', '11', '10003', '반팔티 L~2XL', '25000', '869', '132', '20');
insert into `Products` values ('100110', '10', '10004', '트레이닝 통바지', '38000', '1602', '398', '15');
insert into `Products` values ('110101', '10', '10003', '신상 여성운동화', '76000', '160', '40', '5');
insert into `Products` (`prodNo`, `cateNo`, `sellerNo`, `prodName`, `prodPrice`, `prodSold`, `prodDiscount`) values ('120101', '12', '10010', '암소 1등급 구이셋트 1.2kg', '150000', '87', '15');
insert into `Products` (`prodNo`, `cateNo`, `sellerNo`, `prodName`, `prodPrice`, `prodSold`, `prodDiscount`) values ('120103', '12', '10010', '바로구이 부채살 250g', '21000', '61', '10');
insert into `Products` values ('130101', '13', '10006', '[ANF] 식스프리 강아지 사료', '56000', '58', '142', '0');
insert into `Products` values ('130112', '13', '10006', '중대형 사계절 강아지옷', '15000', '120', '80', '0');
insert into `Products` (`prodNo`, `cateNo`, `sellerNo`, `prodName`, `prodPrice`, `prodSold`, `prodDiscount`) values ('141101', '14', '10001', '라떼 2인 소파/방수 패브릭', '320000', '42', '0');
insert into `Products` values ('170115', '17', '10007', '지포스 3080 그래픽카드', '900000', '28', '12', '12');
insert into `Products` values ('160103', '16', '10009', '치닝디핑 33BR 철봉', '12000', '32', '28', '0');

insert into `Orders` values ('22010210001', 'user2', '52300', '서울시 마포구 121', '1', '2022-01-10 10:50:12');
insert into `Orders` values ('22010210002', 'user3', '56700', '서울시 강남구 21-1', '1', '2022-01-10 10:50:12');
insert into `Orders` values ('22010210010', 'user4', '72200', '서울시 강서구 큰대로 38', '2', '2022-01-10 10:50:12');
insert into `Orders` values ('22010310001', 'user5', '127000', '경기도 광주시 초월로 21', '1', '2022-01-10 10:50:12');
insert into `Orders` values ('22010310100', 'user1', '120000', '경기도 수원시 120번지', '0', '2022-01-10 10:50:12');
insert into `Orders` values ('22010410101', 'user6', '792000', '부산시 남구 21-1', '2', '2022-01-10 10:50:12');
insert into `Orders` values ('22010510021', 'user7', '92200', '부산시 부산진구 56 10층', '4', '2022-01-10 10:50:12');
insert into `Orders` values ('22010510027', 'user8', '112000', '대구시 팔달로 19', '3', '2022-01-10 10:50:12');
insert into `Orders` values ('22010510031', 'user10', '792000', '대전시 한밭로 24-1', '2', '2022-01-10 10:50:12');
insert into `Orders` values ('22010710110', 'user9', '94500', '광주시 충열로 11', '1', '2022-01-10 10:50:12');

insert into `Orderitems` (`orderNo`, `prodNo`, `itemPrice`, `itemDiscount`, `itemCount`) values ('22010210001', '100110', '38000', '15', '1');
insert into `Orderitems` (`orderNo`, `prodNo`, `itemPrice`, `itemDiscount`, `itemCount`) values ('22010210001', '100101', '25000', '20', '1');
insert into `Orderitems` (`orderNo`, `prodNo`, `itemPrice`, `itemDiscount`, `itemCount`) values ('22010210002', '120103', '21000', '10', '3');
insert into `Orderitems` (`orderNo`, `prodNo`, `itemPrice`, `itemDiscount`, `itemCount`) values ('22010310001', '130112', '15000', '0', '1');
insert into `Orderitems` (`orderNo`, `prodNo`, `itemPrice`, `itemDiscount`, `itemCount`) values ('22010310001', '130101', '56000', '0', '2');
insert into `Orderitems` (`orderNo`, `prodNo`, `itemPrice`, `itemDiscount`, `itemCount`) values ('22010210010', '110101', '76000', '5', '1');
insert into `Orderitems` (`orderNo`, `prodNo`, `itemPrice`, `itemDiscount`, `itemCount`) values ('22010310100', '160103', '120000', '0', '1');
insert into `Orderitems` (`orderNo`, `prodNo`, `itemPrice`, `itemDiscount`, `itemCount`) values ('22010410101', '170115', '900000', '12', '1');
insert into `Orderitems` (`orderNo`, `prodNo`, `itemPrice`, `itemDiscount`, `itemCount`) values ('22010510021', '110101', '76000', '5', '1');
insert into `Orderitems` (`orderNo`, `prodNo`, `itemPrice`, `itemDiscount`, `itemCount`) values ('22010510027', '130101', '56000', '0', '2');
insert into `Orderitems` (`orderNo`, `prodNo`, `itemPrice`, `itemDiscount`, `itemCount`) values ('22010510021', '100101', '25000', '20', '1');
insert into `Orderitems` (`orderNo`, `prodNo`, `itemPrice`, `itemDiscount`, `itemCount`) values ('22010510031', '170115', '900000', '12', '1');
insert into `Orderitems` (`orderNo`, `prodNo`, `itemPrice`, `itemDiscount`, `itemCount`) values ('22010710110', '120103', '21000', '10', '5');

insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user1', '100101', '1', '2022-01-10 10:50:12');
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user1', '100110', '2', '2022-01-10 10:50:12');
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user3', '120103', '1', '2022-01-10 10:50:12');
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user4', '130112', '1', '2022-01-10 10:50:12');
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user5', '130101', '1', '2022-01-10 10:50:12');
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user2', '110101', '3', '2022-01-10 10:50:12');
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user2', '160103', '1', '2022-01-10 10:50:12');
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user2', '170115', '1', '2022-01-10 10:50:12');
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user3', '110101', '1', '2022-01-10 10:50:12');
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user6', '130101', '1', '2022-01-10 10:50:12');

select u.`userName`, p.`prodName`, c.`cartProdCount`
from `Users` as u
join `Carts` as c on u.`userId` = c.`userId`
join `Products` as p on p.`prodNo` = c.`prodNo`
where `cartProdCount` >= 2;

select p.`prodNo`, c2.`cateNo`, p.`prodName`, p.`prodPrice`, `sellerManager`, `sellerPhone`
from `Products` as p
join `Categories` as c2 on p.`cateNo` = c2.`cateNo`
join `Sellers` as s on p.`sellerNo` = s.`sellerNo`;

select `userId`, sum(`point`) 
from `Points`
group by `userId`;

select u.`userId`, u.`userName`, u.`userHp`, u.`userPoint`, ifnull(sum(p.`point`), 0) as `적립총합` from
`Users` as u 
left join `Points` as p on u.`userId` = p.`userId`
group by `userId`;

select o.`orderNo`, o.`userId`, u.`userName`, o2.`itemPrice`, o.`orderDate`
from `Orders` as o
join `Users` as u on o.`userId` = u.`userId`
join `Orderitems` as o2 on o.`orderNo`=o2.`orderNo`
where `itemPrice` >= 100000
order by `itemPrice` desc, `userName`;

SET SESSION sql_mode = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
SELECT
	a.orderNo,
	c.userId,
	c.userName,
	GROUP_CONCAT(`prodName` SEPARATOR ',') AS `상품명`,
	`orderDate`
FROM `Orders` AS a
JOIN `OrderItems` AS b ON a.orderNo = b.orderNo
JOIN `Users` AS c ON a.userId = c.userId
JOIN `Products` AS d ON b.prodNo=d.prodNo
GROUP BY a.`orderNo`;

select `prodNo`, `prodName`, `prodPrice`, `prodDiscount`,
(`prodPrice` - ((prodDiscount*0.01)*prodPrice)) as `할인된 가격`
from `Products`;

select p.`prodNo`, p.`prodName`, p.`prodPrice`, p.`prodSold`, s.`sellerManager`
from `Products` as p
join `Sellers` as s using(`sellerNo`)
where `sellerManager`='고소영';

select s.`sellerNo`, s.`sellerBizName`, s.`sellerManager`, s.`sellerPhone`
from `Sellers` as s
left join `Products` as p using (`sellerNo`)
where `prodNo` is null;