% ===================================================	%
%   Layout Tweaks										%
% ===================================================	%

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

%%% Layout
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

