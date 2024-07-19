select * from `tbluser`;
SELECT `user_name` FROM `TblUser`;
 SELECT `user_name`, `user_hp` FROM `TblUser`;
 SELECT * FROM `TblUser` WHERE `user_id`='p102';
 SELECT * FROM `TblUser` WHERE `user_id`='p104' OR `user_id`='p105';
 SELECT * FROM `TblUser` WHERE `user_addr`='부산시 금정구';
 SELECT * FROM `TblUser` WHERE `user_age` > 30;
 SELECT * FROM `TblUser` WHERE `user_hp` IS NULL;
 UPDATE `TblUser` SET `user_age`=42 WHERE `user_id`='p104';
 UPDATE `TblUser` SET `user_addr`='부산시 진구' WHERE `user_id`='p105';
 DELETE FROM `TblUser` WHERE `user_id`='p103';
 SELECT * FROM `TblProduct`;
 SELECT `prod_name` FROM `TblProduct`;
 SELECT `prod_name`, `prod_company`, `prod_price` FROM `TblProduct`;
 SELECT * FROM `TblProduct` WHERE `prod_company`='LG전자';
 SELECT * FROM `TblProduct` WHERE `prod_company`='삼성전자';
 UPDATE `TblProduct` SET

`prod_company`='삼성전자',
`prod_date`='2024-01-01'
WHERE
`prod_no`=1006;