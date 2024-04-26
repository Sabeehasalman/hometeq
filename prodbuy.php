<?php
include ("db.php");
$pagename="a smart buy for a smart home"; //create and populate variable called $pagename
$pagename = strtoupper($pagename);
echo "<link rel=stylesheet type=text/css href=mystylesheet.css>";
echo "<title>".$pagename."</title>";
echo "<body>";
include ("headfile.html");
echo "<h4>".$pagename."</h4>";

$prodid=$_GET['u_prod_id'];
$SQL="SELECT prodId, prodName, prodPicNameSmall, prodPicNameLarge, prodDescripShort, prodDescripLong, prodPrice, prodQuantity from Product WHERE prodId ='".$prodid."'";



$exeSQL =mysqli_query($datab, $SQL) or die (mysqli_error($datab));

if(mysqli_num_rows($exeSQL)>0){
	while($row = mysqli_fetch_assoc($exeSQL)){
		echo "id: " . $row["prodId"]."<br>". "Name: " . $row["prodName"]. "<br> " . $row["prodPicNameLarge"]. "<br>";
	
echo "<p> Selected product Id:" .$prodid;

echo "<p>Number to be purchased: ";
//create form made of one text field and one button for user to enter quantity
//the value entered in the form will be posted to the basket.php to be processed
echo "<form action=basket.php method=post>";
echo "<select name='p_quantity'>";
for($i =0; $i<= $row['prodQuantity']; $i++){
echo "<option value=".$i.">".$i."</option>";
}
echo "</select>";
echo "<input type=submit name='submitbtn' value='ADD TO BASKET' id='submitbtn'>";
//pass the product id to the next page basket.php as a hidden value
echo "<input type=hidden name=h_prodid value=".$prodid.">";
echo "</form>";
echo "</p>";

	}
}

/*
$arrayp = mysqli_fetch_array($exeSQL);
echo "<p>".$arrayp['prodName']."</p>";
*/

	
//product id, the name, the large image, the long description, the price and the quantity available in stock

include("footfile.html");

?>