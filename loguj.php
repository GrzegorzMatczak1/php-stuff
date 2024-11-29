<?php

session_start();
if(isset($_SESSION["log"])) {
    header("location: strona.php");
    exit;
} elseif (isset($_POST["nazwa"]) && isset($_POST["haslo"])) {
    if($_POST["nazwa"] == "janek" && $_POST["haslo"] == "jan123") {
        $_SESSION["log"] = $_POST["nazwa"];
        header("location: strona.php");
        exit;
    } else {
        echo "Nieprawidłowe dane logowania<br>";
    }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Autoryzacja danych</title>
    <style>
        p.fo {
            font-weight: bold;
            font-size: light;
        }
        #log {
            font-weight: bold;
            font-size: light;
        }
    </style>
</head>
<body>
    <div>
        <form action="http://localhost/loguj.php" method="post">
            <p id="log">Logowanie</p>
            <p class="fo">Nazwa użytkownika:</p>
            <input type="text" name="nazwa" value="" size="25"><br>
            <p class="fo">Hasło:</p>
            <input type="password" name="haslo" value="" size="25"><br>
            <input type="submit" value="Zaloguj się">
        </form>
    </div>
</body>
</html>