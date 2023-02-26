# vornamenberlin

Der ~~Twitterbot [@vornamenberlin](https://twitter.com/vornamenberlin)~~ Mastodon-Bot [@vornamenberlin](https://botsin.space/@vornamenberlin) ~~twittert~~ tootet alle drei Stunde eine zufällige Kombination von zwei Vornamen beruhend auf den über das [Open Data Portal](https://daten.berlin.de/datensaetze/liste-der-häufigen-vornamen-2022) der Stadt Berlin verfügbaren Listen der 2022 in den einzelnen Berliner Bezirken vergebenen Vornamen.

Das Script ~~[vornamenberlin.pl](https://github.com/fussballlinguist/vornamenberlin/blob/master/vornamenberlin.pl)~~ [vornamen.py](https://github.com/fussballlinguist/vornamenberlin/blob/master/vornamen.py) wählt zufällig zwei Namen des gleichen Geschlechts und aus den gleichen Bezirk aus, beide Namen wurden also tatsächlich, wenn auch einzeln, im Jahr 2022 im genannten Bezirk vergeben. Ergänzt werden die ~~Tweets~~ Toots durch ein zufallsgenerierters Geburtstadtum.

Die unter einer  [CC BY 3.0 DE](https://creativecommons.org/licenses/by/3.0/de/) Lizenz stehenden Daten (Urheber: Berliner Landesamt für Bürger- und Ordnungsangelegenheiten (LABO) / BerlinOnline Stadtportal GmbH & Co. KG) wurden vom GitHub Repositorium [Listen der häufigen Vornamen in Berlin](https://github.com/berlinonline/haeufige-vornamen-berlin) heruntergeladen und in einer Datei mit der ergänzten Spalte "Bezirk" zusammengefügt:

```
Sophie,66,w,2,Charlottenburg-Wilmersdorf
Marie,58,w,2,Charlottenburg-Wilmersdorf
Maria,46,w,2,Charlottenburg-Wilmersdorf
...
```

Das Script nutzt die [Python-Implementierung der Mastodon API](https://mastodonpy.readthedocs.io/en/stable/).
