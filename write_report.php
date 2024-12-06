<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Select Pupil</title>
        <script src="fetch_subjects.js"></script>
    </head>
    <body>
        <h1>Select a Pupil</h1>
        <form method="POST" action="enter_report.php">
            <label for="userid">Select Pupil:</label>
            <select id="student" name="student" onchange="fetchSubjects()">
                <option value="">--Select Pupil--</option>
                <?php
                    include_once("connection.php");
                    $stmt = $conn->prepare("SELECT * FROM tblusers WHERE role=0 ORDER BY surname ASC");
                    $stmt->execute();
                    while ($row = $stmt->fetch(PDO::FETCH_ASSOC))
                        {
                            //print_r($row);
                            echo("<option value=".$row["userid"].">".$row["surname"].", ".$row["forename"]."</option>");
                        }
                ?>
            </select>
            <br>
            <div id="subject_select">
                <!-- Populated via AJAX -->
                --subjects--
            </div>
            Class Position:<input type="number" name="classposition" min="1">
            <br>
            Grade:<input type="radio" name="grade" value="A*">A&#42;
            <input type="radio" name="grade" value="A">A
            <input type="radio" name="grade" value="B">B
            <input type="radio" name="grade" value="C">C
            <input type="radio" name="grade" value="D">D
            <input type="radio" name="grade" value="F">F
            <input type="radio" name="grade" value="U">U
            <br>
            Exam Mark:<input type="number" name="exammark" min="0">
            <br>
            Comment:<br><textarea name="comment" rows="8" cols="62"></textarea>
            <br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
