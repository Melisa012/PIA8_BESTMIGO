<?php
session_start();

$user = $_POST['username'];
$pwd = $_POST['password'];



try {
	
	include "conexion.php";
	$sql = "SELECT * FROM crear_cuenta WHERE Correo =:usuario OR Usuario=:usuario AND Password = :passwd";
   

	$consulta = $conexion->prepare($sql);

	
	$consulta -> execute(array(
		':usuario' => $user,
		':passwd' => $pwd
		));
	$usuario = $consulta -> fetch(PDO::FETCH_OBJ);
     
	$cuenta = $consulta->rowCount();  
                if($cuenta > 0)  
                {    
                	if($usuario->Cargo == "admin")   {                               
                     header("location:admin/");  }
                     else{
                     	header("location:../php/pantallas/inicio.php");  
                     }
                }  
                else  
                {  
                      header("location:pantallas/inicio.php"); 
                }  
	

}
catch(Exception $e){
	echo 'Error conectando a la base de datos: '. $e->getMessage();
}
?>