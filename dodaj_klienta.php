<?php
$do_bazy = mysqli_connect('localhost', 'root', '', 'ksiegarnia');
if (!$do_bazy) {
 exit("Błąd połączenia z serwerem MySQL.");
}
$nazwisko = $_POST['nazw'];
$imie = $_POST['im'];
$kod = $_POST['kod'];
$miasto = $_POST['mia'];
$ulica = $_POST['ul'];
$nr = $_POST['nr'];
$pesel = $_POST['pe'];
$tel = $_POST['tel'];
$mail = $_POST['adr'];
$dodaj = "INSERT INTO Klient VALUES (NULL, '$nazwisko', '$imie', '$kod',
'$miasto', '$ulica', '$nr', '$pesel', '$tel', '$mail')";
$zapytanie = mysqli_query($do_bazy, $dodaj);
if (!$zapytanie === true) {
 echo "Nowy klient nie został dodany do bazy!";
} else {
 echo "Klient " . $nazwisko . " " . $imie . " został dodany do bazy.";
}
mysqli_close($do_bazy);
?>