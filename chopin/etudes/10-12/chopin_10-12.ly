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
upI = \relative c' {
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
downI = \relative c' \magnifyMusic 0.75 {
  \change Staff = "up" \stemDown r8 as'16 g f d es d
  \change Staff = "down" \stemUp b g as g f d es d |
  b g as g f d es d c g c g c g c g |
  b8 \change Staff = "up" \stemDown as'''16[ g] f d es d
  \change Staff = "down" \stemUp b g as g f d es d |
  b g as g f d es d c g c g c g c g | \break
  b8  \stemDown \clef treble as''''16[ g] f d es d
  \stemUp b g as g f d es d \clef bass | 
  \stemDown b g as g f d es d b g as g f d es d |
  c b g' f es d es d c b bes'! as g f g f |
  es d es' d c b c b as g as g f es f es | \break
}

% 9-18
upII = \relative c { 
  % up 9-12
  c8 \change Staff = "up" \stemNeutral r8 r4 r2 |
  r2 r8 r16 <c'' c'>[ <d d'>8. <es es'>16] |
  <es es'>2 r8 r16 <g, c es g>16[ <g c es g>8. <g c es g>16] |
  <as c es as>2~ <g c es g>8 r16 <c c'>[ <d d'>8. <es es'>16] | \break
  % up 13-16
  <es es'>2 r8 r16 <g, c es g>16[ <g c es g>8. <g c es g>16] |
  <a c es a~>1 | <d a' d>8 r8 <g, d' g>4 r8 r16 <g des' g>16[ <as! des as'>8. <g des' g>16] |
  <g c g'>8 <c c'> 16 r <f, c' f>4 r8 r16 <f c' f>16[ <g c g'>8. <f c' f>16] | \break
  % up 17-18
  \stemDown <e c' e>2.~8. <es es'>16 | <<b'2 \\ {<es, es'>4 <d d'>} >> r2 |
}
downII = \relative c, \magnifyMusic 0.75 {
  % down 9-12
  c16 g' c d es g c d es d c g es d c g |
  c, g' c d es d c g c, g' c d es d c g |
  c, g' c d es g c d es d c g es d c g |
  c, g' c d es d c g c, g' c d es d c g |
  % down 13-16
  c, g' c d es g c d es d c g es d c g |
  c, fis c' d es d c g c, fis c' d es d c g |
  b, b' d g d' g, d b bes, bes' des g des' g, des bes |
  a, a' d f c' f, c a as, as' c f c' f, c as |
  % down 17-18
  g, g' c b des c d cis es d e dis f e ges f |
  g! fis as g bes! as g f es d c b as g f d | 
}


\score {
  \new PianoStaff << 
    \new Staff = "up" {
      \clef treble \KEYTIME 
      {
        \upI % 1-8
        \upII % 9-18
      }
    }
    \new Staff = "down" {
      \clef bass \KEYTIME
      {
        \downI % 1-8
        \downII % 9-18
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