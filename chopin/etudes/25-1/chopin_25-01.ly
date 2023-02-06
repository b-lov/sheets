\version "2.24.0"
\include "chopin_25-01_notes.ily"

#(set-global-staff-size 16)

\paper {
  #(set-paper-size "a4")
  % distribute systems evenly
  % ragged-last-bottom = ##f
}

\markup { \vspace #1 }

\header {
  title = \markup { \override #'(font-family . sans) "etude op25 no1" }
  composer = \markup { \override #'(font-family . sans) "chopin" }
  tagline = ##f
}

KEYTIME = { \key as \time 4/4 }

\score {
  \new PianoStaff << 
    \set Score.extraNatural = ##f
    \new Staff = "up" {
      \clef treble \KEYTIME 
      {
      }
    }
    \new Staff = "down" {
      \clef bass \KEYTIME
      {
      }
    }
  >>

  \layout {
    indent = 0\mm
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }
}