<!DOCTYPE html>
<html>
    <head>
        <title>Subjects</title>
    </head>
    <body>
        <form action="addsubject.php" method="post">
            Subject name:<input type="text" name="subjectname"><br>
            <!--Finish on 06/12/24-->
            <select name="teacherid">
                <option value="">--Select Teacher--</option>
                <?php
                    include_once("connection.php");
                    $stmt = $conn->prepare("SELECT vt.title, vt.surname, vt.teacherid FROM viewteacher AS vt ORDER BY vt.surname ASC");
                    $stmt->execute();
                    while ($row = $stmt->fetch(PDO::FETCH_ASSOC))
                        {
                            //print_r($row);
                            echo("<option value=".$row["teacherid"].">".$row["title"]." ".$row["surname"]."</option>");
                        }
                ?>
            </select>
            <br>
            <input type="submit" value="Add Subject">
        </form>
        <h2>Current Subjects & Teachers:</h2>
        <?php
            $stmt = $conn->prepare("SELECT ts.subjectname, vt.title, vt.surname FROM tblsubject AS ts INNER JOIN viewteacher AS vt WHERE ts.teacherid = vt.teacherid");
            $stmt->execute();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC))
                {
                    //print_r($row);
                    echo($row["subjectname"]."  --  ".$row["title"]." ".$row["surname"]."<br>");
                }
        ?>
    </body>
</html>