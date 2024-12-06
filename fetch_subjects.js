// Function triggered when the user selects a pupil from the dropdown
function fetchSubjects() {
    var pupilid = document.getElementById("student").value;
    console.log("Selected pupil ID: ", pupilid); // Debug selected ID
        // Check if a pupil has been selected
    if (pupilid != "") {
        // Create a new XMLHttpRequest object to handle the POST request
        var xhr = new XMLHttpRequest();
        // Open a POST request to the 'get_subjects.php' script
        xhr.open("POST", "subject_report.php", true);
        // Set the Content-Type header to send data as form data (URL encoded)
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

        // Log before sending the request
        console.log("Sending AJAX request with: student=" + pupilid);
        // Define what happens when the request completes
        xhr.onload = function () {
            // If the request is successful, insert the returned data into the page
            if (xhr.status == 200) {
                console.log("Response received: ", xhr.responseText); // Debug response
                // Insert the HTML for the subject dropdown into the 'subject_select' div
                document.getElementById("subject_select").innerHTML = xhr.responseText;
            } else {
                console.error("Error: ", xhr.status, xhr.statusText); // Debug errors
            }
        };
        // Handle potential errors
        xhr.onerror = function () {
            console.error("Request failed.");
        };
        // Send the POST request with the pupil ID in the request body
        xhr.send("student=" + pupilid);
    } else {
        console.log("No pupil selected.");
        // If no pupil is selected, clear the subject selection area
        document.getElementById("subject_select").innerHTML = "--subjects--";
    }
}
