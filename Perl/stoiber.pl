#my @l=split(/\n\s*\n/,getData());
my @l=split(/\n\s*\n/,getWebseite());
my $out;
map { $out.=template().$_."\n====================\n"; } @l;
print $out;

## end main ##

sub template {
  return <<EOT;
<http://leipzig-data.de/Data/Event/NuKLA.2016-01-29>
    ld:contactPerson ldp:Stoiber_WolfgangEA ;
    ld:hasTag ldtag:AULA ;
    ld:zurReihe <http://leipzig-data.de/Data/Projekt/NuKLA.KartoffelKonzert> ;
    a ld:Event ;
    rdfs:label "" ;
    ical:description "" ;
    ical:dtstart "2016-01-29T17:00:00+02:00"^^xsd:dateTime ;
    ical:dtend "2016-01-29T19:00:00+02:00"^^xsd:dateTime ;
    ld:Kosten "6 EUR (bereits ermäßigt)" ;
    ical:location ldo:PragerFruehling ;
    ical:summary "" ;
    ical:url <http://www.nukla.de/veranstaltungen> .

EOT
}


sub getData {
  return <<EOT;
1. N 18 121 Z Frühlingsspaziergang durch den Auwald
Nach dem langen Winter freuen wir uns über das Vogelgezwitscher und die ersten Blumen. Wissen Sie immer, wer da singt und was da blüht? - Wie kommt eigentlich das Wasser in die Aue und wozu ist das wichtig? Ein vergnüglicher Vormittag mit Ralf Mäkert vom Nabu Leipzig, der Ihre Fragen gern beantwortet.
9.4., Sa., 10 - 11.30 Uhr / 2 Ustd. 6 EUR (bereits ermäßigt)
Treff: Elsterbecken, Landauer Brücke, Hans-Driesch-Str. NUKLA e. V.
Veranstaltungsreihe zum Leipziger Auenökosystem

 


2. N 18 122 Z Mythisches, Schauriges und Interessantes rund um den Leipziger Auwald und seine Bewohner
Der Auwald ist mehr als nur ein Wald. Heilige Bäume, Wassergeister, irreführende Gespenster und ehemalige Schlachtfelder sind hier zu finden. Dazu gibt es Interessantes über die Bewohner des Waldes - und natürlich auch ihre Gefährdung - an diesem Frühlingsabend zu hören. Empfehlenswert ist die Mitnahme einer Taschenlampe.
Exkursionsleiter: Johannes Hansmann.
Kinder bis 12 Jahre sind in Begleitung eines Erwachsenen entgeltfrei, sie müssen aber angemeldet werden.
16.4., Sa., 18 - 20 Uhr / 2,7 Ustd. 7 EUR
Treff: Schleußiger Weg, Bushaltestelle Rennbahn/ Eingang Schulbiol NUKLA e. V.

 


3. N 18 130 Z Exkursion zu den Frühjahrsblühern des Leipziger Auwaldes
Unsere Tour führt vom Treffpunkt Teichstraße entlang der Linie durch den südlichen Auwald und endet am Schleußiger Weg. Besonders sehenswert sind auf dieser Exkursion die zahlreichen Frühjahrsblüher, die Ihnen Markus Kellermann zeigen wird.
23.4., Sa., 14 - 15.30 Uhr / 2 Ustd. 6 EUR (bereits ermäßigt)
Treff: Teichstraße NUKLA e. V.

 


4. N 18 131 Z Geführte Paddeltour im Drachenboot auf dem Karl-Heine-Kanal
Eine Tour im Drachenboot ist zweifelsohne ein ganz besonderes Erlebnis. Die Standard-Sightseeing-Tour führt auf dem Karl-Heine-Kanal durch das ehemalige Industrieviertel Plagwitz. Vom Steuermann erhalten Sie eine Einführung in die Welt des Drachenboot-Sports und in die Paddeltechnik. Wir paddeln entlang der vielen ehemaligen Fabriken und Industriegebäude, welche heute mit Ihren renovierten und detailreichen Fassaden dem Viertel seinen ganz speziellen Charme verleihen. Auch unterqueren wir auf dieser Wasserstraße insgesamt 15 Brücken.
Im Preis sind die Bootsmiete, Paddelmaterial und der Tourguide enthalten.Exkursionsleitung: Claudia Dietze, Dirk Hoffsky / Freizeit & Abenteuer. Für Kinder bis 12 Jahre besteht Schwimmwestenpflicht. Die Schwimmwesten werden gestellt. Letzter Rücktritt: 14.4.16. 6
23.4., Sa., 10 - 11.30 Uhr / 2 Ustd. 17 EUR (bereits ermäßigt)
Treff: Bootsverleih Am Kanal 28 NUKLA e. V.
Veranstaltungsreihe zum Leipziger Auenökosystem

 

 

5. N 18 120 Z Fahrradexkursion in die Saale-Elster-Luppe-Aue zwischen Halle und Leipzig
Die Tour führt uns entlang des Diemitzer Grabens, der Reide, zum Überlauf des Hufeisensees in die Reide, in den Park von Dieskau, durch die Saale-Elster-Luppe-Aue und entlang des Wallendorfer und des Raßnitzer Sees im Saalelandkreis, durch die Luppeaue bei Schkeuditz, durch die Elster-Luppe-Nahle-Aue in der Stadt Leipzig sowie zum Mündungsbereich der Parthe.
Exkursionsleiter: Andreas Liste, AHA e.V.
Die Anfahrt zum Treffpunkt ist mit der S-Bahn nach Halle um 8.30 Uhr möglich. Die Exkursion endet am Hauptbahnhof Leipzig. Letzter Rücktritt: 3.5.
7.5., Sa., 10 - 16 Uhr / 8 Ustd. 10 EUR (bereits ermäßigt)
Treff: Kreuzung Otto-Stomps-Str. / Reideburger Str. / Fiete-Schulz NUKLA e. V.

 

 

 


6. N 18 150 Z Die Vogelwelt in der Leipziger Aue
Exkursion durch die Natur, um Vögel und ihre Lebensräume zu entdecken. Sie werden von einem Experten des NABU-Regionalverbandes Leipzig begleitet.
Ein Kind bis 12 Jahre ist in Begleitung eines Erwachsenen entgeltfrei, muss aber angemeldet werden. Bitte tragen Sie bequeme Schuhe.
5.6., So., 7 - 8.30 Uhr / 2 Ustd. 6 EUR
Treff: Schloss Lützschena, Schlossweg 9 NUKLA e. V.
Veranstaltungsreihe zum Leipziger Auenökosystem

 


7. N 18 152 Z Grusel, Glühwürmchen und Fledermäuse - Johannisnachtexkursion durchs Rosental
Auch bei Nacht hat das Rosental seinen Reiz. Fledermäuse huschen durch die Baumwipfel und über die Flüsse. Glühwürmchen steigen in der Dämmerung aus dem Grün. Käuzchen und Eulen lassen sich mit ihren gruseligen Rufen hören. Und zu dieser Zeit sind die Waldkauzkinder besonders rege ... Sorgar Gespenster soll es hier geben ... es gibt also nicht nur interessante Tiere zu sehen und zu hören, sondern auch allerlei Gruseliges und Schauriges rund um diese seit Jahrhunderten beliebte Park- und Waldlandschaft. August der Starke, Nixe und Räuber begleiten unseren dusteren Rundgang.
Exkursionsleiter: Johannes Hansmann.
Kinder bis 12 Jahre sind in Begleitung eines Erwachsenen entgeltfrei, sie müssen aber angemeldet werden.
25.6., Sa., 21 - 23 Uhr / 2,7 Ustd. 7 EUR
Treff: Rosentalgasse / Emil-Fuchs-Str. NUKLA e. V.

 


8. N 18 154 Z Kleine Hafentour für Paddelanfänger
Seit Juli 2015 ist Leipzig um ein paar Kilometer an paddelbaren Gewässern reicher. Jetzt hat auch der Lindenauer Hafen endlich die langersehnte Wasseranbindung. Die kleine Hafentour geht zum Lindenauer Hafen. Es ist eine kurze Tour, welche das Kennenlernen des Wasserwanderns mit Wissenswertem zur Entstehungsgeschichte des Kanals kombiniert. Die Hafentour ist hervorragend für Anfänger geeignet.
Im Preis sind die Bootsmiete, Paddelmaterial und der Tourguide enthalten.Exkursionsleitung: Claudia Dietze, Dirk Hoffsky / Freizeit & Abenteuer. Für Kinder bis 12 Jahre besteht Schwimmwestenpflicht. Die Schwimmwesten werden gestellt. Letzter Rücktritt: 16.6.16.
25.6., Sa., 14 - 16 Uhr / 2,7 Ustd. 22 EUR (bereits ermäßigt)
Treff: Bootsverleih Am Kanal 28 NUKLA e. V.

 


9. N 18 156 Z Kanutour Cospudener See
Unsere Tour beginnt mit einer kurzen Einweisung in das "Paddel-Ein-mal-eins". Wir bewegen uns auf einigen recht unterschiedlichen Wasserwegen Leipzigs. Idyllisch schlängelt sich der Flossgraben durch den Auwald. Unsere Tour geht über die Pleiße - Elsterflutbett - Weiße Elster und schlussendlich auf den Karl Heine Kanal.
Im Preis sind die Bootsmiete, Paddelmaterial, Personentransfer und der Tourguide enthalten.Exkursionsleitung: Claudia Dietze, Dirk Hoffsky / Freizeit & Abenteuer. Für Kinder bis 12 Jahre besteht Schwimmwestenpflicht. Die Schwimmwesten werden gestellt. Letzter Rücktritt: 14.7.16.
7.8., So., 9.30 - 14.30 Uhr / 6,7 Ustd. 35 EUR (bereits ermäßigt)
Treff: Bootsverleih Am Kanal 28 NUKLA e. V.

 


10. O 18 110 Z Entlang der Parthe / Fahrradexkursion von Taucha nach Leipzig
"Die Parthe durch Stadt und Land" - so folgen wir dem Flüsschen von Taucha nach Leipzig bis zur Mündung in die Weiße Elster. Exkursionsleiter: Andreas Liste, AHA e.V.
Letzter Rücktritt ist am 20.9. möglich.
24.9., Sa., 10 - 15 Uhr / 8 Ustd. 10 EUR (bereits ermäßigt)
Treff: 10:00 Uhr Bahnhof Taucha NUKLA e. V.

 


11. O 18 132 Z Herbstexkursion in die Pleiße-Elster-Aue
Erleben und genießen Sie den Herbst im südlichen Auwald - das Licht, die Gerüche und Geräusche. Exkursionsleiter: Andreas Liste, AHA e.V.
Die Exkursion endet am Leipziger Hauptbahnhof.
5.11., Sa., 10 - 14 Uhr / 5,3 Ustd. 8 EUR (bereits ermäßigt)
Treff: 10:00 UhrTram 9, Haltestelle "Koburger Brücke" NUKLA e. V.

 


12. O 18 134 Z Herbstexkursion zur Burgaue in Leipzig
Exkursionsleiter: Andreas Liste, AHA e.V.
26.11., Sa., 10 - 14 Uhr / 5 Ustd. 8 EUR (bereits ermäßigt)
Treff: Haus Auensee NUKLA e. V.
EOT
}

sub getWebseite {
  return <<EOT;
14.1.16 Donnerstag, 17 – 18.30 Uhr
Leipziger Floßgraben. Der Film. Teil II – Frühling
(In Kooperation mit der Volkshochschule Leipzig)
Ort: VHS Leipzig, Löhrstraße 3 – 7, Raum 301
Kursnummer der Volkshochschule Leipzig: M 18 023 Z
Eintritt frei
----
Der Film zeigt spannende 45 Minuten Vorfrühling im Einzugsbereich des Floßgrabens. Der Winter schwindet und der Frühling erblüht. Der Film beinhaltet etwas zur Entstehung des Floßgrabens und etwas zur aktuellen Problematik am Leipziger Floßgraben. Frühblüher, Vögel, Fische und Natur durch Naturstimmen und gesprochenem Text für Sie in Bildern festgehalten.

31.01.16 Sonntag, 17 Uhr  
25. Klassisches Kartoffelkonzert – „Mit ihm wäre ich überallhin gegangen…“ Die berührende Geschichte der Freundschaft von Tula und Maria Reemy mit Joachim Ringelnatz, recherchiert, gelesen und gesungen von Wolfgang Rieck
Ort: Alte Börse Leipzig
18 EUR Normalpreis, 15 EUR ermäßigt, 7 EUR Abendkasse mit LeipzigPass

27.03.16 Sonntag, 17 Uhr
26. Klassisches Kartoffelkonzert – Kammerorchester „Artentfaltung“  
Leitung Stephan König
Ort: Alte Börse Leipzig
18 EUR Normalpreis, 15 EUR ermäßigt, 7 EUR Abendkasse mit LeipzigPass, ausgenommen Sonderkonzerte

29.05.16, Sonntag,  17 Uhr 27. 
Klassisches Kartoffelkonzert – „Wenn Purpur in den Wiesen lacht…“  
Konzert mit barocker Musik voller Liebeslust und Frühlingsduft  mit dem Leipziger Barock-Consort
Ort: Alte Börse Leipzig
18 EUR Normalpreis, 15 EUR ermäßigt, 7 EUR Abendkasse mit LeipzigPass

02.06.16, Donnerstag, 18 Uhr  
3. AULA-Fachveranstaltung 
Die „Aufgaben der Leipziger Aue“ von Naturschutz über Freizeit bis Tourismus? und Neues zum Floßgraben
Ort: „City Tagung Leipzig“, 04109 Leipzig, Brühl 54, 4. Etage 
Eintritt frei

22.09.16 Donnerstag, 19.30 Uhr 
28. Klassisches Kartoffelkonzert – Thomas Hanke und Plaintive Cry mit Chamber Blues
Ort: Jazzkeller im Telegraph  
18 EUR Normalpreis, 15 EUR ermäßigt, 7 EUR Abendkasse mit LeipzigPass

26.11.16 Sonnabend, 19.30 Uhr  
29. Klassisches Kartoffelkonzert – Uschi Brüning und Band
Ort: Culturhaus Stötteritz
Eintritt lt. Plakataushang

27.11.16 Sonntag, 14.30 und 20 Uhr  
30. Klassisches Kartoffelkonzert – Doppelkonzert zum 1. Advent mit amarcord und Dorothee Oberlinger
Ort: Paul-Gerhardt-Kirche, Leipzig-Connewitz
Eintritt lt. Plakataushang
EOT
}
