<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Login  Form</title>
        <style type="text/css">
            .centered{
                position: absolute;
                top:0;
                bottom: 0;
                left: 0;
                right: 0;
                margin: auto;
                width: 400px;
                height: 500px;
                background-color:#15a0db;
            }
            #logo{
                width:100px;
                height:100px;
            }

            .card-container.card {
                width:285px;
                padding: 40px 40px;
                background: url("https://static.usc.edu.ph/img/bg-white-lock.png") repeat 
            }

            .btn {
                font-weight: 700;
                height: 36px;
                -moz-user-select: none;
                -webkit-user-select: none;
                user-select: none;
                cursor: default;
            }

            /*
             * Card component
             */
            .card {
                background-color: #F7F7F7;
                margin: 0 auto 25px;
                margin-top: 0px;
                /* shadows and rounded borders */
                -moz-border-radius: 2px;
                -webkit-border-radius: 2px;
                border-radius: 10px;
                -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            }

            .profile-img-card {
                width: 96px;
                height: 95px;
                margin: 0 auto 10px;
                display: block;
                -moz-border-radius: 50%;
                -webkit-border-radius: 50%;
                border-radius: 50%;
            }

            /*
             * Form styles
             */
            .profile-name-card {
                font-size: 16px;
                font-weight: bold;
                text-align: center;
                margin: 10px 0 0;
                min-height: 1em;
            }.container-fluid,body,html{
                background-color:#b6c7d6;
            }

            .reauth-email {
                display: block;
                color: #404040;
                line-height: 2;
                margin-bottom: 10px;
                font-size: 14px;
                text-align: center;
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
                -moz-box-sizing: border-box;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
            }

            .form-signin #inputEmail,
            .form-signin #inputPassword {
                direction: ltr;
                height: 44px;
                font-size: 16px;
            }

            .form-signin input[type=email],
            .form-signin input[type=password],
            .form-signin input[type=text],
            .form-signin button {
                width: 100%;
                display: block;
                margin-bottom: 10px;
                z-index: 1;
                position: relative;
                -moz-box-sizing: border-box;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
            }

            .form-signin .form-control:focus {
                border-color: rgb(104, 145, 162);
                outline: 0;
                -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
                box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
            }
            .btn.btn-signin {
                /*background-color: #4d90fe; */
                background-color: rgb(104, 145, 162);
                /* background-color: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));*/
                padding: 0px;
                font-weight: 700;
                font-size: 14px;
                height: 36px;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                border: none;
                -o-transition: all 0.218s;
                -moz-transition: all 0.218s;
                -webkit-transition: all 0.218s;
                transition: all 0.218s;
            }
            .btn.btn-signin:hover,
            .btn.btn-signin:active,
            .btn.btn-signin:focus {
                background-color: rgb(12, 97, 33);
            }

            .forgot-password {
                color: rgb(104, 145, 162);
            }

            .forgot-password:hover,
            .forgot-password:active,
            .forgot-password:focus{
                color: rgb(12, 97, 33);
            }
        </style>
    </head>
    <html>
        <body>
            <div class="container-fluid">
                <div class="middle-box text-center loginscreen  aniindexmated fadeInDown" style="margin-top:100px;">
                    <div>
                        <div > 
                            <img width="60" height="60" title="UNIVERSITY OF SAN CARLOS" src="https://static.usc.edu.ph/img/logo200.png"/>
                            <img width="220" height="40" title="UNIVERSITY OF SAN CARLOS" src="https://static.usc.edu.ph/Content/images/uscText.png"/>
                            <h3 >Bus Operator + Students/Staff</h3>                        
                        </div>
                        <h4>Welcome to USC Bus Tracker </h4>
                        <br>

                        <div class="container">
                            <div  class="card card-container">
                                <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
                                <img id="profile-img" class="profile-img-card" src="https://lh3.googleusercontent.com/-wtIwX1FiVUs/AAAAAAAAAAI/AAAAAAAAAzY/g8k2zSrTCnM/s120-p-no/photo.jpg" />
                                <p id="profile-name" class="profile-name-card"></p>
                                <form  action="myHome" method="POST" class="form-signin">
                                    <span id="reauth-email" class="reauth-email"></span>
                                    <input type="text" name="inputEmail" class="form-control" placeholder="Email address" required>
                                    <input type="password" name="inputpas" class="form-control" placeholder="Password" required>
                                    <div id="remember" class="checkbox">
                                        <div style="color:red">${error}</div>
                                        <div style="color:blue">${dataerror}</div>
                                        <label>
                                            <input type="checkbox" value="remember-me"> Remember me
                                        </label>
                                    </div>
                                    <button  class="submit btn-lg btn-success btn-block btn-signin" type="submit">Sign in</button>
                                </form><!-- /form -->
                                <a href="#" class="forgot-password">
                                    Forgot the password?
                                </a>
                            </div><!-- /card-container -->
                        </div><!-- /container -->        
                    </div>
                </div>
            </div>
        </body>        
    </html>