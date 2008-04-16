ATT SKRIVA S�CKPIPEMUSIK MED LILYPOND
=====================================


1. Installera Lilypond 2.6.0
----------------------------

* Numera finns "riktiga" installerare f�r Mac och Windows och Red Hat Linux.
  Det finns ocks� en version som anv�nder Autopackage; en universell
  Linux-installerare.
* H�mta installeraren f�r ditt system h�r: http://lilypond.org/web/install/
* G�r som du brukar f�r att installera.


2. Installera och anv�nda bagpipe.ly
------------------------------------

* Dessa instruktioner �r skrivna f�r Windows. Om du k�r n�got annat s� f�r du
  sj�lv lista ut vad som skiljer sig.
  
Skapa en katalog f�r musikfiler, t.ex. C:\Music och kopiera alla filer och kataloger
fr�n bagpipe.zip till den nya katalogen. OBS l�gg inte filerna i Mina dokument
eftersom en del av de program som beh�vs f�r Lilypond inte tycker om s�kv�gar
med blanksteg i.

Kopiera filerna i mappen scm till motsvarande mapp i din Lilypond-installation
och skriv �ver de tv� filerna d�r. Dessa filer finns normalt i
C:\Program\LilyPond\usr\share\lilypond\2.6.0\scm
OBS: Detta �r viktigt! Dessa filer kr�vs f�r att rubriker ska fungera korrekt.

Dubbelklicka p� cheatsheet.ly. Detta skapar en PDF med alla specifika s�ckpipe-
kommandon, s� du kan se hur du skriver t.ex. en crunluath a mach. Nu ser du ocks�
om din installation fungerar som den ska.

OBS: n�r du dubbelklickat p� en *.ly-fil s� verkar det som inget h�nder. Detta �r
normalt. Lilypond r�knar och t�nker en stund innan den skapar PDF-filen. Om du
k�r en stor fil, t.ex. standard_settings.ly, s� kan det ta upp till en minut
innan du ser att n�got h�nder.

bagpipe.ly �r d�r alla s�ckpipespecifika kommandon och inst�llningar finns. Titta
g�rna i filen f�r att se hur saker och ting fungerar. Om du uppt�cker gracenoter
som saknas l�gger du till dessa h�r.

format.ly anger rubrikformatet. �ndra h�r om du vill att rubrikerna ska se ut
p� n�got annat s�tt �n Sven Axelssons standardformat.

music.ly �r ett exempel p� hur du genererar filer med musik fr�n notbiblioteket.
F�r att det ska g� smidigt att s�tta samman m�nga l�tar i olika set s�
inkluderar inte varje l�t sj�lv bagpipe.ly och format.ly, utan detta g�rs
fr�n en s�rskild fil som sen inkluderar en eller flera l�tar.

standard_settings.ly �r ytterligare ett s�dant exempel. Det �r b�rjan till
v�r ber�mda bok med alla v�ra fantastiska arrangemang.

_template.ly �r en mall du kan anv�nda f�r att skriva nya l�tar. Alla l�tfiler
ska struktureras p� detta s�tt.

OBS igen: Om du vill skriva rubriker eller annan text som inneh�ller svenska
tecken (eller japanska, eller ryska) s� m�ste du spara filen i formatet
UTF-8. Windows-anv�ndare kan anv�nda Notepad till detta. Ni andra f�r sj�lva
hitta ett l�mpligt program.

cheatsheet.ly PDF:en och bagpipe.ly b�r vara nog f�r att du ska f�rst� hur
s�ckpipenotationen fungerar. Du beh�ver s�kert ocks� l�sa Lilypond-dokumentationen
som finns h�r: http://lilypond.org/doc/v2.6/Documentation/out-www/

Det var det hela.
