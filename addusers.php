<?php
include_once("connection.php");
header('Location:users.php');
array_map("htmlspecialchars", $_POST);


print_r($_POST);
echo($_POST["forename"]);
switch($_POST["role"]){
	case "Pupil":
		$role=0;
		break;
	case "Teacher":
		$role=1;
		break;
	case "Admin":
		$role=2;
		break;
}
$stmt = $conn->prepare("INSERT INTO tblusers (userid, gender, surname, forename, title, password, house, year, role)
VALUES (null,:gender,:surname,:forename,:title,:password,:house,:year,:role)");


$stmt->bindParam(':forename', $_POST["forename"]);
$stmt->bindParam(':surname', $_POST["surname"]);
$stmt->bindParam(':title', $_POST["title"]);
$stmt->bindParam(':house', $_POST["house"]);
$stmt->bindParam(':year', $_POST["year"]);
$stmt->bindParam(':password', $_POST["passwd"]);
$stmt->bindParam(':gender', $_POST["gender"]);
$stmt->bindParam(':role', $role);
$stmt->execute();
$conn=null;

?>