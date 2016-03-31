<%-- 
    Document   : index3
    Created on : 21 Feb, 2016, 1:50:09 AM
    Author     : 1305366
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="style.css"> <!-- Gem style -->
	<script src="js/modernizr.js"></script> <!-- Modernizr -->
        <script src="js/angular.min.js"></script>
	<title>Log In &amp; Sign Up Form</title>
</head>
<body>
	<header role="banner">
		<div id="cd-logo"><a href="#0"><img src="img/cd-logo.svg" alt="Logo"></a></div>

		<nav class="main-nav">
			<ul>
				<!-- inser more links here -->
				<li><a class="cd-signin" href="#0">Sign in</a></li>
				<li><a class="cd-signup" href="#0">Sign up</a></li>
			</ul>
		</nav>
	</header>

	<div class="cd-user-modal"> <!-- this is the entire modal form, including the background -->
		<div class="cd-user-modal-container"> <!-- this is the container wrapper -->
			<ul class="cd-switcher">
				<li><a href="#0">Sign in</a></li>
				<li><a href="#0">New account</a></li>
			</ul>

			<div id="cd-login"> <!-- log in form -->
                            <form class="cd-form" action=login_check.do method="post">
					<p class="fieldset">
						<label class="image-replace cd-email" for="signin-email">Roll Number</label>
						<input class="full-width has-padding has-border" id="signin-email" type= number   name=loginRollNumber  required placeholder="User Id">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signin-password">Password</label>
						<input class="full-width has-padding has-border" id="signin-password" type="password" name=loginPassword  required placeholder="Password">
						<a href="#0" class="hide-password">Show</a>
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="remember-me" checked>
						<label for="remember-me">Remember me</label>
					</p>

					<p class="fieldset">
						
                                                
                                                <button class="full-width" style="width:100%;color:#fff;border:none;font-weigth:bold;background: #2f889a;cursor:pointer;margin:0;border-radius: 0.25em;padding: 16px 16px;text-align: center;">LOGIN</button>
					</p>
				</form>
				
				<p class="cd-form-bottom-message"><a href="#0">Forgot your password?</a></p>
				<!-- <a href="#0" class="cd-close-form">Close</a> -->
			</div> <!-- cd-login -->

			<div id="cd-signup"> <!-- sign up form -->
                            <form class="cd-form" action="saveJsp.jsp" method="post">
					<p class="fieldset">
						
						<input class="full-width has-padding has-border" id="signup-username" type="text" name="userName" placeholder="Name">
                                                
                                                <span  id="abx">Error message here!</span>
                                                <script>
                                                    var userName=document.getElementById(signup-username);
                                                    var n=userName.length;
                                                    if(n<3){
                                                        document.getElementById("abx").style.color = "blue";
                                                    }
                                                    </script>
                                               
					</p>
                                        
                                        <p class="fieldset">
                                            <input class="full-width has-padding has-border" type="number"  name="userRollNumber" placeholder="Roll Number"/>
                                            <span class="cd-error-message">Error message here!</span>
                                        </p>

					
                                        <p class="fieldset">
                                            <input  class="full-width has-padding has-border" type="text" placeholder="Enter your age"><br>
                                        </p>
                                        
                                        <p class="fieldset">
                                            <input class="full-width has-padding has-border" type="text"  name="userBranch" placeholder="Branch"/> 
                                        </p>
                                        
                                        <p class="fieldset">
                                            <input class="full-width has-padding has-border" type="text"  name="userEmail" placeholder="Email Id"/>
                                        </p>
                                        
                                        <p class="fieldset">
                                            <input class="full-width has-padding has-border" type="text"  name="userContact" placeholder="Contact Number"/>
                                        </p>
                                        
                                        <p class="fieldset">
                                              <input type="radio" name="userSex" value="1" id="m"> Male <input type="radio" name="userSex" value="2" id="f"> Female
                                        </p>

					<p class="fieldset">
						
						<input class="full-width has-padding has-border" name="userPass" id="signup-password" type="password"  placeholder="Password">
						<a href="#0" class="hide-password">Show</a>
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="accept-terms">
						<label for="accept-terms">I agree to the <a href="#0">Terms</a></label>
					</p>

					<p class="fieldset">
						
                                            <button class="full-width has-padding" style="width:100%;color:#fff;border:none;font-weigth:bold;background: #2f889a;cursor:pointer;margin:0;border-radius: 0.25em;padding: 16px 16px;text-align: center;"><b>Create account</b></button>
					</p>
				</form>

				<!-- <a href="#0" class="cd-close-form">Close</a> -->
			</div> <!-- cd-signup -->

			<div id="cd-reset-password"> <!-- reset password form -->
				<p class="cd-form-message">Lost your password? Please enter your email address. You will receive a link to create a new password.</p>

				<form class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-email" for="reset-email">E-mail</label>
						<input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="Reset password">
					</p>
				</form>

				<p class="cd-form-bottom-message"><a href="#0">Back to log-in</a></p>
			</div> <!-- cd-reset-password -->
			<a href="#0" class="cd-close-form">Close</a>
		</div> <!-- cd-user-modal-container -->
	</div> <!-- cd-user-modal -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/main.js"></script> <!-- Gem jQuery -->

<div>
    <img src="health-is-wealth2.jpg" >
    
</div>


<div class="line fk-footer-policy">
    <div class="unit tpadding5">
        <span><span class="policies-title boldtext">Policies:</span> <a href="/s/terms">Terms of use</a> | <a href="/s/paymentsecurity">Security</a> | <a href="/s/privacypolicy">Privacy</a> | <a href="https://seller.flipkart.com/fiv">Infringement</a></span>
        <span class="fk-footet-cr">© 2016-2017 <span>
                
</span></span>
      

<a href="https://www.facebook.com/" target="_blank" align="left"><img src="http://www.niftybuttons.com/bottlecap/facebook.png"></a><a href="https://www.youtube.com/" target="_blank" align="left"><img src="http://www.niftybuttons.com/bottlecap/youtube.png"></a>

    
 

    </div>
    
    
</div>


</body>
</html>