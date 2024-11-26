<?php
include_once("connection.php");
header('Location:subject.php');
array_map("htmlspecialchars", $_POST);

print_r($_POST);
echo($_POST["subjname"]);

$stmt = $conn->prepare("INSERT INTO tblsubject (subjectid,subjectname,teacher)
VALUES (null,:subjectname,:teacher)");

$stmt->bindParam(':subjectname', $_POST["subjectname"]);
$stmt->bindParam(':teacher', $_POST["teacher"]);
$stmt->execute();

$conn=null;