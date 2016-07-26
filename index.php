<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>ApplyNow</title>
		<meta name="generator" content="ApplyNow" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="css/styles.css" rel="stylesheet">
	</head>
	<body>
<!-- Begin Top Nav Bar -->
<?php include 'php/top_nav.php';?>

<!-- Begin Body -->
<div class="container">
	<div class="row">
  	<div class="col-md-3" id="leftCol">  	
  		<div class="well">
    	   <!-- Print out refine side search column -->
         <?php include 'php/refine.php';?>
      </div>
    </div>  
    <div class="col-md-9">
      <!-- Print out results of search -->
      <?php include 'php/results.php';?>   	
    </div> 
  </div>
</div>



	<!-- script references -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/scripts.js"></script>
	</body>
</html>