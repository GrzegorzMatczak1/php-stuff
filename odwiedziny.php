<?php

if(!isset($_COOKIE["dane"]) && !isset($_COOKIE["odwiedz"])) {
    setcookie("dane", $_POST["nazw"], time()+60*60*24*365);
    setcookie("odwiedz", 1, time()+60*60*24*365);
}
else {
    $odw = intval($_COOKIE["odwiedz"] + 1);
    setcookie("odwiedz", $odw, time()+60*60*24*365);
    echo "<p>Witamy po raz kolejny! " . $_COOKIE["dane"] . "</p><br>Odwiedziłeś tę stronę: " . $_COOKIE["odwiedz"] . " razy";
}    

?>


