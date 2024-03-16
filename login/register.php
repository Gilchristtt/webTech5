<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup - Chore Management System</title>
    <link rel="stylesheet" href="../css/signup-style.css">
</head>
<body>

    <div class="login-container">
        <div class="login-box">
            <h2>Signup</h2>
            <form action="../actions/register_client_actions.php" method="POST" > <!-- Updated for file upload -->
            
                <label for="name">First Name:</label>
                <input type="text" id="fname" name="fame" required>
                <label for="name">Last Name:</label>
                <input type="text" id="lname" name="lname" required>
            
                <label for="contact">Contact Number:</label>
                <input type="text" id="contact" name="contact" required>
            
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            
                <label for="password-retype">Retype Password:</label>
                <input type="password" id="Retype_Password" name="Retype_Password" required>

                <!-- New fields added below -->
                <label for="country">Customer Country:</label>
                <input type="text" id="client_country" name="client_country" required>

                <label for="city">Customer City:</label>
                <input type="text" id="client_city" name="client_city" required>

                <button type="submit" id = "register" name="submit">Register</button>
                <p class="login">Already have an account? <a href="Signin.html">Login</a></p>
            </form>
        </div>
    </div>
</body>
</html>
