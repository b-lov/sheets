\version "2.24.0"
\include "chopin_25-12_notes.ily"
\pointAndClickOff

#(set-global-staff-size 16)

\paper {
  #(set-paper-size "a4")
  % distribute systems evenly
  ragged-last-bottom = ##f
}

\markup { \vspace #1 }

\header {
  title = \markup { \override #'(font-family . sans) "25/12" }
  composer = \markup { \override #'(font-family . sans) "chopin" }
  tagline = ##f
}

KEYTIME = { \key c \minor \time 4/4 }

up = {
  \upI % 1-14
  \upII % 15-30
  \upIII % 31-46
  \upIV % 47-54
  \upV % 55-70
  \upVI % 71-83
}
down = {
  \downI % 1-14
  \downII % 15-30
  \downIII % 31-46
  \downIV % 47-54
  \downV % 55-70
  \downVI % 71-83
}

\score {
  % \set Score.extraNatural = ##f
  \new PianoStaff << 
    \override Score.BarNumber.X-offset = 1
    \override Score.BarNumber.Y-offset = -5.6
    \override Score.BarNumber.font-family = #'sans
    \new Staff = "up" { \clef treble \KEYTIME \up }
    \new Staff = "down" { \clef bass \KEYTIME \down }
  >>
  \layout {
    indent = 0\mm
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }
}