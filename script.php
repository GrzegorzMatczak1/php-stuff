<?php
if(isset($_POST["zgoda"])) {
	echo "Wprowadzone dane:<br><br>";
	echo "Nazwisko ". trim($_POST["nazwisko"]). "<br><br>";
	echo "Imię: ". trim($_POST["imie"]). "<br><br>";
	echo "Zawód: ". trim($_POST["zawod"]). "<br><br>";
	echo "Adres e-mail: ". trim($_POST["email"]). "<br><br>";
	echo "Wykształcenie: ". trim($_POST["wyksztalcenie"]). "<br><br>";
	echo "Znajomość języków:<br>";
	$jezyki = $_POST["jezyki"];
	for($i = 0; $i < sizeof($jezyki); $i++) {
		echo "- " .trim($jezyki[$i]). "<br>";
	}
	
}
else {
	echo "Musisz zezwolić na przetwarzanie danych!";
}


?>

