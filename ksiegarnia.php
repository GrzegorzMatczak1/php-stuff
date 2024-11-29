<!DOCTYPE HTML>
<html>
<head>
<title>Odczyt danych z tabeli Klient</title>
<meta charset="UTF-8">
<style>

    tr, td, table {
        border: solid, 1px, black;
        text-align: center;
        padding: 2px;
    }

</style>
</head>
<body>
<?php
$do_bazy = mysqli_connect('localhost', 'root', '', 'ksiegarnia');
if (!$do_bazy) {
 echo "Błąd połączenia z serwerem MySQL.<br>";
 ?>
 </body>
 </html>
 <?php
 exit;
} else {
 $zapytanie = mysqli_query($do_bazy, 'SELECT * FROM Klient');
 if (!$zapytanie) {
 mysqli_close();
 echo "Błąd w zapytaniu<br>";
 ?>
 </body>
 </html>
 <?php
 exit;
 } else {
 ?>
 <table>
 <tr>
 <td>Id klienta</td>
 <td>Nazwisko</td>
 <td>Imię</td>
 <td>Kod pocztowy</td>
 <td>Miejscowość</td>
 <td>Ulica</td>
 <td>Nr domu</td>
 <td>PESEL</td>
 <td>Telefon</td>
 <td>Adres e-mail</td>
 </tr>
 <?php
 while ($wiersze = mysqli_fetch_row($zapytanie)) {
 echo "<tr>";
 echo "<td>$wiersze[0]</td>";
 echo "<td>$wiersze[1]</td>";
 echo "<td>$wiersze[2]</td>";
 echo "<td>$wiersze[3]</td>";
 echo "<td>$wiersze[4]</td>";
 echo "<td>$wiersze[5]</td>";
 echo "<td>$wiersze[6]</td>";
 echo "<td>$wiersze[7]</td>";
 echo "<td>$wiersze[8]</td>";
 echo "<td>$wiersze[9]</td>";
 echo "</tr>";
 }
 ?>
 </table>

 <h1> Rodzinka Kowalskich </h1>
 <?php
$do_bazy = mysqli_connect('localhost', 'root', '', 'ksiegarnia');
if (!$do_bazy) {
 exit("Błąd połączenia z serwerem MySQL.");
}
$zapytanie = mysqli_query($do_bazy, "SELECT * FROM Klient WHERE Nazwisko
= 'Kowalski'");
if (!$zapytanie === true) {
 mysqli_close();
 exit("Błąd w zapytaniu<br>");
}
while ($tab = mysqli_fetch_array($zapytanie)) {
 echo $tab['nazwisko'] . " " . $tab['imie'];
 echo "<br>";
}
?>

<h1>INSERT</h1>

<?php
$do_bazy = mysqli_connect('localhost', 'root', '', 'ksiegarnia');
if (!$do_bazy) {
 exit("Błąd połączenia z serwerem MySQL.");
}
/*$dodaj = mysqli_query($do_bazy, "INSERT INTO Klient VALUES(NULL, 'Lisek',
'Anna', '34-100', 'Wadowice', 'Lwowska', '11', '95031203267',
'936789453', 'ania@gmail.com')");
if (!$dodaj === true) {
 mysqli_close($do_bazy);
 exit("Błąd w zapytaniu<br>");
}*/
$ile = mysqli_affected_rows($do_bazy);
echo "Liczba rekordów dodanych do tabeli Klient wynosi: $ile<br>";
?>

 <?php
 mysqli_close($do_bazy);
 }
}
?>
</body>
</html>