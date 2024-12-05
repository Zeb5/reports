<!DOCTYPE html>
<html>
    <head>
        <title>Page title</title>
    </head>
    <body>
        <?php
            include_once("connection.php");
            $stmt = $conn->prepare("SELECT tblsubject.subjectname AS sn,
            tblusers.forename AS fn,
            tblusers.surname AS ln
            FROM tblpupilstudies
            INNER JOIN tblsubject ON tblsubject.subjectid=tblpupilstudies.subjectid
            INNER JOIN tblusers ON tblusers.userid=tblpupilstudies.userid");
            $stmt->execute();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC))
            {
                //print_r($row);
                echo($row["sn"]." studied by ".$row["fn"]."  ".$row["ln"]."<br>");
            }
        ?>

    </body>
</html>