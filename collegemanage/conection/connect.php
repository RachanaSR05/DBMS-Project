<?php
$conn = mysqli_connect("localhost","root", "") or die("No Connection");
mysqli_select_db($conn,"college") or die("No Database connected!");
?>