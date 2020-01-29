# vornamenberlin

Der Twitterbot [@vornamenberlin](https://twitter.com/vornamenberlin) twittert alle drei Stunde eine zufällige Kombination von zwei Vornamen beruhend auf den über das [Open Data Portal](https://daten.berlin.de/datensaetze/liste-der-häufigen-vornamen-2019) der Stadt Berlin verfügbaren Listen der 2019 in den einzelnen Berliner Bezirken vergebenen Vornamen.

Das Script wählt zufällig zwei Namen des gleichen Geschlechts und aus den gleichen Bezirk aus, beide Namen wurden also tatsächlich, wenn auch einzeln, im Jahr 2019 im genannten Bezirk vergeben. Ergänzt werden die Tweets durch ein zufallsgenerierters Geburtstadtum.

Die unter einer  [CC BY 3.0 DE](https://creativecommons.org/licenses/by/3.0/de/) Lizenz stehenden Daten (Urheber: Berliner Landesamt für Bürger- und Ordnungsangelegenheiten (LABO) / BerlinOnline Stadtportal GmbH & Co. KG) wurden vom GitHub Repositorium [Listen der häufigen Vornamen in Berlin](https://github.com/berlinonline/haeufige-vornamen-berlin) heruntergeladen und in einer Datei mit der ergänzten Spalte "Bezirk" zusammengefügt.

Das Script generiert eine 1000 Zeilen lange tsv-Datei mit Zeitstempeln, um die Tweets über den freien Webservice [AutoChirp](https://autochirp.spinfo.uni-koeln.de/home) auch ohne Developer Account automatisiert publizieren zu können.
