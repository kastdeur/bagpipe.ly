% ===================================================	%
%   Embellishments										%
% ===================================================	%
%
% Add appropriate tweaks needed for piping grace notes to look great.
stemspace = 
#(define-music-function (extent) (pair?) #{
  \once \override Staff.Stem.X-extent = #extent
#})

pgrace = 
#(define-music-function (notes) (ly:music?) #{
  \override Score.GraceSpacing.spacing-increment = #0
  \override Score.Stem.beamlet-max-length-proportion = #'(0.5 . 0.5)
  \small \grace $notes \normalsize
  \revert Score.Stem.beamlet-default-length
#})

% Echo beats
echoG = \fixed c'' { \pgrace { g,16 } }
echoa = \fixed c'' { \pgrace { a,16 } }
echob = \fixed c'' { \pgrace { b,16 } }
echoc = \fixed c'' { \pgrace { cis16 } }
echod = \fixed c'' { \pgrace { d16 } }
echoe = \fixed c'' { \pgrace { e16 } }
echof = \fixed c'' { \pgrace { fis16 } }
echog = \fixed c'' { \pgrace { g16 } }
echoA = \fixed c'' { \pgrace { a16 } }

% Single grace notes
grG = \fixed c'' { \pgrace { g,32 } }
gra = \fixed c'' { \pgrace { a,32 } }
grb = \fixed c'' { \pgrace { b,32 } }
grc = \fixed c'' { \pgrace { cis32 } }
grd = \fixed c'' { \pgrace { d32 } }
gre = \fixed c'' { \pgrace { e32 } }
grf = \fixed c'' { \pgrace { fis32 } }
grg = \fixed c'' { \pgrace { g32 } }
grA = \fixed c'' { \pgrace { a32 } }

% Doublings
dblG = \fixed c'' { \pgrace { g32[ g, d] } }
dbla = \fixed c'' { \pgrace { g32[ a, d] } }
dblb = \fixed c'' { \pgrace { g32[ b, d] } }
dblc = \fixed c'' { \pgrace { g32[ cis d] } }
dbld = \fixed c'' { \pgrace { g32[ d e] } }
dble = \fixed c'' { \pgrace { g32[ e fis] } }
dblf = \fixed c'' { \pgrace { g32[ fis g] } }
% These are the same as the half doublings.
dblg = \fixed c'' { \pgrace { g32[ fis] } }
dblA = \fixed c'' { \pgrace { a32[ g] } }

% Half doublings
hdblG = \fixed c'' { \pgrace { g,32[ d] } }
hdbla = \fixed c'' { \pgrace { a,32[ d] } }
hdblb = \fixed c'' { \pgrace { b,32[ d] } }
hdblc = \fixed c'' { \pgrace { cis32[ d] } }
hdbld = \fixed c'' { \pgrace { d32[ e] } }
hdble = \fixed c'' { \pgrace { e32[ fis] } }
hdblf = \fixed c'' { \pgrace { fis32[ g] } }
hdblg = \fixed c'' { \pgrace { g32[ fis] } }
hdblA = \fixed c'' { \pgrace { a32[ g] } }

% Thumb doublings
tdblG = \fixed c'' { \pgrace { a32[ g, d] } }
tdbla = \fixed c'' { \pgrace { a32[ a, d] } }
tdblb = \fixed c'' { \pgrace { a32[ b, d] } }
tdblc = \fixed c'' { \pgrace { a32[ cis d] } }
tdbld = \fixed c'' { \pgrace { a32[ d e] } }
tdble = \fixed c'' { \pgrace { a32[ e fis] } }
tdblf = \fixed c'' { \pgrace { a32[ fis g] } }
tdblg = \fixed c'' { \pgrace { a32[ g fis] } }

% Shakes / Pele
shakea = \fixed c'' { \pgrace { g32[ a, e a, g,] } }
shakeb = \fixed c'' { \pgrace { g32[ b, e b, g,] } }
shakec = \fixed c'' { \pgrace { g32[ cis e cis g,] } }
shaked = \fixed c'' { \pgrace { g32[ d e d g,] } }
wshaked = \fixed c'' { \pgrace { g32[ d e d cis] } }
shakee = \fixed c'' { \pgrace { g32[ e fis e a,] } }
shakef = \fixed c'' { \pgrace { g32[ fis g fis e] } }
shakeg = \fixed c'' { \pgrace { a32[ fis g a,] } }
shakeA = \fixed c'' { \pgrace { a32[ g a a,] } }

% Half shakes / Half Pele
hshakea = \fixed c'' { \pgrace { a,32[ e a, g,] } }
hshakeb = \fixed c'' { \pgrace { b,32[ e b, g,] } }
hshakec = \fixed c'' { \pgrace { cis32[ e cis g,] } }
hshaked = \fixed c'' { \pgrace { d32[ e d g,] } }
whshaked = \fixed c'' { \pgrace { d32[ e d cis] } }
hshakee = \fixed c'' { \pgrace { e32[ fis e a,] } }
hshakef = \fixed c'' { \pgrace { fis32[ g fis e] } }
hshakeg = \fixed c'' { \pgrace { g32[ a g fis] } }
hshakeA = \fixed c'' { \pgrace { a32[ g a a,] } }

% Thumb shakes / Thumb Peles
tshakea = \fixed c'' { \pgrace { a32[ a, e a, g,] } }
tshakeb = \fixed c'' { \pgrace { a32[ b, e b, g,] } }
tshakec = \fixed c'' { \pgrace { a32[ cis e cis g,] } }
tshaked = \fixed c'' { \pgrace { a32[ d e d g,] } }
wtshaked = \fixed c'' { \pgrace { a32[ d e d cis] } }
tshakee = \fixed c'' { \pgrace { a32[ e fis e a,] } }
tshakef = \fixed c'' { \pgrace { a32[ fis g fis e] } }
tshakeg = \fixed c'' { \pgrace { a32[ g a g fis] } }
tshakeA = \fixed c'' { \pgrace { a32[ g a a,] } }

% Slurs / g, - g,race Strike
slura  = \fixed c'' { \pgrace { g32[ a, g,] } }
slurb  = \fixed c'' { \pgrace { g32[ b, g,] } }
slurc  = \fixed c'' { \pgrace { g32[ cis g,] } }
slurd  = \fixed c'' { \pgrace { g32[ d g,] } }
wslurd = \fixed c'' { \pgrace { g32[ d cis] } }
slure  = \fixed c'' { \pgrace { g32[ e a,] } }
slurf  = \fixed c'' { \pgrace { g32[ fis e] } }
slurg  = \fixed c'' { \pgrace { a32[ fis a,] } }
slurA  = \fixed c'' { \pgrace { fis32[ a,] } }

% Half slurs / Half Strike
hslura  = \fixed c'' { \pgrace { a,32[ g,] } }
hslurb  = \fixed c'' { \pgrace { b,32[ g,] } }
hslurc  = \fixed c'' { \pgrace { cis32[ g,] } }
hslurd  = \fixed c'' { \pgrace { d32[ g,] } }
whslurd = \fixed c'' { \pgrace { d32[ cis] } }
hslure  = \fixed c'' { \pgrace { e32[ a,] } }
hslurf  = \fixed c'' { \pgrace { fis32[ e] } }
hslurg  = \fixed c'' { \pgrace { g32[ fis] } }
hslurA  = \fixed c'' { \pgrace { a32[ a,] } }

% Thumb slurs / Thumb Strike
tslura  = \fixed c'' { \pgrace { a32[ a, g,] } }
tslurb  = \fixed c'' { \pgrace { a32[ b, g,] } }
tslurc  = \fixed c'' { \pgrace { a32[ cis g,] } }
tslurd  = \fixed c'' { \pgrace { a32[ d g,] } }
wtslurd = \fixed c'' { \pgrace { a32[ d cis] } }
tslure  = \fixed c'' { \pgrace { a32[ e a,] } }
tslurf  = \fixed c'' { \pgrace { a32[ fis e] } }
tslurg  = \fixed c'' { \pgrace { a32[ g fis] } }
tslurA  = \fixed c'' { \pgrace { fis32[ a,] } }

% Catches / g,-Grace g,rip
catcha = \fixed c'' { \pgrace { g32[ a, g, d g,] } }
catchb = \fixed c'' { \pgrace { g32[ b, g, d g,] } }
catchc = \fixed c'' { \pgrace { g32[ cis g, d g,] } }
catchd = \fixed c'' { \pgrace { g32[ d g, d g,] } }
wcatchd = \fixed c'' { \pgrace { g32[ d g, b, g,] } }
catche = \fixed c'' { \pgrace { g32[ e g, d g,] } }

% Half Catches / Half g,rip
hcatcha = \fixed c'' { \pgrace { a,32[ g, d g,] } }
hcatchb = \fixed c'' { \pgrace { b,32[ g, d g,] } }
hcatchc = \fixed c'' { \pgrace { cis32[ g, d g,] } }
hcatchd = \fixed c'' { \pgrace { d32[ g, d g,] } }
whcatchd = \fixed c'' { \pgrace { d32[ g, b, g,] } }
hcatche = \fixed c'' { \pgrace { e32[ g, d g,] } }

% Thumb catches / Thumb g,rip
tcatcha = \fixed c'' { \pgrace { a32[ a, g, d g,] } }
tcatchb = \fixed c'' { \pgrace { a32[ b, g, d g,] } }
tcatchc = \fixed c'' { \pgrace { a32[ cis g, d g,] } }
tcatchd = \fixed c'' { \pgrace { a32[ d g, d g,] } }
wtcatchd = \fixed c'' { \pgrace { a32[ d g, b, g,] } }
tcatche = \fixed c'' { \pgrace { a32[ e g, d g,] } }

% Triple strikes
tripleA = \fixed c'' { \pgrace { a32[ g a g a g] } }

% Throws
thrwd     = \fixed c'' { \pgrace { g,32[ d cis] } }
Gthrwd    = \fixed c'' { \pgrace { d32[ cis] } }
gripthrwd = \fixed c'' { \pgrace { g,32[ d g, cis] } }
thrwe     = \fixed c'' { \pgrace { e32[ a, fis a,] } }
wthrwe    = \fixed c'' { \pgrace { e32[ d fis d] } }
thrwf     = \fixed c'' { \pgrace { fis32[ e g e] } }
hvthrwd   = { \gripthrwd}

% Birls
birl  = \fixed c'' { \pgrace { a,32[ g, a, g,] } }
wbirl = \fixed c'' { \pgrace { g,32[ a, g,] } }
gbirl = \fixed c'' { \pgrace { g32[ a, g, a, g,] } }
dbirl = \fixed c'' { \pgrace { d32[ a, g, a, g,] } }

% g,rips / Leumluath
grip  = \fixed c'' { \pgrace { g,32[ d g,] } }
bgrip = \fixed c'' { \pgrace { g,32[ b, g,] } }
egrip = \fixed c'' { \pgrace { g,32[ e g,] } }
fgrip = \fixed c'' { \pgrace { g,32[ fis g,] } }

% Taorluaths
taor    = \fixed c'' { \pgrace { g,32[ d g, e] } }
taorjmd = \fixed c'' { \pgrace { g,32[ d a, e] } }
taorold = \fixed c'' { \pgrace { g,32[ d g, a, e] } }
btaor   = \fixed c'' { \pgrace { g,32[ b, g, e] } }
Gtaor   = \fixed c'' { \pgrace { d32[ g, e] } }
taoramb = \fixed c'' { \pgrace { g,32[ d g, b, e] } }
taoramc = \fixed c'' { \pgrace { g,32[ d g, cis e] } }
taoramd = \fixed c'' { \pgrace { g,32[ d g, cis d e] } }

% Peles
pella = \fixed c'' { \pgrace { g32[ a, e a, g,] } }
pelb = \fixed c'' { \pgrace { g32[ b, e b, g,] } }
pelc = \fixed c'' { \pgrace { g32[ cis e cis g,] } }
peld = \fixed c'' { \pgrace { g32[ d e d g,] } }
pele = \fixed c'' { \pgrace { g32[ e fis e g,] } }
pelf = \fixed c'' { \pgrace { g32[ fis g fis e] } }
lpeld = \fixed c'' { \pgrace { g32[ d e d cis] } }

% Thumb Peles
tpella = \fixed c'' { \pgrace { a32[ a, e a, g,] } }
tpelb = \fixed c'' { \pgrace { a32[ b, e b, g,] } }
tpelc = \fixed c'' { \pgrace { a32[ cis e cis g,] } }
tpeld = \fixed c'' { \pgrace { a32[ d e d g,] } }
tpele = \fixed c'' { \pgrace { a32[ e fis e g,] } }
tpelf = \fixed c'' { \pgrace { a32[ fis g fis e] } }
tpelhg = \fixed c'' { \pgrace { a32[ g a g fis] } }
ltpeld = \fixed c'' { \pgrace { a32[ d e d cis] } }

% Half Peles
hpella = \fixed c'' { \pgrace { a,32[ e a, g,] } }
hpelb = \fixed c'' { \pgrace { b,32[ e b, g,] } }
hpelc = \fixed c'' { \pgrace { cis32[ e cis g,] } }
hpeld = \fixed c'' { \pgrace { d32[ e d g,] } }
hpele = \fixed c'' { \pgrace { e32[ fis e g,] } }
hpelf = \fixed c'' { \pgrace { fis32[ g fis e] } }
hpelhg = \fixed c'' { \pgrace { g32[ a g fis] } }
lhpeld = \fixed c'' { \pgrace { d32[ e d cis] } }


% Special piobaireachd notations
% Crunluaths
crun    = \fixed c'' { \pgrace { g,32[ d g, e a, fis a, ] } }
dcrun   = \fixed c'' { \pgrace { g,32[ b, g, e a, fis a, ] } }
Gcrun   = \fixed c'' { \pgrace { d32[ g, e g, fis a, ] } }
crunG   = \fixed c'' { \pgrace { g,32[ d g, e g, fis g, ] } }
crunamb = \fixed c'' { \pgrace { g,32[ d g, b, e b, fis b, ] } }
crunamc = \fixed c'' { \pgrace { g,32[ d g, cis e cis fis cis ] } }
crunamd = \fixed c'' { \pgrace { g,32[ d g, cis d e d fis d ] } }
crunambfosg = \fixed c'' { \pgrace { e32[ b, fis b, ] } }
crunamcfosg = \fixed c'' { \pgrace { e32[ cis fis cis ] } }
crunamdfosg = \fixed c'' { \pgrace { e32[ d fis d ] } }

grGcad   = \fixed c'' { \pgrace { g,16 } }
gracad   = \fixed c'' { \pgrace { a,16 } }
grecad   = \fixed c'' { \pgrace { e16 } }
cad      = \fixed c'' { \pgrace { \stemspace #'(0 . 0.5) g32[ e8 d32] } }
hcad     = \fixed c'' { \pgrace { \stemspace #'(0 . 0.5) g32[ e8] } }
tcad     = \fixed c'' { \pgrace { e8[ d32] } }
thcad    = \fixed c'' { \pgrace { e8 } }
rodin    = { \bgrip }
% This is the same as thrwe
dre      = \fixed c'' { \pgrace { e32[ a, fis a,] } }
% This is the same as thrwf
dare     = \fixed c'' { \pgrace { fis32[ e g e] } }
bari     = \fixed c'' { \pgrace { e32[ g, fis g,] } }
dari     = \fixed c'' { \pgrace { fis32[ e g e fis e] } }
fdari    = \fixed c'' { \pgrace { e32[ g e fis e] } }
pthrwd   = \fixed c'' { \pgrace { g,16[ d32 cis] } }
darodo   = \fixed c'' { \pgrace { g,32[ d g, cis g,] } }
Gdarodo  = \fixed c'' { \pgrace { d32[ g, cis g,] } }
pdarodo  = \fixed c'' { \pgrace { g,16[ d32 g, cis g,16] } }
pGdarodo = \fixed c'' { \pgrace { d32[ g, cis g,16] } }
% Weird stuff from Joseph MacDonald’s book
fifteenthcutting     = \fixed c'' { \pgrace { g,32[ d a, e a, fis a, e a, d] } }
fifteenthcuttingG    = \fixed c'' { \pgrace { g,32[ d a, e g, fis g, e g, d] } }
Gfifteenthcutting    = \fixed c'' { \pgrace { d32[ a, e a, fis a, e a, d] } }
GfifteenthcuttingG   = \fixed c'' { \pgrace { d32[ a, e g, fis g, e g, d] } }
seventeenthcutting   = \fixed c'' { \pgrace { g,32[ d a, e a, fis a, e a, d a, cis] } }
seventeenthcuttingG  = \fixed c'' { \pgrace { g,32[ d a, e g, fis g, e g, d g, cis] } }
Gseventeenthcutting  = \fixed c'' { \pgrace { d32[ a, e a, fis a, e a, d a, cis] } }
GseventeenthcuttingG = \fixed c'' { \pgrace { d32[ a, e g, fis g, e g, d g, cis] } }
barluadh   = \fixed c'' { \pgrace { g,32[ d a, e a, fis a, e a, d a, cis a, b, a, e a, fis a,] } }
barluadhG  = \fixed c'' { \pgrace { g,32[ d a, e g, fis g, e g, d g, cis g, b, g, e g, fis g,] } }
Gbarluadh  = \fixed c'' { \pgrace { d32[ a, e a, fis a, e a, d a, cis a, b, a, e a, fis a,] } }
GbarluadhG = \fixed c'' { \pgrace { d32[ a, e g, fis g, e g, d g, cis g, b, g, e g, fis g,] } }
% Non-gracenote piobaireachd markup.
trebling = \markup {
  \override #'(baseline-skip . 0.4)
  \column {
    \musicglyph #"scripts.tenuto"
    \musicglyph #"scripts.tenuto"
    \musicglyph #"scripts.tenuto"
  }
}
% Abbreviated notation common in piobaireachd scores.
txtaor = \markup { \center-align "T" }
txcrun = \markup { \center-align "C" }
txtaorcrun = \markup {
  \override #'(baseline-skip . 1.8)
  \column {
    \center-align "T"
    \center-align "C"
  }
}
txtaoram = \markup { \center-align \scale #'(-1 . -1) "T" }
txcrunam = \markup { \center-align \scale #'(-1 . -1) "C" }
txtaorcrunam = \markup {
  \override #'(baseline-skip . 1.8)
  \column {
    \center-align \scale #'(-1 . -1) "T"
    \center-align \scale #'(-1 . -1) "C"
  }
}
