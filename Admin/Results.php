<?php
$servername = "localhost";
$username = 'id18929953_sportpro';
$password = 'yB48PIb%g+PL75^b';
$dbname = "id18929953_sportpro_db";
// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
//echo "Connected successfully";

?>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../css/style.css">

</head>
<body>

<header>
<img src="img/vitsports.jpg" width="100px" height="80px">
<h1 class="liketext">VitSports
<a href ="index.html"> <input type="button" value="Logout" style="float:right;"></a></h1>
</header>
<div class="row">
<nav>
		<div class="menu-icon">
			
		</div>
		<ul>
			<li><a href="Add Events.html">Add Events</a></li>
			<li><a href="Edit Events.php">Edit Events</a></li>
			<li><a href="Reports.php">Results</a></li>
			<li><a href="#" style="color:red;">Results</a></li>
		
			
		</ul>
	</nav>
               
<div class="col-12">
<div style="width:100%;border-style:solid; border-radius:10px;text-align:center;border-color:#0000ff">
  <h1>Result</h1>                          
 <form action="result_update.php" method="post">
Event name:
<select name="ename" required class="smalltext">
<?php


$sql = "SELECT * FROM event where status='ongoing'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
 
    while($row = $result->fetch_assoc()) {
		
        echo '<option value="'.$row["event_name"].'">'.$row["event_name"].'</option>';
    }
} else {
    echo "0 results";
}

?>

</select>
<br><br>
  1st prize:                                                                       
<input type="text" name="1st" required class="bigtext"><br><br>
  2nd prize :  
<input type="text" name="2nd" required class="bigtext"><br><br>
  3rd prize :  
<input type="text" name="3rd" required class="bigtext"><br><br>
<input type="submit" value="Submit">
</form>


</div>

</div>


</div>

</body>
</html>