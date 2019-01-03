% =====================================	%
%     Some common timing tweaks		%
% =====================================	%

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

