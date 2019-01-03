%{
  Bagpipe music settings for Lilypond.
  This file builds on work by Andrew McNabb (http://www.mcnabbs.org/andrew/)

  Substantial changes and additions made by
  Sven Axelsson, the Murray Pipes & Drums of Gothenburg
  (http://www.murrays.nu)
%}

\version "2.19.28"

% Some common timing tweaks.

% Sets the autobeamer to span quarter notes only. Use for fast music.
quarterBeaming = {
  \set Score.baseMoment = #(ly:make-moment 1/4)
  \set Score.beatStructure = #'(1 1 1 1)
}
% Sets the autobeamer to span half notes. Mostly used in reels.
halfBeaming = {
  \set Score.baseMoment = #(ly:make-moment 1/2)
  \set Score.beatStructure = #'(1 1)
}

% Reels are in allabreve time with half note beaming.
reelTime = {
  \time 2/2
  \halfBeaming
}
% 4/4 marches are written with numerical time signature and with quarter beaming.
marchTime = {
  \time 4/4
  \numericTimeSignature
  \quarterBeaming
}

#(ly:set-option 'relative-includes #t)

\include "lib/pitchnames.ily"
\include "lib/embellishments.ily"
\include "lib/layout_tweaks.ily"
