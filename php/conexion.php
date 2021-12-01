<?php

try {
$conexion = new PDO('mysql:host=localhost;dbname=pia8',"root","Pascual2021*");
} catch (PDOException $e) {
	echo "Error".$e->getMessage();
}

?>