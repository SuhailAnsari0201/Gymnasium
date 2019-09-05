<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css1/style.css">
</head>

<body style="background-color:white">

    <div class="main">
        
            <div class="signup-content">
            <a href="index.jsp"><img  width="80px" height="80px" src="images/icons/back.svg" alt="back"></a>
                <div class="signup-img">
                    <img src="images/registration.jpg" alt="">
                </div>
                <div class="signup-form">
                    <form method="post" action="CustomerController" enctype="multipart/form-data">
                    <input type="hidden" name="action" value="customerRegistration"/>
                        <h2>Customer registration form</h2>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="first_name">First Name :</label>
                                <input type="text" name="first_name" id="first_name" required/>
                            </div>
                            <div class="form-group">
                                <label for="last_name">Last Name :</label>
                                <input type="text" name="last_name" id="last_name" required/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="address">Address :</label>
                            <input type="text" name="address" id="address" required/>
                        </div>
                        <div class="form-radio">
                            <label for="gender" class="radio-label">Gender :</label>
                            <div class="form-radio-item">
                                <input type="radio" name="gender" value="male" id="male" checked>
                                <label for="male">Male</label>
                                <span class="check"></span>
                            </div>
                            <div class="form-radio-item">
                                <input type="radio" name="gender" value="female" id="female">
                                <label for="female">Female</label>
                                <span class="check"></span>
                            </div>
                        </div>
                      
                        <div class="form-group">
                            <label for="birth_date">DOB :</label>
                            <input type="date" name="dob" id="birth_date">
                        </div>
                        
                        <div class="form-group">
                            <label for="course">Package :</label>
                            <div class="form-select">
                                <select name="package" id="course">
                                    <option value=""></option>
                                    <option value="pack1">pack1</option>
                                    <option value="pack2">pack2</option>
                                    <option value="pack3">pack3</option>
                                    <option value="pack4">pack4</option>
                                </select>
                                <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email">Email ID :</label>
                            <input type="email" name="email" id="email" />
                        </div>
                         <div class="form-group">
                            <label for="mobile">Mobile:</label>
                            <input type="text" name="mobile" id="mobile" />
                        </div>
                          <div class="form-row">
                            <div class="form-group">
                                <label for="password">Password :</label>
                                <input type="password" name="password" id="password" required/>
                            </div>
                            <div class="form-group">
                                <label for="cpassword">Confirm Password :</label>
                                <input type="password" name="cpassword" id="cpassword" required/>
                            </div>
                        </div>
                        <!-- <div class="form-group">
                        	<label for="cpassword">Upload Photo:</label>
                        	<input type="file" name="image" id="fileToUpload">
                        </div> -->
                        <div class="form-submit">
                            <input type="submit" value="Reset All" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Submit Form" class="submit" name="submit" id="submit" />
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="js/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>