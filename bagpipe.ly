%{
  Bagpipe music settings for Lilypond.
  This file builds on work by Andrew McNabb (http://www.mcnabbs.org/andrew/)

  Substantial changes and additions made by
  Sven Axelsson, the Murray Pipes & Drums of Gothenburg
  (http://www.murrays.nu)
%}

\version "2.19.28"


% Bagpipe music is written in something like D major. If we use
% flattened notes, the flat should be shown on all instances.
bagpipeKey = {
  \key d \major
  \accidentalStyle forget
}

% Show the key signature e.g. for BMW compatibility.
showKeySignature = {
  \override Staff.KeySignature.stencil = #'ly:key-signature-interface::print
  \override StaffGroup.KeySignature.stencil = #'ly:key-signature-interface::print
  \override Score.KeySignature.stencil = #'ly:key-signature-interface::print
}

% Show the true key signature (E-flat major). Use together with
% \transpose f a to print scores for other instruments.
showTrueKeySignature = {
  \override Staff.KeySignature.stencil = #'ly:key-signature-interface::print
  \override StaffGroup.KeySignature.stencil = #'ly:key-signature-interface::print
  \override Score.KeySignature.stencil = #'ly:key-signature-interface::print
  \override Score.Stem.direction = #'center
  \override Score.Slur.direction = #'center
  \override Score.Tie.direction = #'center
}

% gracenotesOff = #(set! showGracenotes ##f)
% gracenotesOn  = #(set! showGracenotes ##t)
% \gracenotesOn

% Various tweaks to get good defaults for bagpipe music.
\paper {
  top-margin = 4\mm
  bottom-margin = 4\mm
}

\layout {
  indent = 0.0

  \context {
    \Score

    \remove "Bar_number_engraver"

    \override Stem.direction = #down
    \override Slur.direction = #up
    \override Tie.direction = #up

    \override VoltaBracketSpanner.Y-extent = #'(-1.5 . 0)
    \override VoltaBracket.height = #2.2
  }

  \context {
    \StaffGroup

    extraNatural = ##f
    \override KeySignature.stencil = ##f
  }

  \context {
    \Staff

    extraNatural = ##f
    midiInstrument = #"bagpipe"

    \override KeySignature.stencil = ##f
  }

  \context {
    \Voice

    \override TupletBracket.bracket-visibility = ##t
  }
}

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
