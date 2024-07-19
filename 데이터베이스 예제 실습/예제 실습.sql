create table `tbluser` (
`user_id` varchar(5),
`user_name` varchar(4),
`user_hp` varchar(13),
`user_age` int,
`user_addr` varchar(7)
);

create table `tblproduct` (
`prod_no` int,
`prod_name` varchar(3),
`prod_price` varchar(11),
`prod_stock` int,
`prod_company` varchar(4),
`prod_date` varchar(10)
);

insert into `tbluser` values('p101', '김유신', '010-1234-1001', '25', '경남 김해시');
insert into `tbluser` values('p102', '김춘추', '010-1234-1002', '23', '경남 경주시');
insert into `tbluser` (`user_id`, `user_name`, `user_age`, `user_addr`) values ('p103', '장보고', '31', '전남 완도군');
insert into `tbluser` (`user_id`, `user_name`, `user_addr`) values ('p104', '강감찬', '서울시 중구');
insert into `tbluser` (`user_id`, `user_name`, `user_hp`, `user_age`) values ('p105', '이순신', '010-1234-1005', '50');

insert into `tblproduct` values('1001', '냉장고', '800000', '25', 'LG전자', '2022-01-06'); 
insert into `tblproduct` values('1002', '노트북', '1200000', '120', '삼성전자', '2022-01-07'); 
insert into `tblproduct` values('1003', '모니터', '350000', '35', 'LG전자', '2023-01-13'); 
insert into `tblproduct` values('1004', '세탁기', '1000000', '80', '삼성전자', '2021-01-01'); 
insert into `tblproduct` values('1005', '컴퓨터', '1500000', '20', '삼성전자', '2023-10-01'); 
insert into `tblproduct` (`prod_no`, `prod_name`, `prod_price`, `prod_stock` ) values ('1006', '휴대폰', '950000', '102');

