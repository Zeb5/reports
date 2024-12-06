<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Metadata for character encoding and document title -->
        <meta charset="UTF-8">
        <title>Select Pupil</title>
        <!-- Include JavaScript file to handle AJAX requests for fetching subjects -->
        <script src="fetch_subjects.js"></script>
    </head>
    <body>
        <h1>Select a Pupil</h1>
        <!-- Form to select a pupil and enter related report details -->
        <form method="POST" action="enter_report.php">
            <!-- Dropdown for selecting a pupil -->
            <label for="userid">Select Pupil:</label>
            <select id="student" name="student" onchange="fetchSubjects()">
                <option value="">--Select Pupil--</option>
                <?php
                    // Include the database connection file
                    include_once("connection.php");

                    // Prepare SQL query to fetch all users with the "Pupil" role (role=0), ordered by surname
                    $stmt = $conn->prepare("SELECT * FROM tblusers WHERE role=0 ORDER BY surname ASC");
                    $stmt->execute();

                    // Populate the dropdown with pupil data
                    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                        // Dynamically generate an option for each pupil
                        echo("<option value=".$row["userid"].">".$row["surname"].", ".$row["forename"]."</option>");
                    }
                ?>
            </select>
            <br>

            <!-- Placeholder div for subjects, populated dynamically via AJAX -->
            <div id="subject_select">
                <!-- Default text before subjects are loaded -->
                --subjects--
            </div>

            <!-- Input field for class position -->
            Class Position:<input type="number" name="classposition" min="1">
            <br>

            <!-- Radio buttons for selecting a grade -->
            Grade:
            <input type="radio" name="grade" value="A+">A&#43;
            <input type="radio" name="grade" value="A">A
            <input type="radio" name="grade" value="B">B
            <input type="radio" name="grade" value="C">C
            <input type="radio" name="grade" value="D">D
            <input type="radio" name="grade" value="F">F
            <input type="radio" name="grade" value="U">U
            <br>

            <!-- Input field for entering exam marks -->
            Exam Mark:<input type="number" name="exammark" min="0">
            <br>

            <!-- Textarea for additional comments -->
            Comment:<br>
            <textarea name="comment" rows="8" cols="62"></textarea>
            <br>

            <!-- Submit button for form submission -->
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
