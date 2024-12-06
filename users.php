<!DOCTYPE html>
<html>
    <head>
        <title>Add User</title>
        <style>
            /* Table styling for a clean and organized appearance */
            table {
                border-collapse: collapse;
                width: 100%;
            }
            th, td {
                border: 1px solid black;
                padding: 8px;
                text-align: left;
            }
            th {
                cursor: pointer; /* Enables column sorting by clicking the header */
            }
        </style>
    </head>
    <body>
        <!-- Form for adding new users -->
        <form action="addusers.php" method="POST">
            <!-- Input fields for user information -->
            First name: <input type="text" name="forename"><br>
            Last name: <input type="text" name="surname"><br>
            Title: <input type="text" name="title"><br>
            Password: <input type="password" name="passwd"><br>
            House: <input type="text" name="house"><br>
            Year: <input type="text" name="year"><br>

            <!-- Dropdown menu for gender selection -->
            Gender: 
            <select name="gender">
                <option value="M">Male</option>
                <option value="F">Female</option>
            </select>
            <br>

            <!-- Radio buttons for selecting user role -->
            <input type="radio" name="role" value="Pupil" checked> Pupil<br>
            <input type="radio" name="role" value="Teacher"> Teacher<br>
            <input type="radio" name="role" value="Admin"> Admin<br>

            <!-- Submit button to add the user -->
            <input type="submit" value="Add User">
        </form>

        <!-- Section to display current users -->
        <h2>Current Users:</h2>
        <?php
            // Include database connection
            include_once("connection.php");

            // Prepare and execute SQL query to fetch user data
            $stmt = $conn->prepare("SELECT tu.title, tu.forename, tu.surname, tu.role FROM tblusers AS tu");
            $stmt->execute();

            // Start rendering the HTML table
            echo "<table id='userTable'>";
            echo "<thead><tr>";
            echo "<th onclick='sortTable(0)'>Title</th>";        // Sortable column: Title
            echo "<th onclick='sortTable(1)'>First Name</th>";  // Sortable column: First Name
            echo "<th onclick='sortTable(2)'>Last Name</th>";   // Sortable column: Last Name
            echo "<th onclick='sortTable(3)'>Role</th>";        // Sortable column: Role
            echo "</tr></thead><tbody>";

            // Loop through results and populate the table
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                // Decode the role number into a meaningful string
                $role = '';
                switch ($row["role"]) {
                    case 0: $role = 'Pupil'; break;
                    case 1: $role = 'Teacher'; break;
                    case 2: $role = 'Admin'; break;
                    default: $role = 'Unknown';
                }

                // Output the row data, escaping HTML for security
                echo "<tr>";
                echo "<td>" . htmlspecialchars($row["title"]) . "</td>";
                echo "<td>" . htmlspecialchars($row["forename"]) . "</td>";
                echo "<td>" . htmlspecialchars($row["surname"]) . "</td>";
                echo "<td>" . htmlspecialchars($role) . "</td>";
                echo "</tr>";
            }

            echo "</tbody></table>";
        ?>

        <!-- JavaScript function to sort table columns -->
        <script>
            /**
             * Sorts a table column when the header is clicked.
             * @param {number} columnIndex - The index of the column to sort.
             */
            function sortTable(columnIndex) {
                const table = document.getElementById("userTable");
                const rows = Array.from(table.rows).slice(1); // Skip the header row
                const isAscending = table.dataset.sortOrder !== 'asc'; // Toggle sort order

                // Perform case-insensitive sorting
                rows.sort((rowA, rowB) => {
                    const cellA = rowA.cells[columnIndex].innerText.toLowerCase();
                    const cellB = rowB.cells[columnIndex].innerText.toLowerCase();

                    if (cellA < cellB) return isAscending ? -1 : 1;
                    if (cellA > cellB) return isAscending ? 1 : -1;
                    return 0;
                });

                // Update the sort order
                table.dataset.sortOrder = isAscending ? 'asc' : 'desc';

                // Append sorted rows back to the table body
                const tbody = table.querySelector("tbody");
                rows.forEach(row => tbody.appendChild(row));
            }
        </script>
    </body>
</html>
