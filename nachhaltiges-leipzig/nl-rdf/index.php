<?php
/**
 * User: Hans-Gert Gräbe
 * Date: 2017-10-28
 */

include_once("actions.php");
include_once("adressen.php");
include_once("akteure.php");
include_once("events.php");
include_once("projects.php");
include_once("services.php");
include_once("stores.php");

function pageHeader() {
  return '
<!DOCTYPE html>
<html lang="de">
  <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content="LD Nachhaltiges Leipzig Standalone Info Page"/>
    <meta name="author" content="Leipzig Data Project"/>

    <title>Nachhaltiges Leipzig RDF Infoseite</title>
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

  <h1 align="center">Nachhaltiges Leipzig RDF Infoseite</h1>

<p> Mit dieser kleinen Anwendung wird gezeigt, wie sich aus der SQL-basierten
Plattform <a href="https://daten.nachhaltiges-leipzig.de/"
>daten.nachhaltiges-leipzig.de</a> verschiedene Informationen im RDF-Format
extrahieren lassen.  </p>

<p> Zur Installation muss eine Datenbank mit einem Dump der Daten der Plattform
nachhaltiges-leipzig.de angebunden und das Projekt mit \'composer update\'
(Installation der RDF-Bibliothek EasyRDF &ndash; aktuell nicht in Verwendung)
ausgerollt werden.  Details dazu in der Datei README.md.</p>

</div> 
';
}

function applicationList() {
  return '
<div class="container">
<ul>
<li> <a href="./getdata.php?show=adressen&embedded=true">Die Adressen</a></li>
<li> <a href="./getdata.php?show=akteure&embedded=true">Die Akteure</a></li>
<li> <a href="./getdata.php?show=aktionen&embedded=true">Die Aktionen</a></li>
<li> <a href="./getdata.php?show=events&embedded=true">Die Events</a></li>
<li> <a href="./getdata.php?show=projekte&embedded=true">Die Projekte</a></li>
<li> <a href="./getdata.php?show=services&embedded=true">Die Services</a></li>
<li> <a href="./getdata.php?show=stores&embedded=true">Die Stores</a></li>
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
