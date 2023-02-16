\version "2.24.0"
\include "chopin_10-1_notes.ily"
% no links on pdf
\pointAndClickOff

% smaller staff
#(set-global-staff-size 16)

\paper {
  #(set-paper-size "a4")
  % distribute systems evenly
  ragged-last-bottom = ##f
}

\markup { \vspace #1 }

\header {
  title = \markup { \override #'(font-family . sans) "10/1" }
  composer = \markup { \override #'(font-family . sans) "chopin" }
  % remove bottom text
  tagline = ##f
}

KEYTIME = { \key c \major \time 4/4 }

up = {
  \upI % 1-16
  \upII % 17-36
  \upIII % 37-48
  \upIV % 49-68
  \upV % 69-79
}
down = {
  \downI % 1-16
  \downII % 17-36
  \downIII % 37-48
  \downIV % 49-68
  \downV % 69-79
}

\score {
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