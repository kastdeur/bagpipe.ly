%{
  Bagpipe music settings for Lilypond.
  This file builds on work by Andrew McNabb (http://www.mcnabbs.org/andrew/)

  Substantial changes and additions made by
  Sven Axelsson, the Murray Pipes & Drums of Gothenburg
  (http://www.murrays.nu)

  Including this file will change the pitchnames used by lilypond.
%}

\version "2.19.28"

#(ly:set-option 'relative-includes #t)

\include "lib/pitchnames.ily"
\include "lib/embellishments.ily"
\include "lib/layout_tweaks.ily"
\include "lib/timing.ily"
