\version "2.24.0"
\include "chopin_25-12_notes.ily"

#(set-global-staff-size 16)

\paper {
  #(set-paper-size "a4")
  % distribute systems evenly
  % ragged-last-bottom = ##f
}

\markup { \vspace #1 }

\header {
  title = \markup { \override #'(font-family . sans) "etude op25 no12" }
  composer = \markup { \override #'(font-family . sans) "chopin" }
  tagline = ##f
}

KEYTIME = { \key c \minor \time 4/4 }

up = {
  \upI % 1-8
}
down = {
  \downI % 1-8
}

\score {
  % \set Score.extraNatural = ##f
  \new PianoStaff << 
    \new Staff = "up" { \clef treble \KEYTIME \up }
    \new Staff = "down" { \clef bass \KEYTIME \down }
  >>
  \layout {
    indent = 0\mm
    \context {
      \Staff
      \remove "Time_signature_engraver"
  	  % \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/4)
    }
  }
}