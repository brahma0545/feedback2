<?php
include "header.php";
error_reporting(0);
?>
<html>
<head>
</head>
<body>
<?php
$servername = "localhost";
$username = "database";
$password = "database";
$database = "database";

$conn = mysqli_connect("$servername", "$username", "$password", "$database");
if (!$conn) {
    die("connection failed");
}
?>
<form method="post">
    <div class="section section-padding courses-detail">
        <div class="container">
            <div class="courses-detail-wrapper">
                <div class="row col-md-6">
                    <form name="carrer" action="email-form.php" method="post">
                    <div class="form-group">
                        <label>Name</label>
                        <div class="input-group">
                            <span class="input-group-addon">
                          <i class="fa fa fa-user"></i>
                             </span>
                            <input type="text" class="form-control" placeholder="Name" name="name" required></div>
                    </div>
                    <div class="form-group">
                        <label>Email Address</label>
                        <div class="input-group">
                            <span class="input-group-addon">
                          <i class="fa fa-envelope"></i>
                             </span>
                            <input type="text" class="form-control" placeholder="Email Address" name="email" required></div>
                    </div>
                    <div class="form-group">
                        <label>Contact Number</label>
                        <div class="input-group">
                            <span class="input-group-addon">
                          <i class="fa fa-mobile"></i>
                             </span>
                            <input type="text" class="form-control" placeholder="Contact Number" name="mobile" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>What are you currently doing?</label>
                        <select id="colorselector" class="form-control" name="selctname"required>
                            <option> Select</option>
                            <option value="Intermediate">Intermediate</option>
                            <option value="Be-BTech">B.E/B.Tech</option>
                            <option value="BSC-MSC-MCA">BSC|MSC|MCA</option>
                            <option value="Me-Mtech">M.E/M.Tech</option>
                            <option>PhD</option>
                            <option>Job</option>
                            <option>Other</option>
                        </select>
                        <div id="Intermediate" class="colors" style="display:none">

                            <select class="form-control" name="selectname1">
                                <option value="Iyear">I Year</option>
                                <option value="IIyear">II Year</option>
                            </select>

                        </div>
                        <div id="Be-BTech" class="colors" style="display:none">
                            <select class="form-control" name="selectname1">
                                <option value="I year">I Year</option>
                                <option value="II year">II Year</option>
                                <option value="III year">III Year</option>
                                <option value="IV year">IV Year</option>
                            </select>


                        </div>
                        <div id="BSC-MSC-MCA" class="colors" style="display:none">
                            <select class="form-control" name="selectname1">
                                <option value="Iyear">I Year</option>
                                <option value="IIyear">II Year</option>
                                <option value="IIIyear">III Year</option>

                            </select>

                        </div>
                        <div id="Me-Mtech" class="colors" style="display:none">
                            <select class="form-control" name="selectname1">
                                <option value="Iyear">I Year</option>
                                <option value="IIyear">II Year</option>

                            </select>

                        </div>
                        <script>
                            $(function () {
                                $('#colorselector').change(function () {
                                    $('.colors').hide();
                                    $('#' + $(this).val()).show();
                                });
                            });
                        </script>

                    </div>
                    <div class="form-group">
                        <label>Profile(s) you are interested in</label>
                        <p>(You can choose more than one profile from the specified list. Please select "Other" if
                            your
                            interested profile is not listed below.) </p>
                        <div class="mt-checkbox-list">
                            <label class="mt-checkbox">
                                <input type="checkbox" value="Java Developer" name="test[]">Java Developer
                                <span></span>
                            </label>
                            <label class="mt-checkbox">
                                <input type="checkbox" value="Python Developer" name="test[]">Python Developer
                                <span></span>
                            </label>
                            <label class="mt-checkbox">
                                <input type="checkbox"
                                       value="Full Stack developer (HTML5 & CSS, Bootstrap, JavaScript, AngularJS, Python, Django, MySQL, etc)"
                                       name="test[]">Full Stack developer (HTML5 & CSS, Bootstrap, JavaScript,
                                AngularJS, Python, Django, MySQL, etc)
                                <span></span>
                            </label>
                            <label class="mt-checkbox">
                                <input type="checkbox"
                                       value="Front-end developer (HTML5 & CSS, Bootstrap, JavaScript, AngularJS)"
                                       name="test[]">Front-end developer (HTML5 & CSS, Bootstrap, JavaScript,
                                AngularJS)
                                <span></span>
                            </label>
                            <label class="mt-checkbox">
                                <input type="checkbox" value="Back-end developer (Python, Django, MySQL, etc)"
                                       name="test[]">Back-end developer (Python, Django, MySQL, etc)
                                <span></span>
                            </label>
                            <label class="mt-checkbox">
                                <input type="checkbox"
                                       value="Interview preparation for product based companies (C language, Data Structures, Algorithms, Problem Solving, Coding)"
                                       name="test[]">Interview preparation for product based companies (C language,
                                Data Structures, Algorithms, Problem Solving, Coding)
                                <span></span>
                            </label>
                            <label class="mt-checkbox">
                                <input type="checkbox"
                                       value="Interview preparation for Service based companies (C, Java, DS, OS, CN, DBMS, Algorithms, Software Engg., Unix, Aptitude, Reasoning, English)"
                                       name="test[]">Interview preparation for Service based companies (C, Java, DS,
                                OS, CN, DBMS, Algorithms, Software Engg., Unix, Aptitude, Reasoning, English)
                                <span></span>
                            </label>
                            <label class="mt-checkbox">
                                <input type="checkbox" value="Hadoop and Bigdata" name="test[]">Hadoop and Bigdata
                                <span></span>
                            </label>
                            <label class="mt-checkbox">
                                <input type="checkbox" value="Data Science" name="test[]">Data Science
                                <span></span>
                            </label>

                            <label class="mt-checkbox">
                                <input type="checkbox" value="Other" name="test[]">Other
                                <span></span>
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Expected salary</label>
                        <div class="mt-radio-list">
                            <label class="mt-radio mt-radio-outline">
                                <input type="radio" value="Less than 3 LPA" name="test1[]">Less than 3 LPA
                                <span></span>
                            </label>
                            <label class="mt-radio mt-radio-outline">
                                <input type="radio" value="3 - 6 LPA" name="test1[]">3 - 6 LPA
                                <span></span>
                            </label>
                            <label class="mt-radio mt-radio-outline">
                                <input type="radio" value="6 - 10 LPA" name="test1[]">6 - 10 LPA
                                <span></span>
                            </label>
                            <label class="mt-radio mt-radio-outline">
                                <input type="radio" value="More than 10 LPA" name="test1[]">More than 10 LPA
                                <span></span>
                            </label>
                        </div>
                    </div>
                    </form>
                </div>

                <div class="row">
                    <div class="col-md-offset-3 col-md-9">
                        <button type="submit" class="btn btn-green" name="submit"><span>Submit</span></button>
                    </div>
                </div>

            </div>
        </div>
    </div>
</form>
</body>
</html>

<?php

$val = mysqli_query($conn, "select 1 from `clients`");

if ($val !== TRUE) {
    $sqltable = "CREATE TABLE clients (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, name VARCHAR(30) NOT NULL, monumber VARCHAR(30) NOT NULL, email VARCHAR(50), doing VARCHAR(150), pursuing VARCHAR(150), profile VARCHAR(1000), salary VARCHAR(50))";

    if ($conn->query($sqltable) === TRUE) {
        echo "Table Clients created successfully";
    }
}

if (isset($_POST['submit'])) {
    $name = $_POST['name'];
    $mobile = $_POST['mobile'];
    $email = $_POST['email'];
    $test = $_POST['test'];
    $profile = implode(" ", $test);
    $selectname = $_POST['selctname'];
    $selectname1 = $_POST['selectname1'];
    $test1 = $_POST['test1'];
    $salary = implode(" ", $test1);
    $sql1 = "INSERT INTO clients (name, monumber, email, doing, pursuing, profile, salary) VALUES ('$name', '$mobile', '$email','$selectname', '$selectname1 ','$profile', '$salary')";

    if (mysqli_query($conn, $sql1)) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql1 . "<br>" . $conn->error;
    }
}
mysqli_close($conn);
?>
<?php
include "footer.php";
?>
