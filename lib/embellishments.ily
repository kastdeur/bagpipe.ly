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
echoG = { \pgrace { G16 } }
echoa = { \pgrace { a16 } }
echob = { \pgrace { b16 } }
echoc = { \pgrace { c16 } }
echod = { \pgrace { d16 } }
echoe = { \pgrace { e16 } }
echof = { \pgrace { f16 } }
echog = { \pgrace { g16 } }
echoA = { \pgrace { A16 } }

% Single grace notes
grG = { \pgrace { G32 } }
gra = { \pgrace { a32 } }
grb = { \pgrace { b32 } }
grc = { \pgrace { c32 } }
grd = { \pgrace { d32 } }
gre = { \pgrace { e32 } }
grf = { \pgrace { f32 } }
grg = { \pgrace { g32 } }
grA = { \pgrace { A32 } }

% Doublings
dblG = { \pgrace { g32[ G d] } }
dbla = { \pgrace { g32[ a d] } }
dblb = { \pgrace { g32[ b d] } }
dblc = { \pgrace { g32[ c d] } }
dbld = { \pgrace { g32[ d e] } }
dble = { \pgrace { g32[ e f] } }
dblf = { \pgrace { g32[ f g] } }
% These are the same as the half doublings.
dblg = { \pgrace { g32[ f] } }
dblA = { \pgrace { A32[ g] } }

% Half doublings
hdblG = { \pgrace { G32[ d] } }
hdbla = { \pgrace { a32[ d] } }
hdblb = { \pgrace { b32[ d] } }
hdblc = { \pgrace { c32[ d] } }
hdbld = { \pgrace { d32[ e] } }
hdble = { \pgrace { e32[ f] } }
hdblf = { \pgrace { f32[ g] } }
hdblg = { \pgrace { g32[ f] } }
hdblA = { \pgrace { A32[ g] } }

% Thumb doublings
tdblG = { \pgrace { A32[ G d] } }
tdbla = { \pgrace { A32[ a d] } }
tdblb = { \pgrace { A32[ b d] } }
tdblc = { \pgrace { A32[ c d] } }
tdbld = { \pgrace { A32[ d e] } }
tdble = { \pgrace { A32[ e f] } }
tdblf = { \pgrace { A32[ f g] } }
tdblg = { \pgrace { A32[ g f] } }

% Shakes / Pele
shakea = { \pgrace { g32[ a e a G] } }
shakeb = { \pgrace { g32[ b e b G] } }
shakec = { \pgrace { g32[ c e c G] } }
shaked = { \pgrace { g32[ d e d G] } }
wshaked = { \pgrace { g32[ d e d c] } }
shakee = { \pgrace { g32[ e f e a] } }
shakef = { \pgrace { g32[ f g f e] } }
shakeg = { \pgrace { A32[ f g a] } }
shakeA = { \pgrace { A32[ g A a] } }

% Half shakes / Half Pele
hshakea = { \pgrace { a32[ e a G] } }
hshakeb = { \pgrace { b32[ e b G] } }
hshakec = { \pgrace { c32[ e c G] } }
hshaked = { \pgrace { d32[ e d G] } }
whshaked = { \pgrace { d32[ e d c] } }
hshakee = { \pgrace { e32[ f e a] } }
hshakef = { \pgrace { f32[ g f e] } }
hshakeg = { \pgrace { g32[ A g f] } }
hshakeA = { \pgrace { A32[ g A a] } }

% Thumb shakes / Thumb Peles
tshakea = { \pgrace { A32[ a e a G] } }
tshakeb = { \pgrace { A32[ b e b G] } }
tshakec = { \pgrace { A32[ c e c G] } }
tshaked = { \pgrace { A32[ d e d G] } }
wtshaked = { \pgrace { A32[ d e d c] } }
tshakee = { \pgrace { A32[ e f e a] } }
tshakef = { \pgrace { A32[ f g f e] } }
tshakeg = { \pgrace { A32[ g A g f] } }
tshakeA = { \pgrace { A32[ g A a] } }

% Slurs / G - Grace Strike
slura  = { \pgrace { g32[ a G] } }
slurb  = { \pgrace { g32[ b G] } }
slurc  = { \pgrace { g32[ c G] } }
slurd  = { \pgrace { g32[ d G] } }
wslurd = { \pgrace { g32[ d c] } }
slure  = { \pgrace { g32[ e a] } }
slurf  = { \pgrace { g32[ f e] } }
slurg  = { \pgrace { A32[ f a] } }
slurA  = { \pgrace { f32[ a] } }

% Half slurs / Half Strike
hslura  = { \pgrace { a32[ G] } }
hslurb  = { \pgrace { b32[ G] } }
hslurc  = { \pgrace { c32[ G] } }
hslurd  = { \pgrace { d32[ G] } }
whslurd = { \pgrace { d32[ c] } }
hslure  = { \pgrace { e32[ a] } }
hslurf  = { \pgrace { f32[ e] } }
hslurg  = { \pgrace { g32[ f] } }
hslurA  = { \pgrace { A32[ a] } }

% Thumb slurs / Thumb Strike
tslura  = { \pgrace { A32[ a G] } }
tslurb  = { \pgrace { A32[ b G] } }
tslurc  = { \pgrace { A32[ c G] } }
tslurd  = { \pgrace { A32[ d G] } }
wtslurd = { \pgrace { A32[ d c] } }
tslure  = { \pgrace { A32[ e a] } }
tslurf  = { \pgrace { A32[ f e] } }
tslurg  = { \pgrace { A32[ g f] } }
tslurA  = { \pgrace { f32[ a] } }

% Catches / G-Grace Grip
catcha = { \pgrace { g32[ a G d G] } }
catchb = { \pgrace { g32[ b G d G] } }
catchc = { \pgrace { g32[ c G d G] } }
catchd = { \pgrace { g32[ d G d G] } }
wcatchd = { \pgrace { g32[ d G b G] } }
catche = { \pgrace { g32[ e G d G] } }

% Half Catches / Half Grip
hcatcha = { \pgrace { a32[ G d G] } }
hcatchb = { \pgrace { b32[ G d G] } }
hcatchc = { \pgrace { c32[ G d G] } }
hcatchd = { \pgrace { d32[ G d G] } }
whcatchd = { \pgrace { d32[ G b G] } }
hcatche = { \pgrace { e32[ G d G] } }

% Thumb catches / Thumb Grip
tcatcha = { \pgrace { A32[ a G d G] } }
tcatchb = { \pgrace { A32[ b G d G] } }
tcatchc = { \pgrace { A32[ c G d G] } }
tcatchd = { \pgrace { A32[ d G d G] } }
wtcatchd = { \pgrace { A32[ d G b G] } }
tcatche = { \pgrace { A32[ e G d G] } }

% Triple strikes
tripleA = { \pgrace { A32[ g A g A g] } }

% Throws
thrwd     = { \pgrace { G32[ d c] } }
Gthrwd    = { \pgrace { d32[ c] } }
gripthrwd = { \pgrace { G32[ d G c] } }
thrwe     = { \pgrace { e32[ a f a] } }
wthrwe    = { \pgrace { e32[ d f d] } }
thrwf     = { \pgrace { f32[ e g e] } }
hvthrwd   = { \gripthrwd}

% Birls
birl  = { \pgrace { a32[ G a G] } }
wbirl = { \pgrace { G32[ a G] } }
gbirl = { \pgrace { g32[ a G a G] } }
dbirl = { \pgrace { d32[ a G a G] } }

% Grips / Leumluath
grip  = { \pgrace { G32[ d G] } }
bgrip = { \pgrace { G32[ b G] } }
egrip = { \pgrace { G32[ e G] } }
fgrip = { \pgrace { G32[ f G] } }

% Taorluaths
taor    = { \pgrace { G32[ d G e] } }
taorjmd = { \pgrace { G32[ d a e] } }
taorold = { \pgrace { G32[ d G a e] } }
btaor   = { \pgrace { G32[ b G e] } }
Gtaor   = { \pgrace { d32[ G e] } }
taoramb = { \pgrace { G32[ d G b e] } }
taoramc = { \pgrace { G32[ d G c e] } }
taoramd = { \pgrace { G32[ d G c d e] } }

% Peles
pella = { \pgrace { g32[ a e a G] } }
pelb = { \pgrace { g32[ b e b G] } }
pelc = { \pgrace { g32[ c e c G] } }
peld = { \pgrace { g32[ d e d G] } }
pele = { \pgrace { g32[ e f e G] } }
pelf = { \pgrace { g32[ f g f e] } }
lpeld = { \pgrace { g32[ d e d c] } }

% Thumb Peles
tpella = { \pgrace { A32[ a e a G] } }
tpelb = { \pgrace { A32[ b e b G] } }
tpelc = { \pgrace { A32[ c e c G] } }
tpeld = { \pgrace { A32[ d e d G] } }
tpele = { \pgrace { A32[ e f e G] } }
tpelf = { \pgrace { A32[ f g f e] } }
tpelhg = { \pgrace { A32[ g A g f] } }
ltpeld = { \pgrace { A32[ d e d c] } }

% Half Peles
hpella = { \pgrace { a32[ e a G] } }
hpelb = { \pgrace { b32[ e b G] } }
hpelc = { \pgrace { c32[ e c G] } }
hpeld = { \pgrace { d32[ e d G] } }
hpele = { \pgrace { e32[ f e G] } }
hpelf = { \pgrace { f32[ g f e] } }
hpelhg = { \pgrace { g32[ A g f] } }
lhpeld = { \pgrace { d32[ e d c] } }


% Special piobaireachd notations
% Crunluaths
crun    = { \pgrace { G32[ d G e a f a ] } }
dcrun   = { \pgrace { G32[ b G e a f a ] } }
Gcrun   = { \pgrace { d32[ G e G f a ] } }
crunG   = { \pgrace { G32[ d G e G f G ] } }
crunamb = { \pgrace { G32[ d G b e b f b ] } }
crunamc = { \pgrace { G32[ d G c e c f c ] } }
crunamd = { \pgrace { G32[ d G c d e d f d ] } }
crunambfosg = { \pgrace { e32[ b f b ] } }
crunamcfosg = { \pgrace { e32[ c f c ] } }
crunamdfosg = { \pgrace { e32[ d f d ] } }

grGcad   = { \pgrace { G16 } }
gracad   = { \pgrace { a16 } }
grecad   = { \pgrace { e16 } }
cad      = { \pgrace { \stemspace #'(0 . 0.5) g32[ e8 d32] } }
hcad     = { \pgrace { \stemspace #'(0 . 0.5) g32[ e8] } }
tcad     = { \pgrace { e8[ d32] } }
thcad    = { \pgrace { e8 } }
rodin    = { \bgrip }
% This is the same as thrwe
dre      = { \pgrace { e32[ a f a] } }
% This is the same as thrwf
dare     = { \pgrace { f32[ e g e] } }
bari     = { \pgrace { e32[ G f G] } }
dari     = { \pgrace { f32[ e g e f e] } }
fdari    = { \pgrace { e32[ g e f e] } }
pthrwd   = { \pgrace { G16[ d32 c] } }
darodo   = { \pgrace { G32[ d G c G] } }
Gdarodo  = { \pgrace { d32[ G c G] } }
pdarodo  = { \pgrace { G16[ d32 G c G16] } }
pGdarodo = { \pgrace { d32[ G c G16] } }
% Weird stuff from Joseph MacDonald’s book
fifteenthcutting     = { \pgrace { G32[ d a e a f a e a d] } }
fifteenthcuttingG    = { \pgrace { G32[ d a e G f G e G d] } }
Gfifteenthcutting    = { \pgrace { d32[ a e a f a e a d] } }
GfifteenthcuttingG   = { \pgrace { d32[ a e G f G e G d] } }
seventeenthcutting   = { \pgrace { G32[ d a e a f a e a d a c] } }
seventeenthcuttingG  = { \pgrace { G32[ d a e G f G e G d G c] } }
Gseventeenthcutting  = { \pgrace { d32[ a e a f a e a d a c] } }
GseventeenthcuttingG = { \pgrace { d32[ a e G f G e G d G c] } }
barluadh   = { \pgrace { G32[ d a e a f a e a d a c a b a e a f a] } }
barluadhG  = { \pgrace { G32[ d a e G f G e G d G c G b G e G f G] } }
Gbarluadh  = { \pgrace { d32[ a e a f a e a d a c a b a e a f a] } }
GbarluadhG = { \pgrace { d32[ a e G f G e G d G c G b G e G f G] } }
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
