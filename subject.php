<!DOCTYPE html>
<html>
    <title>Subjects</title>
        
    </head>
    <body>
        <form action="addsubject.php" method="post">
            Subject name:<input type="text" name="subjectname"><br>
            Teacher:<input type="text" name="teacher"><br>
            
            <input type="submit" value="Add Subject">
        </form>
        <h2>Current Subjects & Teachers:</h2>
        <?php
            include_once("connection.php");
            $stmt = $conn->prepare("SELECT * FROM tblsubject");
            $stmt->execute();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC))
                {
                    //print_r($row);
                    echo($row["subjectname"]."  --  ".$row["teacher"]."<br>");
                }
        ?>
    </body>
</html>