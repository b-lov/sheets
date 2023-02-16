\version "2.24.0"
\include "chopin_10-12_notes.ily"
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
  title = \markup { \override #'(font-family . sans) "10/12" }
  composer = \markup { \override #'(font-family . sans) "chopin" }
  % remove bottom text
  tagline = ##f
}

KEYTIME = { \key c \minor \time 4/4 }

up = {
  \upI % 1-8
  \upII % 9-18
  \upIII % 19-28
  \upIV % 29-40
  \upV % 41-48
  \upVI % 49-58
  \upVII % 59-64
  \upVIII % 65-72
  \upIX % 73-84
}
down = {
  \downI % 1-8
  \downII % 9-18
  \downIII % 19-28
  \downIV % 29-40
  \downV % 41-48
  \downVI % 49-58
  \downVII % 59-64
  \downVIII % 65-72
  \downIX % 73-84
}

\score {
  \new PianoStaff << 
    \override Score.BarNumber.X-offset = 1
    \override Score.BarNumber.Y-offset = -5.6
    \override Score.BarNumber.font-family = #'sans
    \set Score.extraNatural = ##f
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