# 날짜 : 2024/07/16
# 이름 : 하정훈
# 내용 : ERD 실습 2

# 실습 1
use hospital;
insert into `Departments` values ('101', '소아과', '김유신', '051-123-0101');
insert into `Departments` values ('102', '내과', '김춘추', '051-123-0102');
insert into `Departments` values ('103', '외과', '장보고', '051-123-0103');
insert into `Departments` values ('104', '피부과', '선덕여왕', '051-123-0104');
insert into `Departments` values ('105', '이비인후과', '강감찬', '051-123-0105');
insert into `Departments` values ('106', '산부인과', '신사임당', '051-123-0106');
insert into `Departments` values ('107', '흉부외과', '류성룡', '051-123-0107');
insert into `Departments` values ('108', '정형외과', '송상현', '051-123-0108');
insert into `Departments` values ('109', '신경외과', '이순신', '051-123-0109');
insert into `Departments` values ('110', '비뇨기과', '정약용', '051-123-0110');
insert into `Departments` values ('111', '안과', '박지원', '051-123-0111');
insert into `Departments` values ('112', '치과', '전봉준', '051-123-0112');

insert into `Doctors` values	('D101101', '김유신', '1976-01-21', 'M', '101', '과장', '010-1101-1976', 'kimys@bw.com');
insert into `Doctors` values	('D101102', '계백', '1975-06-11', 'M', '101', '전문의', '010-1102-1975', 'gaeback@bw.com');
insert into `Doctors` values	('D101103', '김관창', '1989-05-30', 'M', '101', '전문의', '010-1103-1989', 'kwanch@bw.com');
insert into `Doctors` values	('D102101', '김춘추', '1979-04-13', 'M', '102', '과장', '010-2101-1979', 'kimcc@bw.com');
insert into `Doctors` values	('D102104', '이사부', '1966-09-12', 'M', '102', '전문의', '010-2104-1966', 'leeasbu@bw.com');
insert into `Doctors` values	('D103101', '장보고', '1979-07-28', 'M', '103', '과장', '010-3101-1979', 'jangbg@bw.com');
insert into `Doctors` values	('D104101', '선덕여왕', '1984-06-15', 'F', '104', '과장', '010-4101-1984', 'gueen@bw.com');
insert into `Doctors` values	('D105101', '강감찬', '1965-10-21', 'M', '105', '과장', '010-5101-1965', 'kang@bw.com');
insert into `Doctors` values	('D106101', '신사임당', '1972-11-28', 'F', '106', '과장', '010-6101-1972', 'sinsa@bw.com');
insert into `Doctors` values	('D107103', '이이', '1992-09-07', 'M', '107', '전문의', '010-7103-1992', 'leelee@bw.com');
insert into `Doctors` values	('D107104', '이황', '1989-12-09', 'M', '107', '전문의', '010-7104-1989', 'hwang@bw.com');
insert into `Doctors` values	('D108101', '송상현', '1977-03-14', 'M', '108', '과장', '010-8101-1977', 'ssh@bw.com');

insert into `Patients` (`pat_id`, `doc_id`, `nur_id`, `pat_name`, `pat_jumin`, `pat_gen`, `pat_addr`, `pat_phone`, `pat_job`) values ('P102101', 'D102101', 'N102101', '정우성', '760121-1234567', 'M', '서울', '010-1101-7601', '배우');
insert into `Patients` (`pat_id`, `doc_id`, `nur_id`, `pat_name`, `pat_jumin`, `pat_gen`, `pat_addr`, `pat_phone`, `pat_job`) values ('P103101', 'D103101', 'N103101', '이정재', '750611-1234567', 'M', '서울', '010-1102-7506', '배우');
insert into `Patients`  values ('P102102', 'D102104', 'N102103', '전지현', '890530-1234567', 'F', '대전', '010-1103-8905', 'jjh@naver.com', '자영업');
insert into `Patients`  values ('P104101', 'D104101', 'N104101', '이나영', '790413-1234567', 'F', '대전', '010-2101-7904', 'lee@naver.com', '회사원');
insert into `Patients`  values ('P105101', 'D105101', 'N105101', '원빈', '660912-1234567', 'M', '대전', '010-2104-6609', 'one@daum.net', '배우');
insert into `Patients`  values ('P103102', 'D103101', 'N103101', '장동건', '790728-1234567', 'M', '대구', '010-3101-7907', 'jang@naver.com', '배우');
insert into `Patients`  values ('P104102', 'D104101', 'N104101', '고소영', '840615-1234567', 'F', '대구', '010-4101-8406', 'goso@daum.net', '회사원');
insert into `Patients`  values ('P108101', 'D108101', 'N108101', '김연아', '651021-1234567', 'F', '대구', '010-5101-6510', 'yuna@daum.net', '운동선수');
insert into `Patients` (`pat_id`, `doc_id`, `nur_id`, `pat_name`, `pat_jumin`, `pat_gen`, `pat_addr`, `pat_phone`, `pat_job`) values ('P102103', 'D102104', 'N102102', '유재석', '721128-1234567', 'M', '부산', '010-6101-7211', '개그맨');
insert into `Patients` (`pat_id`, `doc_id`, `nur_id`, `pat_name`, `pat_jumin`, `pat_gen`, `pat_addr`, `pat_phone`, `pat_job`) values ('P107101', 'D107104', 'N107101', '강호독', '920907-1234567', 'M', '부산', '010-7103-9209', '개그맨');
insert into `Patients`  values ('P105102', 'D105101', 'N105101', '조인성', '891209-1234567', 'M', '광주', '010-7104-8912', 'join@gmail.com', '배우');
insert into `Patients`  values ('P104103', 'D104101', 'N104101', '강동원', '770314-1234567', 'M', '광주', '010-8101-7703', 'dong@naver.com', '배우');

insert into `Nurses` values ('N101101', '송승헌', '1976-02-21', 'M', '101', '수간호사', '010-1101-7602', 'ssh@bw.com');
insert into `Nurses` values ('N102101', '이영애', '1975-07-11', 'F', '101', '수간호사', '010-1102-7507', 'yung@bw.com');
insert into `Nurses` values ('N102102', '엄정화', '1989-06-30', 'F', '102', '주임', '010-1103-8906', 'um@bw.com');
insert into `Nurses` values ('N102103', '박명수', '1979-05-13', 'M', '102', '주임', '010-2101-7905', 'park@bw.com');
insert into `Nurses` values ('N103101', '정준하', '1966-10-12', 'M', '103', '주임', '010-2104-6610', 'jung@bw.com');
insert into `Nurses` values ('N104101', '김태희', '1979-08-28', 'F', '104', '주임', '010-3101-7908', 'taeh@bw.com');
insert into `Nurses` values ('N105101', '송혜교', '1984-07-15', 'F', '105', '주임', '010-4101-8407', 'song@bw.com');
insert into `Nurses` values ('N106101', '공유', '1965-11-21', 'M', '106', '간호사', '010-5101-6511', 'gong@bw.com');
insert into `Nurses` values ('N107101', '이병헌', '1972-12-28', 'M', '107', '간호사', '010-6101-7212', 'byung@bw.com');
insert into `Nurses` values ('N108101', '송중기', '1992-10-07', 'M', '108', '간호사', '010-7103-9210', 'jungi@bw.com');

insert into `Treatments` values ('1021001', 'D102101', 'P102101', '감기,몸살', '2022-01-10 10:50:12');
insert into `Treatments` values ('1031002', 'D103101', 'P103101', '교통사고 외상', '2022-01-10 10:50:12');
insert into `Treatments` values ('1021003', 'D102104', 'P102102', '위염, 장염', '2022-01-10 10:50:12');
insert into `Treatments` values ('1041004', 'D104101', 'P104101', '피부 트러블', '2022-01-10 10:50:12');
insert into `Treatments` values ('1051005', 'D105101', 'P105101', '코막힘 및 비염', '2022-01-10 10:50:12');
insert into `Treatments` values ('1031006', 'D103101', 'P103102', '목 디스크', '2022-01-10 10:50:12');
insert into `Treatments` values ('1041007', 'D104101', 'P104102', '여드름', '2022-01-10 10:50:12');
insert into `Treatments` values ('1081008', 'D108101', 'P108101', '오른쪽 발목 뼈 골절', '2022-01-10 10:50:12');
insert into `Treatments` values ('1021009', 'D102104', 'P102103', '소화불량', '2022-01-10 10:50:12');
insert into `Treatments` values ('1071010', 'D107104', 'P107101', '가슴 통증', '2022-01-10 10:50:12');
insert into `Treatments` values ('1051011', 'D105101', 'P105102', '귀이명', '2022-01-10 10:50:12');
insert into `Treatments` values ('1041012', 'D104101', 'P104103', '팔목 화상', '2022-01-10 10:50:12');

insert into `Charts` values ('C1021001', '1021001', 'D102101', 'P102101', '감기 주사 및 약 처방');
insert into `Charts` values ('C1031002', '1031002', 'D103101', 'P103101', '입원 치료');
insert into `Charts` values ('C1021003', '1021003', 'D102104', 'P102102', '위내시경');
insert into `Charts` values ('C1041004', '1041004', 'D104101', 'P104101', '피부 감염 방지 주사');
insert into `Charts` values ('C1051005', '1051005', 'D105101', 'P105101', '비염 치료');
insert into `Charts` values ('C1031006', '1031006', 'D103101', 'P103102', '목 견인치료');
insert into `Charts` values ('C1041007', '1041007', 'D104101', 'P104102', '여드름 치료약 처방');
insert into `Charts` values ('C1081008', '1081008', 'D108101', 'P108101', '발목 깁스');
insert into `Charts` values ('C1021009', '1021009', 'D102104', 'P102103', '주사 처방');
insert into `Charts` values ('C1071010', '1071010', 'D107104', 'P107101', 'MRI 검사');
insert into `Charts` values ('C1051011', '1051011', 'D105101', 'P105102', '귀 청소 및 약 처방');
insert into `Charts` values ('C1041012', '1041012', 'D104101', 'P104103', '화상 크림약 처방');

select d2.`doc_id`, d2.`doc_name`, d2.`doc_birth`, d1.`dep_no`, d1.`dep_name`
from `Departments` as d1
join `Doctors` as d2 using (`dep_no`);

select n.`nur_id`, n.`nur_name`, n.`nur_birth`, d1.`dep_no`, d1.`dep_name`
from `Departments` as d1
join `Nurses` as n using (`dep_no`);

select p.`pat_id`, p.`pat_name`, p.`pat_jumin`, d2.`doc_name`, n.`nur_name`
from `Patients` as p 
join `Doctors` as d2 using (`doc_id`)
join `Nurses` as n using (`nur_id`);

select p.`pat_name`, d2.`doc_name`, t.`treat_contents`, c.`chart_contents`, t.`treat_datetime`
from `Patients` as p
join `Doctors` as d2 using (`doc_id`)
join `Treatments` as t using (`doc_id`)
join `Charts` as c using (`doc_id`);


SET SESSION sql_mode = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
select t.`treat_no`, p.`pat_name`, d2.`doc_name`, t.`treat_contents`, c.`chart_contents`, t.`treat_datetime`
from `Patients` as p
join `Doctors` as d2 on p.`doc_id` = d2.`doc_id`
join `Treatments` as t on t.`pat_id` = p.`pat_id`
join `Charts` as c on c.`pat_id` = p.`pat_id`
join `Departments` as d on d.`dep_no` = d2.`dep_no`
where `dep_name` = '외과';

select t.`treat_no`, p.`pat_name`, d2.`doc_name`, t.`treat_contents`, c.`chart_contents`, t.`treat_datetime`
from `Patients` as p
join `Doctors` as d2 on p.`doc_id` = d2.`doc_id`
join `Treatments` as t on t.`pat_id` = p.`pat_id`
join `Charts` as c on c.`pat_id` = p.`pat_id`
where `treat_contents` like '%화상%';

select * from
(select 
	*,
    YEAR(NOW()) - `year` as `age`
	from
		(select 
			*,
			CONCAT('19', SUBSTRING(`pat_jumin`, 1, 2)) as `year`
		from `patients`) as a) as b
where `age` >= 30 and `age` < 40;




select d1.`dep_manager`, d1.`dep_name`
from `Doctors` as d2
right join `Departments` as d1 on d1.`dep_no` = d2.`dep_no`
where d2.`doc_name` is null;
