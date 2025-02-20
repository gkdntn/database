# 날짜 : 2024/07/01
# 이름 : 하정훈
# 내용 : 1장 데이터베이스 개요와 MySQL 설치

#실습 1-1. MySQL 접속, 데이터베이스 생성 및 삭제
CREATE DATABASE `StudyDB`;
show databases;

drop database `StudyDB`;

#실습 1-2. 일반 관리자 생성 및 권한 부여
CREATE USER 'gkgkdos'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `StudyDB`.* TO 'gkgkdos'@'%';
FLUSH PRIVILEGES;

#실습 1-3. 사용자 비밀번호 수정 및 삭제
ALTER USER 'gkgkdos'@'%' IDENTIFIED BY 'abc1234';
DROP USER 'gkgkdos'@'%';
FLUSH PRIVILEGES;