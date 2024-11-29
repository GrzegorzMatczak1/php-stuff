<?php
$do_bazy = mysqli_connect('localhost', 'root', '', 'baza');
if (!$do_bazy) {
 exit("Błąd połączenia z serwerem MySQL.");
}
$nr_stolika = $_POST['nr_stolika'];
$data_rez = $_POST['data_rez'];
$liczba_osob = $_POST['liczba_osob'];
$telefon = $_POST['telefon'];
$dodaj = "INSERT INTO rezerwacje VALUES (NULL, '$nr_stolika', '$data_rez', '$liczba_osob',
'$telefon')";
$zapytanie = mysqli_query($do_bazy, $dodaj);
if (!$zapytanie === true) {
 echo "Nie można dodać rezerwacji do bazy!";
} else {
 echo "Dodano rezerwację do bazy";
}
mysqli_close($do_bazy);
?>