<!DOCTYPE html>
<html>

<head>
    <title>Sign in and Sign up</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="sign-in.css">
</head>

<body>
    <div class="cont">
        <div class="form sign-in">
            <h2>Sign In</h2>
            <form action="signin_backend.jsp" method="post">
            <label>
            
                <span>Email Address</span>
                <input type="email" name="email" autocomplete="off" required>
            </label>
            <label>
                <span>Password</span>
                <input type="password" name="password"  autocomplete="off" required>
              
            </label>
            <a href="home.jsp"> <button class="submit" type="submit">Sign In</button></a>
            
           
            <p class="forgot-pass">Forgot Password ?</p>
        </div>
  </form>
        <div class="sub-cont">
            <div class="img">
                <div class="img-text m-up">
                    <h2>New here?</h2>
                    <p>Sign up and discover great amount of new opportunities!</p> <br><br><br>
                    <a href="register.jsp"><button class="new">sign-up</button></a>
                </div>
            </div>
        </div>
</body>

</html>