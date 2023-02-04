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
  % up 9-14
  c8 \change Staff = "up" \stemNeutral r8 r4 r2 |
  r2 r8 r16 <c'' c'>[ <d d'>8. <es es'>16] |
  <es es'>2 r8 r16 <g, c es g>16[ <g c es g>8. <g c es g>16] |
  <as c es as>2~ <g c es g>8 r16 <c c'>[ <d d'>8. <es es'>16] | \break
  <es es'>2 r8 r16 <g, c es g>16[ <g c es g>8. <g c es g>16] | <a c es a~>1 |
  % up 15-18
  <d a' d>8 r8 <g, d' g>4 r8 r16 <g des' g>16[ <as! des as'>8. <g des' g>16] |
  <g c g'>8 <c c'> 16 r <f, c' f>4 r8 r16 <f c' f>16[ <g c g'>8. <f c' f>16] | \break
  \stemDown <e c' e>2.~8. <es es'>16 | <<b'2 \\ {<es, es'>4 <d d'>} >> r2 |
}
downII = \relative c, \magnifyMusic 0.75 {
  % down 9-14
  c16 g' c d \stemNeutral es g c d es d c g es d c g |
  c, g' c d es d c g c, g' c d es d c g |
  c, g' c d es g c d es d c g es d c g |
  c, g' c d es d c g c, g' c d es d c g |
  c, g' c d es g c d es d c g es d c g |
  c, fis c' d es d c g c, fis c' d es d c g |
  % down 15-18
  b, b' d g d' g, d b bes, bes' des g des' g, des bes |
  a, a' d f c' f, c a as, as' c f c' f, c as |
  g, g' c b des c d cis es d e dis f e ges f |
  g! fis as g bes! as g f es d c b as g f d | 
}

% 19-28
upIII = \relative c {
  % up 19-24
  r1 | r2 r8 r16 <c'' c'>[ <d d'>8. <es es'>16] | \break
  <es es'>2 r8 r16 <g, c es g>16[ <g c es g>8. <g c es g>16] |
  <as c es as>2~ <g c es g>8 r16 <c c'>[ <d d'>8. <es es'>16] |
  <es es'>2 r8 r16 <g, c es g>16[ <g c es g>8. <g c es g>16] | <a es' f a~>1 | \break
  % up 25-28
  <bes f' bes>4. <bes f' bes>4 <bes g' bes> <b g' b>8~8 |
  <c g' bes c>4 <cis b' cis> <d bes' d>8 <es b' es> <e b' e> |
  <f bes d f>2 <d f bes d>4 <<{d'8. c16} \\ es,4 f a>> |
  <d, f bes>8 r r4 r2 | \break
}
downIII = \relative c, \magnifyMusic 0.75 {
  % down 19-24
  c16 g' c d es g c d es d c g es d c g |
  c, g' c d es d c g c, g' c d es d c g |
  c, g' c d es g c d es d c g es d c g |
  c, g' c d es d c g c, g' c d es d c g |
  c, g' c d es g c d es d c g es d c g |
  c, f c' d es d c g c, f c' d es d c g |
  % down 25-28
  d bes' ces bes bes' bes, ces bes es, bes' ces bes bes' bes, ces bes |
  e, bes' c! bes bes' bes, c! bes f bes bes' bes, ges bes bes' bes, |
  f bes d f bes d g f f d bes g f es c f, |
  bes, des'[ c ces] bes c ces bes a ces bes a gis bes a gis |
}

\score {
  \new PianoStaff << 
    \new Staff = "up" {
      \clef treble \KEYTIME 
      {
        \upI % 1-8
        \upII % 9-18
        \upIII % 19-28
      }
    }
    \new Staff = "down" {
      \clef bass \KEYTIME
      {
        \downI % 1-8
        \downII % 9-18
        \downIII % 19-28
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