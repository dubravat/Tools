<?php
/**
 * User: Hans-Gert Gräbe
 * Date: 2016-04-20
 */

include_once("akteure.php");
include_once("adressen.php");
include_once("events.php");
include_once("sparten.php");

function pageHeader() {
  return '
<!DOCTYPE html>
<html lang="de">
  <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content="LD Leipziger Ecken Standalone Info Page"/>
    <meta name="author" content="Leipzig Data Project"/>

    <title>Leipziger Ecken RDF Infoseite</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    
  </head>
<!-- end header -->
  <body>

';
}

function generalContent() {
  return '
<div class="container">
<div style="text-align:left"><a href=".">Back</a></div>

  <h1 align="center">Leipziger Ecken RDF Infoseite</h1>

<p> Mit dieser kleinen Anwendung wird gezeigt, wie sich aus der SQL-basierten
Stadtteilplattform <a href="http://leipziger-ecken.de/">leipziger-ecken.de</a>
verschiedene Informationen im RDF-Format extrahieren lassen.  </p>

<p> Details dazu <a href="http://leipzig-data.de/gelbe-seiten/">auf den Seiten
des Leipzig Data Projekts</a> oder in der <a href="README.md">README.md</a>.
</p>

</div> 
';
}

function applicationList() {
  return '
<div class="container">
<ul>
<li> <a href="./getdata.php?show=akteure&embedded=true">Die Akteure</a></li>
<li> <a href="./getdata.php?show=adressen&embedded=true">Die Adressen</a></li>
<li> <a href="./getdata.php?show=events&embedded=true">Die Events</a></li>
<li> <a href="./getdata.php?show=sparten&embedded=true">Die Sparten</a></li>
</ul>
</div> 
';
}

function pageFooter() {
  return '

    <!-- jQuery (necessary for Bootstrap JavaScript plugins) -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    
  </body>
</html>';
}

echo pageHeader().generalContent().applicationList().pageFooter();
