# Roadmap des Projekts "Semantische Stadtteilplattform"

Üblicherweise - wie auch bei `leipziger-ecken.de` - sind die relevanten
Informationen in einer Datenbank enthalten, auf die entweder direkt oder über
eine im CMS (hier Drupal) integrierte API zugegriffen werden kann. 

In einer ersten Ausbaustufe soll über eine solche Schnittstelle RDF extrahiert
und die Datenqualität analysiert werden. Die RDF-Daten sollen dazu in
verschiedene RDF-Graphen extrahiert werden, die direkt in einem speziellen
Verzeichnis des Webservers abgelegt werden und von dort aus öffentlich
zugänglich sind. 

Nach [Linked Open Data (LOD) Prinzipien](http://lod-cloud.net/) sollte die URI
der entsprechenden Graphen und Subjekte so beschaffen sein, dass ein
HTTP-Request auf diese URI relevante Informationen aus diesem Verzeichnis
zurückliefert.

## Umsetzung bei leipziger-ecken.de

Die RDF-Daten sollen in einem Verzeichnis http://leipziger-ecken.de/Daten
ausgerolt werden, so dass diese URI auch das Namensraumpräfix für alle URIs von
lokal erzeugten Subjekten zu verwenden ist.  Die URI der einzelnen Subjekte
wird aus deren Typ und dem Primärschlüssel in der Datenbank generiert und hat
die Struktur `<Präfix>/<Typ>/X<Id>` wobei `X` aus technischen Gründen ein
Buchstabe ist.

Die Auflösung von Subjekt-URIs auf URLs soll im genannten Verzeichnis durch
URL-Rewriting in einer .htaccess-Datei erfolgen. Dabei werden die Subjekt-URIs
vorgegebenen Typs auf die entsprechende RDF-Datei weitergeleitet, in der die
Informationen zu diesem Typ zusammengetragen sind. 

