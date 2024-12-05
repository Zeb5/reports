<?php
header('Location:write_report.php');
include_once('connection.php');
array_map("htmlspecialchars", $_POST);
//print_r($_POST);
//Array ( [student] => 53 [subjectid] => 41 [classposition] => 20 [grade] => U [exammark] => 5 [comment] => you failed )

$stmt = $conn->prepare("UPDATE tblpupilstudies SET classposition = :classposition, classgrade = :grade, exammark = :exammark, comment = :comment WHERE userid = :userid AND subjectid = :subjectid;");
$stmt->bindParam(':classposition', $_POST["classposition"]);
$stmt->bindParam(':grade', $_POST["grade"]);
$stmt->bindParam(':exammark', $_POST["exammark"]);
$stmt->bindParam(':comment', $_POST["comment"]);
$stmt->bindParam(':userid', $_POST["student"]);
$stmt->bindParam(':subjectid', $_POST["subjectid"]);
//echo($stmt);
$stmt->execute();
?>