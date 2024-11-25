<?php
include ('php/connection.php');
include ('php/script.php');

if(isset($POST_['signUp'])){

//personal infos
  $FName = $_POST['FName'];
  $MName = $_POST['MName'];
  $LName = $_POST['LName'];
  $Suffix = $_POST['suffix'] ?? "";
  $dateOfBirth = $_POST['dateOfBirth'];
  $sex = $_POST['sex'];
  $id = $_POST['emplo-stud-id'];
  $designation = "Student";

//infos

}else{
  ?><header>
    <?php
  echo "<script>
        swal({
        title: 'Failed to Sign Up !',
        icon: 'error',
        button: true,
      }).then(() => {
                window.history.back();
            });
        </script>";
        ?>
        </header>
  <?php
}
?>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/login.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="images/urbanfarminglogo.ico">
</head>
<body>
<div class="container">
  <div id="loginForm">
    <center>
  <h1 class="header1">Hello, Again</h1>
  <p>We're Happy to have you Back...</p>
    </center>
    <br>
<div class="signIn1">
    <input type="text" placeholder="Email Address" name="email">
</div>
  <div class="signIn1">
    <input type="password" placeholder="Password" name="password">
  </div>

    <div class="remember">
      <input type="checkbox" id="remember" name="remember">
      <label for="remember">Remember me</label>
    </div>
    <button type="submit" class="button1" name="signIn">Sign In</button>
  </div>

  <div id="registrationForm" class="form-container1" style="display: none;">
  <center><h1 class="header1">Sign Up Now</h1>
  <p>We're Happy to have you with Us.</p></center>
<br>
<div name = "container-login">
                <h2>Personal Information</h2>
                <div name = "container-profile">
                <input class="placehoder-format" type = "text" placeholder = "First Name" name = "FName" id = "FName" maxlength="60" required>
                <input class="placehoder-format" type = "text" placeholder = "Middle Name" name = "MName" id = "MName" maxlength="60" required>
                <input class="placehoder-format" type = "text" placeholder = "Last Name" name = "LName" id = "LName" maxlength="60" required>
                <select type = "dropdown" name = "suffix" class="suffix">
                    <option value="" disabled selected hidden>Suffix</option>
                    <option>Jr.</option>
                    <option>II</option>
                    <option>III</option>
                    <option>IV</option>
                    <option>V</option>
                    <!-- you can more suffix -->
                </select>
            </div>
            <div name = "container-profile">
                <div name = "container-dateOfBirth" >
                    <input type="text" placeholder="Birth Date" onfocus="(this.type='date')" onblur="(this.type='text')" class="placehoder-format" id = "dateOfBirth" name = "dateOfBirth" required>
                    <select type = "dropdown" class="sex" name = "sex" required>
                    <option value="" disabled selected hidden>sex</option>
                    <option>Male</option>
                    <option>Female</option>
                </select>
                <input class="placehoder-format" type = "text" placeholder = "Stundent ID" name = "emplo-stud-id" id = "emplo-stud-id" maxlength="60" required>
                </div>
                
                <h2>Contact Information</h2>
                <input class="placehoder-format" type = "text" placeholder= "Contact Number" name="contact" id = "contact" required>
                <input class="placehoder-format" type = "email"name ="email" placeholder= "Email Address" required>
            </div>
        </div>


            <div name = "account-profile">
                <h2>Account Profile</h2>
                <input class="placehoder-format" type = "text"name ="username" placeholder= "User Name" required>
                <input class="placehoder-format" type = "password" name="password" placeholder= "password" id="password1" required>
                <input class="placehoder-format" type = "password" name="password1" placeholder= "Confirm Password" id="password2" required>
                <button type="button" id="togglePassword" class="toggle-password"><span class = "button-span"></span>
                    <svg class="icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                        <circle cx="12" cy="12" r="3"></circle>
                    </svg>
                </button>
            </div>
            <br>
    <button type="submit" name="signUp">Register</button>
  </div>

  <div class="login-register">
    <button type="button" class="button-log login-button">Login</button>
    <button type="button" class="button-reg">Register</button>
  </div>
</div>
</body>
</html>