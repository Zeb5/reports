<?php
header('Location:subject.php');
include_once('connection.php');
array_map("htmlspecialchars", $_POST);
//print_r($_POST);

$stmt = $conn->prepare("INSERT INTO tblsubject (subjectid,subjectname,teacherid)VALUES (NULL,:subjectname,:teacherid)");
$stmt->bindParam(':subjectname', $_POST["subjectname"]);
$stmt->bindParam(':teacherid', $_POST["teacher"]);

$stmt->execute();
?>