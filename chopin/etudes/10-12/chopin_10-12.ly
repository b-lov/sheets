\version "2.24.0"
#(set-global-staff-size 16)

\paper {
  #(set-paper-size "a4")
  % distribute systems evenly
  % ragged-last-bottom = ##f
}

\markup { \vspace #1 }

\header {
  title = \markup {
    \override #'(font-family . sans) "etude op10 no12"
  }
  composer = \markup {
    \override #'(font-family . sans) "chopin"
  }
  tagline = ##f
}

KEYTIME = { \key c \minor \time 4/4 }

% 1-8
upI = {
  \stemUp <b' d f g b>2 r | r r4 <as es' f as>8. <g g'>16 |
  <d' f g d'>2 r | r r4 \stemDown <as es' f as>8. <g g'>16 |
  <f' g d' f>8
  \magnifyMusic 0.75 {
    as'16[ g] f d es d  b g as g f d es d |
    \stemUp b g as g f d es d \change Staff = "down" b g as g f d es d |
    c b g' f es d es d c b bes'! as g f g f |
    es d \change Staff = "up" es' d c b c b
    \change Staff = "down" as g as g f es f es |
  }
}
downI = \magnifyMusic 0.75 {
  \change Staff = "up" \stemDown r8 as'16 g f d es d
  \change Staff = "down" \stemUp b g as g f d es d |
  b g as g f d es d c g c g c g c g |
  b8 \change Staff = "up" \stemDown as'''16[ g] f d es d
  \change Staff = "down" \stemUp b g as g f d es d |
  b g as g f d es d c g c g c g c g |
  b8  \stemDown \clef treble as''''16[ g] f d es d
  \stemUp b g as g f d es d \clef bass | 
  \stemDown b g as g f d es d b g as g f d es d |
  c b g' f es d es d c b bes'! as g f g f |
  es d es' d c b c b as g as g f es f es |
}

\score {
  \new PianoStaff << 
    \new Staff = "up" {
      \clef treble \KEYTIME \relative
      \upI
    }
    \new Staff = "down" {
      \clef bass \KEYTIME \relative
      \downI
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