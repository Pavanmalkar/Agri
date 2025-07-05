<!-- register.jsp -->
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Register</title>
   <link rel="stylesheet" href="sign-up.css">
</head>
<body>
   <div class="cont">
      <div class="main-container">
         <div class="signup-box">
            <h2>Registration Form</h2> <br><br><hr>
            <form action="rgback_end.jsp" method="post">
               <label>
                  <span>First Name</span>
                  <input type="text" name="fname" required>
               </label>
               <label>
                  <span>Last Name</span>
                  <input type="text" name="lname" required>
               </label>
               <label>
                  <span>Email</span>
                  <input type="email" name="mail" required>
               </label>
               <label>
                  <span>Password</span>
                  <input type="password" name="pass1" required>
               </label>
               <label>
                  <span>Confirm Password</span>
                  <input type="password" name="pass2" required>
               </label>
               <button class="submit" type="submit">Create Account</button>
            </form>
            <hr>
            <a href="sign-in.jsp">Already have an account? Sign in</a>
         </div>
         <div class="sub-cont">
            <div class="img">
               <h6>"Without agriculture it is not possible to have a city, stock market, banks, university, church or army."</h6>
               <img src="img/main/agrilogo.jpg" height=200px width=260px>
            </div>
         </div>
      </div>
   </div>
</body>
</html>