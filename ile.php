<?php
session_start();
if(!isset($_SESSION["ile"])) {
    $_SESSION["ile"] = 0;
} 

if ($_SESSION["ile"] == 10) {
    session_destroy();
    echo "<p>Usunięto sesję</p>";  
}
else {
    $_SESSION["ile"]++;
    echo "<p>Odwiedziłeś " . $_SESSION["ile"] . " razy nasze strony</p>";
}

?>