<?php
	session_start();
	require("conection/connect.php");
	$tag="";
	if (isset($_GET['tag']))
	$tag=$_GET['tag'];
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Welcome to College Management system</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="jquery-1.11.0.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-theme.css"/>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-theme.min.css"/>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="css/home.css" />
</head>

<body>
    
    <div class="logout_btn">
        <a href="index.php" class="btn btn-primary btn-large">Logout <i class="icon-white icon-check"></i></a>
    </div>
    
    <div class="img_home_pos">
        <a href="everyone.php"><img src="images/img21.jpg" height="90" alt="" /></a><span class="header_pos"></span>
    </div><br>
                        
                        <div class="dropdownmenu_container">
                            <div class="btn-group">
  					<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>
  					  Students <span class="caret"></span> 					
  					</button>
  				<ul class="dropdown-menu" role="menu">
  				  <li><a href="everyone.php?tag=student_entry">Students Entry</a></li>
  				  <li><a href="everyone.php?tag=view_students">View Students</a></li>
  				</ul>
				</div>
				
				<!--second button-->
				<div class="btn-group">
  					<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>
  					  Teachers <span class="caret"></span> 					
  					</button>
  				<ul class="dropdown-menu" role="menu">
  				  <li><a href="everyone.php?tag=teachers_entry">Teachers Entry</a></li>
  				  <li><a href="everyone.php?tag=view_teachers">View Teachers</a></li>
  				</ul>
				</div>
				
				<!--third button-->
				<div class="btn-group">
  					<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-hdd"></span>
  					  Faculties <span class="caret"></span>
  					</button>
  				<ul class="dropdown-menu" role="menu">
  				  <li><a href="everyone.php?tag=faculties_entry">Faculties Entry</a></li>
  				  <li><a href="everyone.php?tag=view_faculties">View Faculties</a></li>
  				</ul>
				</div>
				
				<!--forth button-->
				<div class="btn-group">
  					<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-th-list"></span>
  					  Subjects <span class="caret"></span>
  					</button>
  				<ul class="dropdown-menu" role="menu">
  				  <li><a href="everyone.php?tag=subject_entry">Subjects Entry</a></li>
  				  <li><a href="everyone.php?tag=view_subjects">View Subjects</a></li>
  				</ul>
				</div>
				
				<!--fifth button-->
				<div class="btn-group">
  					<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-star-empty"></span>
  					  Score <span class="caret"></span>
  					</button>
  				<ul class="dropdown-menu" role="menu">
  				  <li><a href="everyone.php?tag=score_entry">Score Entry</a></li>
  				  <li><a href="everyone.php?tag=view_scores">View Score</a></li>
  				</ul>
				</div>
                        </div>
		
		<div class="container_middle">		
			
			<div class="container_show_post">
				<?php
   						if($tag=="home" or $tag=="")
							include("home.php");
                        elseif($tag=="student_entry")
                            include("Students_Entry.php");
                        elseif($tag=="teachers_entry")
                            include("Teachers_Entry.php");
                        elseif($tag=="score_entry")
                            include("Score_Entry.php");	
                        elseif($tag=="subject_entry")
                            include("Subject_Entry.php");
                        elseif($tag=="faculties_entry")
                            include("Faculties_Entry.php");
                        elseif($tag=="view_students")
                            include("View_Students.php");
						elseif($tag=="view_teachers")
							include("View_Teachers.php");
						elseif($tag=="view_subjects")
							include("View_Subjects.php");
						elseif($tag=="view_scores")
							include("View_Scores.php");
						elseif($tag=="view_faculties")
							include("View_Faculties.php");
						elseif($tag=="test_score")
							include("test_Scores.php");			
                        ?>
                    </div>
		</div>                
	</div>
        
        <div class="bottom_pos">
               </div>
</body>
</html>