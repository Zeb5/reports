<?php
if (isset($_POST['student'])) {
    $SelectedUserID = $_POST['student'];
    include_once('connection.php');
    $stmt = $conn->prepare("SELECT tu.forename,ts.subjectname,ts.subjectid FROM tblusers AS tu INNER JOIN tblpupilstudies AS tps ON tu.userid = tps.userid INNER JOIN tblsubject AS ts ON tps.subjectid = ts.subjectid WHERE tu.userid = :selecteduserid;");
    $stmt->bindParam(":selecteduserid", $SelectedUserID);
    $stmt->execute();

    echo('<label for="subjectid">Select Subject:</label>');
    echo('<select name="subjectid" required>');
    echo('<option value="">--Select Subject--</option>');
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        echo("<option value=".$row["subjectid"].">".$row["subjectname"]."</option>");
    }
    echo('</select>');
}
?>