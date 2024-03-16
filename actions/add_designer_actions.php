<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);
include "../settings/connection.php"; 
// Check if the form is submitted using POST method
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Sanitize the POST data to prevent XSS or SQL Injection
    // $cat_name = filter_input(INPUT_POST, 'cat_name', FILTER_SANITIZE_STRING);

    $fname = $_POST["firstName"];
    $lname = $_POST["lastName"];
    $portfolio_desc = $_POST["portfolioDescription"];
    $yoe = $_POST["yearsOfExperience"];
    $speciality = $_POST["speciality"];
    $ed_and_ce = $_POST["educationAndCertifications"];
    $link_to_projects = $_POST["linkToProjects"];
    $awards = $_POST["awardsAndRecognition"];
    $testimonials = $_POST["testimonials"];
 
    if(isset($_POST["submit"])) {
        $target_dir = "../img/uploads";
        $file = $_FILES["image"];
        $fileName = $file["name"];
        $fileTmpName = $file["tmp_name"];
        $fileError = $file["error"];
    	$RandomNum   = time();
        $ImageName = str_replace(' ','-',strtolower($file['name']));
        $ImageType      = $file['type'][0];
        $ImageExt = substr($ImageName, strrpos($ImageName, '.'));
        $ImageExt=str_replace('.','',$ImageExt);
        $ImageName=preg_replace("/\.[^.\s]{3,4}$/", "", $ImageName);

        $NewImageName = $ImageName.'-'.$RandomNum.'.'.$ImageExt;
	    $ret[$NewImageName]= $target_dir.$NewImageName;
            // Handle file upload for customer image
        $target_file = $target_dir ."/". $NewImageName;
        echo $target_file;
        move_uploaded_file($fileTmpName[0],$target_dir."/".$NewImageName );

        $myquery = "INSERT INTO `designer_portfolio` (FirstName, LastName, PortfolioDescription, YearsOfExperience, Speciality, EducationAndCertifications, LinkToProjects, AwardsAndRecognition, Testimonials,designer_image) VALUES ('$fname','$lname','$portfolio_desc','$yoe','$speciality','$ed_and_ce','$link_to_projects','$awards','$testimonials','$NewImageName')";
        $result = $conn->query($myquery);
        if (move_uploaded_file($fileTmpName, $target_file)) {
            echo "File uploaded successfully.";
        } else {
            echo "Error uploading file.";
        }

    if ($result) {
        // Registration successful, redirect to login page
        header("Location: ../interior/index.php ");
        exit();
    } else {
        // Display error on the register page
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}

}
$conn->close();
?>
