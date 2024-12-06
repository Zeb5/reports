<?php
include_once("connection.php");
$stmt = $conn->prepare("DROP TABLE IF EXISTS tblusers;
CREATE TABLE tblusers 
(userid INT(4) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(10) NOT NULL,
surname VARCHAR(20) NOT NULL,
forename VARCHAR(20) NOT NULL,
username VARCHAR(20) NOT NULL,
password VARCHAR(20) NOT NULL,
gender VARCHAR(1) NOT NULL,
house VARCHAR(20) NOT NULL,
year INT(2) NOT NULL,
role TINYINT(1),
UNIQUE KEY username_userid (username, userid));");
$stmt->execute();
$stmt->closeCursor();
echo"<br>tblusers created";

$stmt = $conn->prepare("DROP TABLE IF EXISTS tblsubject;
CREATE TABLE tblsubject
(subjectid INT(4) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
subjectname VARCHAR(30) NOT NULL,
teacher VARCHAR(20) NOT NULL);
ALTER TABLE `tblsubject`
ADD UNIQUE KEY `subjectname_teacher` (`subjectname`,`teacher`);");
$stmt->execute();
$stmt->closeCursor();
echo"<br>tblsubject created";

$stmt = $conn->prepare("DROP TABLE IF EXISTS tblpupilstudies;
CREATE TABLE tblpupilstudies
(subjectid INT(4),
userid INT(4),
classposition INT(2),
classgrade CHAR(1),
exammark INT(2),
comment TEXT,
PRIMARY KEY(subjectid, userid))");
$stmt->execute();
$stmt->closeCursor();
echo"<br>tblpupilstudies created";

$stmt = $conn->prepare("
DROP VIEW IF EXISTS viewteacher;
        CREATE VIEW viewteacher AS
        SELECT 
            tblusers.userid AS teacherid,
            tblusers.surname AS surname,
            tblusers.forename AS forename,
            tblusers.username AS username,
            tblusers.password AS password,
            tblusers.gender AS gender,
            tblusers.house AS house,
            tblusers.year AS year,
            tblusers.role AS role,
            tblusers.title AS title
        FROM tblusers
        WHERE tblusers.role = 1
        WITH CASCADED CHECK OPTION;
    ");
    $stmt->execute();
    $stmt->closeCursor();
    echo "<br>viewteacher created";

?>