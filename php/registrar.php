<?php
session_start();

$documento_identidad = $_POST['documento_identidad'];
$name = $_POST['nombre'];
$lastname = $_POST['apellido'];
$user = $_POST['usuario'];
$email = $_POST['correo'];
$pwd = $_POST['password'];


print_r($_POST);

try {
	include "conexion.php";


	$sql="INSERT INTO crear_cuenta(Id_Usuario, documento_identidad, Nombre, Apellido, Usuario, Correo, Password) VALUES (NULL, :documento_identidad, :nombre, :apellido, :usuario, :correo, :pass)";
	

	$consulta = $conexion->prepare($sql);


	$consulta -> execute(array(
		':documento_identidad' => $documento_identidad,
		':nombre' => $name,
		':apellido' => $lastname,
		':usuario' => $user,
		':correo' => $email,
		':pass' => $pwd
 		));

	
	header("location:../index.html");
}
catch(Exception $e){
	echo 'Error conectando a la base de datos: '. $e->getMessage();
}
?>