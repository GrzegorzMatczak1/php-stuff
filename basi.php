<?php
/*$do_bazy = new mysqli('localhost', 'root', '');
if ($do_bazy->connect_error) {
 exit("Błąd połączenia z serwerem MySQL:");
}
$baza = "CREATE DATABASE szkola";
if ($do_bazy->query($baza) === true) {
 echo "Baza została utworzona";
} else {
 echo "Błąd! Nie można utworzyć bazy";
}
$do_bazy->close();*/
?>
<?php
$do_bazy = new mysqli('localhost', 'root', '');
if ($do_bazy->connect_error) {
 exit("Błąd połączenia z serwerem MySQL:");
}
$tab = "CREATE TABLE Uczen (nazwisko VARCHAR(30),
imie VARCHAR(30), email VARCHAR(40))";
if ($do_bazy->query($tab) === true) {
 echo "Tabela Uczen została utworzona";
} else {
 echo "Błąd! Nie można utworzyć tabeli Uczen";
}
$do_bazy->close();
?>
