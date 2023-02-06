% 1-8
upI = \relative c' {
  \stemUp <b' d f g b>2 r | r r4 <as es' f as>8. <g g'>16 | % 1-2
  <d' f g d'>2 r | r r4 \stemDown <as es' f as>8. <g g'>16 | % 3-4
  <f' g d' f>8
  \magnifyMusic 0.75 {
    as'16[ g] f d es d  b g as g f d es d | % 5
    \stemUp b g as g f d es d
    \change Staff = "down" b g as g f d es d | % 6
    c b g' f es d es d c b bes'! as g f g f | % 7
    es d \change Staff = "up" es' d c b c b
    \change Staff = "down" as g as g f es f es | % 8
  }
}
downI = \relative c' \magnifyMusic 0.75 {
  \change Staff = "up" \stemDown r8 as'16 g f d es d
  \change Staff = "down" \stemUp b g as g f d es d | % 1
  b g as g f d es d c g c g c g c g | % 2
  b8 \change Staff = "up" \stemDown as'''16[ g] f d es d
  \change Staff = "down" \stemUp b g as g f d es d | % 3
  b g as g f d es d c g c g c g c g | % 4
  \break
  b8  \stemDown \clef treble as''''16[ g] f d es d
  \stemUp b g as g f d es d \clef bass | % 5
  \stemDown b g as g f d es d b g as g f d es d | % 6
  c b g' f es d es d c b bes'! as g f g f | % 7
  es d es' d c b c b as g as g f es f es | % 8
  \break
}

% 9-18
upII = \relative c { 
 \change Staff = "down"
  c8 \change Staff = "up" \stemNeutral r8 r4 r2 | % 9
  r2 r8 r16 <c'' c'>[ <d d'>8. <es es'>16] | % 10
  <es es'>2 r8 r16 <g, c es g>16[ <g c es g>8. <g c es g>16] | % 11
  <as c es as>2~ <g c es g>8 r16 <c c'>[ <d d'>8. <es es'>16] | % 12
  <es es'>2 r8 r16 <g, c es g>16[ <g c es g>8. <g c es g>16] | % 13
  <a c es a~>1 | % 14
  <d a' d>8 r8 <g, d' g>4 r8 r16 <g des' g>16[ <as! des as'>8. <g des' g>16] | % 15
  <g c g'>8 <c c'> 16 r <f, c' f>4 r8 r16 <f c' f>16[ <g c g'>8. <f c' f>16] | % 16
  \stemDown <e c' e>2.~8. <es es'>16 | % 17
  <<b'2 \\ {<es, es'>4 <d d'>} >> r2 | % 18
}
downII = \relative c, \magnifyMusic 0.75 {
  \stemDown
  c16 g' c d \stemNeutral es g c d es d c g es d c g | % 9
  c, g' c d es d c g c, g' c d es d c g | % 10
  c, g' c d es g c d es d c g es d c g | % 11
  c, g' c d es d c g c, g' c d es d c g | % 12
  \break
  c, g' c d es g c d es d c g es d c g | % 13
  c, fis c' d es d c g c, fis c' d es d c g | % 14
  b, b' d g d' g, d b bes, bes' des g des' g, des bes | % 15
  a, a' d f c' f, c a as, as' c f c' f, c as | % 16
  \break
  g, g' c b des c d cis es d e dis f e ges f | % 17
  g! fis as g bes! as g f es d c b as g f d | % 18
}

% 19-28
upIII = \relative c {
  r1 | r2 r8 r16 <c'' c'>[ <d d'>8. <es es'>16] | % 19-20
  <es es'>2 r8 r16 <g, c es g>16[ <g c es g>8. <g c es g>16] | % 21
  <as c es as>2~ <g c es g>8 r16 <c c'>[ <d d'>8. <es es'>16] | % 22
  <es es'>2 r8 r16 <g, c es g>16[ <g c es g>8. <g c es g>16] | <a es' f a~>1 | % 23-24
  <bes f' bes>4. <bes f' bes>4 <bes g' bes> <b g' b>8~8 | % 25
  <c g' bes c>4 <cis b' cis> <d bes' d>8 <es b' es> <e b' e> | % 26
  <f bes d f>2 <d f bes d>4 <<{d'8. c16} \\ es,4 f a>> | % 27
  <d, f bes>8 r r4 r2 | % 28
}
downIII = \relative c, \magnifyMusic 0.75 {
  c16 g' c d es g c d es d c g es d c g | % 19
  c, g' c d es d c g c, g' c d es d c g | % 20
  \break
  c, g' c d es g c d es d c g es d c g | % 21
  c, g' c d es d c g c, g' c d es d c g | % 22
  c, g' c d es g c d es d c g es d c g | % 23
  c, f c' d es d c g c, f c' d es d c g | % 24
  \break
  d bes' ces bes bes' bes, ces bes es, bes' ces bes bes' bes, ces bes | % 25
  e, bes' c! bes bes' bes, c! bes f bes bes' bes, ges bes bes' bes, | % 26
  f bes d f bes d g f f d bes g f es c f, | % 27
  bes, des'[ c ces] bes c ces bes a ces bes a gis bes a gis | % 28
  \break
}

% 29-40
upIV = \relative c'' {
  <b dis gis b>2. <dis, gis b dis>8. <eis eis'>16 | % 29
  <fis ais dis fis>2. <fis fis'>8. <gis gis'>16 | % 30
  <a cis fis a>2. <cis, fis a cis>8. <dis dis'>16 | % 31
  <e gis cis e>2. <e e'>8. <fis fis'>16 | % 32
  <gis dis' fis gis>2. 8. <ais ais'>16 | % 33
  <ces f! as! ces>4 <bes f' as bes>2 8. <c c'>16 | % 34
  <des g bes des>4 <c g' bes c> r2 | r1 | % 35-36
  <as' c f as>2 <f c' f>4 <c f c'> | <bes f'~ bes>2 <as f' as>4 r | % 37-38
  <as' c f as>2 <f c' f>4 <c f c'> | 2. <b f' b>8. <c c'>16 | % 39-40
}
downIV = \relative c \magnifyMusic 0.75 {
  gis,8 fisis'16[ gis] b dis ais b dis gis cisis, dis gis b fisis gis | % 29
  dis, dis''[ eis, fis] ais dis cisis, dis fis ais gisis, ais dis fis eis, fis | % 30
  fis,8 eis'16[ fis] a cis gis a cis fis bis, cis fis a eis fis | % 31
  \break
  cis, cis''[ dis, e] gis cis bis, cis e gis fisis, gis cis e dis, e | % 32
  bis dis''[ fisis, gis] a gis fis e dis cis bis a fisis gis dis gis | % 33
  d! f''![ a, bes!] ces bes as ges f es d ces a bes f bes | % 34
  \break
  e, g''[ b, c] des c bes as g f e g f e des c | % 35
  b c des c bes as g f e des c b c bes as g | % 36
  f c' f g as c f g as c f g as g f c | % 37
  \break
  des f des as f des as f des as des f des as des f | % 38
  f, c' f g as c f g as c f g as g f c | % 39
  d! f d c as f d c as f d c as c d as' | % 40
}

% 41-48
upV = \relative c' {
  <d' f b d>2 r | r r4 <as es' f as>8. <g g'>16 | % 41-42
  <f' g d' f>2 r | r r4 <as, es' f as>8. <g g'>16 | % 43-44
  <f' g d' g>8 \magnifyMusic 0.75 {
    as'16[ g] f d es d  b g as g f d es d | % 45
    \stemUp b g as g f d es d \change Staff = "down" b g as g f d es d | % 46
    c b g' f es d es d c b bes'! as g f g f | % 47
    es d \change Staff = "up" es' d c b c b
    \change Staff = "down" as g as g f es f es | % 48
  }
}
downV = \relative c' \magnifyMusic 0.75 {
  <g,, g'>8 \change Staff = "up" \stemDown as'''16[ g] f d es d
  \change Staff = "down" \stemUp b g as g f d es d | % 41
  b g as g f d es d c g c g c g c g | % 42
  b8 \change Staff = "up" \stemDown as'''16[ g] f d es d
  \change Staff = "down" \stemUp b g as g f d es d | % 43
  b g as g f d es d c g c g c g c g | % 44
  \break
  b'8 \stemDown \clef treble as'''16[ g] f d es d
  \stemNeutral b g as g f d es d \clef bass | % 45
  \stemDown b g as g f d es d b g as g f d es d | % 46
  c b g' f es d es d c b bes'! as g f g f | % 47
  es d es' d c b c b as g as g f es f es | % 48
  \break
}

% 49-58
upVI = \relative c { 
  \override TupletBracket.bracket-visibility = ##f
  \change Staff = "down" c8 \change Staff = "up" \stemNeutral r8 r4 r2 | % 49
  r2 r8 r16 <c'' c'> \tuplet 3/2 { <cis cis'>8 <d d'>8. <es es'>16 } | % 50
  <es es'>2 r8 r16 <g, c es g>16[ <g c es g>8. <g c es g>16] | % 51
  <as c es as>2~\tuplet 3/2 {<g c es g>8 <b b'>[ <c c'>]}
  \tuplet 3/2 {<cis cis'>[ <d d'>8 r16 <es es'>]} | % 52
  <es es'>2 r8 r16 <g, c es g>16[ <g c es g>8. <g c es g>16] | <a c es a~>1 | % 53-54
  <a d a' d>8\arpeggio r8 <g d' g>4 \tuplet 3/2 {r8 <g des' g> <g des' g>}
  \tuplet 3/2 {<g des' g>[ <as! des as'>8 r16 <g des' g>]} | % 55
  <g c g'>16 <c c'> r8 <f, c' f>4 \tuplet 3/2 {r8 <f c' f> <f c' f>} 
  <e c'e>16[ <f c' f> <g c g'> r32 <f c' f>32] | % 56
  \stemDown <e c' e>4 <<{c'2. b2} \\ { <es,~ es'^~>2 8. <es es'>16 | % 57
  <es es'>4 <d d'>4} >> r2 | % 58
}
downVI = \relative c, \magnifyMusic 0.75 {
  \stemDown c16 g' c d \stemNeutral es g c d es d c g es d c g | % 49
  c, g' c d es d c g c, g' c d es d c g | % 50
  c, g' c d es g c d es d c g es d c g | % 51
  c, g' c d es d c g c, g' c d es d c g | % 52
  \break
  c, g' c d es g c d es d c g es d c g | % 53
  c, fis c' d es d c g c, fis c' d es d c g | % 54
  b, b' d g d' g, d b bes, bes' des g des' g, des bes | % 55
  a, a' d f c' f, c a as, as' c f c' f, c as | % 56
  \break
  g, g' c b des c d cis es d e dis f e ges f | % 57
  g! fis as g bes! as g f es d c b as g f d | % 58
}

% 59-64
upVII = \relative c { 
  \override TupletBracket.bracket-visibility = ##f
  r1 | r2 \tuplet 3/2 {r8 <b'' b'> <c c'>}
  \tuplet 3/2 {<cis cis'>8[ <d d'>8 r16 <es es'>]} | % 59-60
  <es es'>2 r8 r16 <g, c es g>16[ <g c es g>8. <g c es g>16] | % 61
  <as c es as>2~\tuplet 3/2 {<g c es g>8 <b b'>[ <c c'>]}
  <cis cis'>16[ <d d'>16 <f f'> r32 <es es'>32] |  % 62
  <es es'>2 r8 r16 <g, c es g>16[ <g c es g>8. <g c es g>16] | <a es' a~>1 | % 63-64
}
downVII = \relative c, \magnifyMusic 0.75 {
  \stemDown c16 g' c d \stemNeutral es g c d es d c g es d c g | % 59
  c, g' c d es d c g c, g' c d es d c g | % 60
  \break
  c, g' c d es g c d es d c g es d c g | % 61
  c, g' c d es d c g c, g' c d es d c g | % 62
  c, g' c d es g c d es d c g es d c g | % 63
  c, fis c' d es d c g c, fis c' d es d c g | % 64
  \break
}

% 65-72
upVIII = \relative c'' {
  \set doubleSlurs = ##t
  <bes des bes'>2 <as bes des as'>4 <ges bes des ges>8. <f bes des f>16 | % 65
  <f bes^~ des f>2( <e bes' e>4) r | % 66
  <as ces fes as>2 <ges as ces ges'>4 <fes as ces fes>8. <es as ces es>16 | % 67
  <es as~ ces es>2( <des as' des>4) r | <g! es' g!>1 | % 68-69
  << {g'2~4. f8} \\ {g,2 2} \\ {d'1} >> | % 70
  << {f2 es} \\ g,1 c >> | % 71
  \once \set Score.connectArpeggios = ##t
  << {es8\arpeggio f16 es des8. es16 f4 as,} \\ {<f as>1\arpeggio} >> | % 72
}
downVIII = \relative c, \magnifyMusic 0.75 {
  des16 des' ges as bes as ges des des,16 des' ges as bes as ges des | % 65
  des, des' g! bes des c bes as g f e des c bes as g | % 66
  ces, ces' fes ges as ges fes ces ces, ces' fes ges as ges fes ces | % 67
  ces, ces' f! as ces bes as ges f es d! ces bes as ges f | % 68
  \break
  bes, bes' es f g f es bes bes, bes' es f g f es bes | % 69
  b, b' d g d' g, d b b, b' d g d' g, d b | % 70
  c, g' c d es g c d es d c g es d c g | % 71
  f, des' f g as des f g as g f des as f des as | % 72
}

% 73-84
upIX = \relative c' {
  <es c'>1~ | 1 | << {c'4. b8 d4} \\ {<d, f>2.} >> r4 | r1 | % 73-76
  << {c'1~} \\ {c,8 r r4 r2} >> | % 77
  << {c'2 d!} \\ {<f, as>1} >> | % 78
  <e g e'>1 | % 79
  << {c'2. d4} \\ {c,2~4 b'} \\ {as1} \\ {g2 f} >> | % 80
  <e g c e>8 \magnifyMusic 0.75 {
    as''16[ g] e c des c bes! g as g e c des c | % 81
    bes g as g e c des c \change Staff = "down"
    \stemUp bes g as g e c des c | % 82
  }
  <c f a c>2 <c f as c> | <c f g c>4 <c e g c> r2 | % 83-84
  \change Staff = "up" \fine
}
downIX = \relative c, \magnifyMusic 0.75 {
  g8 e'16[ dis] f e ges f g fis as g a gis bes a | % 73
  ces bes c b des c d cis es d e dis f e ges f | % 74
  g! fis as g bes as g f es d f es g f es d | % 75
  c b d c b as g fis g as f g es f d es | % 76
  \break
  c8 des''16[ c] bes! g as g e c des c bes g as g | % 77
  f c f c f c f c f c f c f c f c | % 78
  c'8 des'16[ c] bes g as g e c des c bes g as g | % 79
  f c f c f c f c f c f c f c f c | % 80
  c'8 \clef treble as'''16[ g] e c des c bes! g as g e c des c | % 81
  \clef bass \stemDown bes g as g e c des c bes g as g e c des c | % 82
  \normalsize <f, f'>2 2 | <c c'>4 4 r2 | % 83-84
  \fine
}