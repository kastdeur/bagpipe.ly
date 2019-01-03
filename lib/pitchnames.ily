% ===================================================	%
%   Pitch Names											%
% ===================================================	%

% Notes of the scale of the Great Highland Bagpipe. Extra high notes for bombarde.
% Flat notes used mainly in some modern music.

pitchnamesBagpipe = #`(
  (G     . ,(ly:make-pitch 0 4 NATURAL))
  (a     . ,(ly:make-pitch 0 5 NATURAL))
  (b     . ,(ly:make-pitch 0 6 NATURAL))
  (bflat . ,(ly:make-pitch 0 6 FLAT))
  (c     . ,(ly:make-pitch 1 0 SHARP))
  (cflat . ,(ly:make-pitch 1 0 FLAT))
  (d     . ,(ly:make-pitch 1 1 NATURAL))
  (e     . ,(ly:make-pitch 1 2 NATURAL))
  (f     . ,(ly:make-pitch 1 3 SHARP))
  (fflat . ,(ly:make-pitch 1 3 FLAT))
  (g     . ,(ly:make-pitch 1 4 NATURAL))
  (gflat . ,(ly:make-pitch 1 4 FLAT))
  (A     . ,(ly:make-pitch 1 5 NATURAL))
  (B     . ,(ly:make-pitch 1 6 NATURAL))
  (C     . ,(ly:make-pitch 2 0 SHARP))
)
pitchnames = \pitchnamesBagpipe
#(ly:parser-set-note-names pitchnames)

