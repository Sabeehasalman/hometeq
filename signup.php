<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h1>Sign up</h1>
<h2>This is header</h2>
<?php
echo "this is PHP logic for interpretation embded in html web page";
?>
<hr/>
<?php
echo "this is the second section of the php";
echo "<hr />";
$marks = 90;
if ($marks > 75) {
?>
	<div id ="true_sec">
	<?php echo "<h1 style= 'color: green'>$marks </h1>"; ?>
	<h1 style="color: red">This is the true section</h1>
	</div>
<br />
<?php } else{  ?>
<div id="false_sec">
<?php echo "<h1 style ='color:red'> $marks </h1>";?>
<h1>This is the false section</h1>
</div>
<?php 
} ?>
</body>
</html>
