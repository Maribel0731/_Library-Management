<?php
$servername = "localhost";
$username = "root";     //server username
$password = "";          //server password 
$dbname = "websamples";  //database name

$link = mysqli_connect($servername, $username, $password, $dbname);
if (!$link) {
  die("Connection failed: " . mysqli_connect_error());
}
//echo "Connected successfully";
$del_id = $_GET['del_id'];
$sql = "DELETE FROM  userinfo  WHERE user_id = $del_id";

if (mysqli_query($link, $sql)) {
  echo '<script> alert("Record Deleted Successfully")</script>';
  header("location:index.php");
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($link);
}         

echo "$sql";
?>