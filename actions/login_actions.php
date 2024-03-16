<?php

include "../settings/connection.php"; 
include "../functions/select_role.php";


if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $email = $_POST['email'];
    $password = $_POST['password'];
	// if (isAdmin()) {
	// 	header("Location: ../admin/adminview.php"); // Redirect to the admin dashboard
	// } else {
	// 	header("Location: ../interior/index.php"); // Redirect to a regular user dashboard
	// }
	// exit();

    $stmt = $conn->prepare("SELECT client_id, first_name, `password` FROM clients WHERE email = ?");
	$stmt->bind_param("s", $email);
	$stmt->execute();
	$stmt->bind_result($client_id, $fname, $hashed_password);
	$stmt->fetch();
	$stmt->close();
	if (password_verify($password, $hashed_password)) {
		session_start();
		$_SESSION['username'] = $fname;
		$_SESSION['client_id'] = $client_id;

		$conn->close();
		
        header('Location:../view/booking/booking.php?success=Login successful!');
        exit();

	} else {
		$conn->close();
		
        header('Location: ../Interior/index.php?error=Login failed!');
        exit();
	}
}
?>


