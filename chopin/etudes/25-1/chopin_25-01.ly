\version "2.24.0"
\include "chopin_25-01_notes.ily"
\pointAndClickOff

#(set-global-staff-size 16)

\paper {
  #(set-paper-size "a4")
  % distribute systems evenly
  ragged-last-bottom = ##f
}

\markup { \vspace #1 }

\header {
  title = \markup { \override #'(font-family . sans) "etude 25/1" }
  composer = \markup { \override #'(font-family . sans) "chopin" }
  tagline = ##f
}

KEYTIME = { \key as \major \time 4/4 }

up = {
  \upI % 1-4
  \upII % 5-8
  \upIII % 9-12
  \upIV % 13-16
  \upV % 17-20
  \upVI % 21-24
  \upVII % 25-29
  \upVIII % 30-35
  \upIX % 36-43
  \upX % 44-49
}
down = {
  \downI % 1-4
  \downII % 5-8
  \downIII % 9-12
  \downIV % 13-16
  \downV % 17-20
  \downVI % 21-24
  \downVII % 25-29
  \downVIII % 30-35
  \downIX % 36-43
  \downX % 44-49
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