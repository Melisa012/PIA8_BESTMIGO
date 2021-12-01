<?php
session_start();

?>

<!DOCTYPE html>
<html>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&family=Roboto:wght@100&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Palanquin+Dark&display=swap" rel="stylesheet">
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="../../css/estilo-pantallas.css">

<head>
	<title>BEST MIGO - Post-Test</title>
</head>

<body>

	<p class="titulohead">POST—TEST</p>
	<div class="encabezado">
		<img src="../../img/best-migo logo.png" class=logosup>
		<div class="barra-sup">
			<ul>
				<li><a href="inicio.php"><b>INICIO</b></a>
					<a href=""><b>PRE-TEST</b></a>
					<a href="frases_motivadoras.php"><b>FRASES MOTIVADORAS</b></a>
					<a href="cortometrajes.php"><b>CORTOMETRAJES</b></a>
					<a href="rutinas_diarias.php"><b>RUTINAS DIARIAS</b></a>
					<a href="test.php"><b>TEST</b></a>
					<a href="post-test.php"><b>POST-TEST</b></a></li>
			</ul>
		</div>
	</div>

		<div class="menu-centro-test">
			<form method="post" action="php/pre-conexion.php">
				
<label for="pregunta">¿Tiene dolores frecuentes de cabeza?</label><br>			
<select name="p1">
	<option value="1">SI</option>
	<option value="0">NO</option>
</select>
<br><br>

<label for="pregunta">2. ¿Te sientes nervioso tenso o aburrido?</label>
<select name="p2">
	<option value="1">SI</option>
	<option value="0">NO</option>
</select>
<br><br>

<label for="pregunta">3. ¿Se siente triste?</label>
<select name="p3">
	<option value="1">SI</option>
	<option value="0">NO</option>
</select>
<br><br>

<label for="pregunta">4. ¿Llora usted con mucha frecuencia?</label><br>
<select name="p4">
	<option value="1">SI</option>
	<option value="0">NO</option>
</select>
<br><br>

<label for="pregunta">5. ¿Es incapaz de desempeñar un papel útil en su vida ?</label><br>
<select name="p5">
	<option value="1">SI</option>
	<option value="0">NO</option>
</select>
<br><br>

<label for="pregunta">6. ¿Siente usted que es una persona util ?</label><br>
<select name="p6">
	<option value="1">SI</option>
	<option value="0">NO</option>
</select>
<br><br>

<!-- <label for="util_persona">¿Siente usted que es una persona util ?</label><br>

<label for="util_persona">si</label>
<input type="radio" name="util_persona" required=""><br>

<label for="util_persona">no</label>
<input type="radio" name="util_persona" required=""><br><br> -->

<label for="pregunta">7. ¿Consume alguna sustancia psicoactiva?</label><br>
<select name="p7">
	<option value="1">SI</option>
	<option value="0">NO</option>
</select>
<br><br>


<!-- <label for="sustancias">¿Consume alguna sustancia psicoactiva?</label><br>
<label for="sustancias">si</label>
<input type="radio" name="sustancias" required=""><br>

<label for="sustancias">no</label>
<input type="radio" name="sustancias" required=""><br><br> -->

<label for="pregunta">8. ¿Me siento conforme con mi fisico?</label><br>
<select name="p8">
	<option value="1">SI</option>
	<option value="0">NO</option>
</select>
<br><br>

<label for="pregunta">9. ¿Te cuesta mucho decir que no?</label><br>
<select name="p9">
	<option value="1">SI</option>
	<option value="0">NO</option>
</select>
<br><br>

<label for="pregunta">10. ¿Consideras que has logrado éxitos en tu vida?</label><br>
<select name="p10">
	<option value="1">SI</option>
	<option value="0">NO</option>
</select>
<br><br>

<label for="pregunta">11. ¿Crees que te gustaría tener otra forma de ser?</label><br>
<select name="p11">
	<option value="1">SI</option>
	<option value="0">NO</option>
</select>
<br><br>

<label for="pregunta">12. Si alguien te critica, ¿Cómo te sientes?</label><br>
<select name="p12">
	<option value="1">Entiendo que no puedo gustar a todo el mundo y por ello no me afecta</option>
	<option value="0">Dependiendo de quién venga si me puede afectar</option>
	<option value="0">Me afecta demasiado</option>
</select>
<br><br>

<label for="pregunta">13. ¿Te sueles quedar bloqueado cuando hablas con los demás,<br> por miedo a decir algo no correcto o adecuado?</label><br>
<select name="p13">
	<option value="1">Nunca, me da igual lo que puedan pensar los demás</option>
	<option value="0">En ocasiones</option>
	<option value="0">Prefiero no opinar</option>
</select>
<br><br>

<label for="pregunta">14. ¿Crees que la aplicación te sirvió en alg?</label><br>
<select name="p14">
	<option value="1">SI</option>
	<option value="0">NO</option>
</select>
<br><br>
				
				
				<br><br><br>

				<input type="submit"  value="Enviar" class="button">
			</form>

			<br><br>
		</div>
</body>
<footer>
	<b>BEST MIGO</b> — ¡QUIÉRETE, ES GRATIS!.
</footer>

</html>