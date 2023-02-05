\version "2.24.0"

\include "chopin_10-12_notes.ily"

#(set-global-staff-size 16)

\paper {
  #(set-paper-size "a4")
  % distribute systems evenly
  % ragged-last-bottom = ##f
}

\markup { \vspace #1 }

\header {
  title = \markup { \override #'(font-family . sans) "etude op10 no12" }
  composer = \markup { \override #'(font-family . sans) "chopin" }
  tagline = ##f
}

KEYTIME = { \key c \minor \time 4/4 }
\score {
  \new PianoStaff << 
    \set Score.extraNatural = ##f
    \new Staff = "up" {
      \clef treble \KEYTIME 
      {
        % \upI % 1-8
        % \upII % 9-18
        % \upIII % 19-28
        % \upIV % 29-40
        % \upV % 41-48
        % \upVI % 49-58
        % \upVII % 59-64
        % \upVIII % 65-72
        \upIX % 73-84
      }
    }
    \new Staff = "down" {
      \clef bass \KEYTIME
      {
        % \downI % 1-8
        % \downII % 9-18
        % \downIII % 19-28
        % \downIV % 29-40
        % \downV % 41-48
        % \downVI % 49-58
        % \downVII % 59-64
        % \downVIII % 65-72
        \downIX % 73-84
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