% 1-16
upI = \relative c' {
  <c g' c e>1 | <c g' c e> | % 1-2
  <c a' c f> | << { e'2. d4 } \\ { <c, a' c>1 } >> | % 3-4
  << {b'2. a4} \\ { <b, g' d'>1 } >> | <c fis a d>1 | % 5-6
  <c f! as d> | << { d'2. dis4} \\ { <b, f' g>1 } >> | % 7-8
  <c g' c e>1 | <c g' c e> | <c f c' f> | <c fis c' e> | % 9-12
  <c g' c d> | <b g' b d> | <d g d' e> | <c g' c e> | % 13-16
}

% 17-32
upII = \relative c' {
  <e c' e f> | <d b' d f> | <d b' d e> | <c a' c e> | % 17-20
  <c a' c e> | <b a' b dis> | <b a' b e> | <b gis' b e> | % 21-24
  <e a cis g'!> | << a c! \\ { e,2. d4 } \\ { g'2. fis4 } >> | % 25-26
  <d, g c f!>1 | <d g b f'> | % 27-28
  << c g' e' \\ { bes2. c4 } >> | <c, es bes' es>1 | % 29-30
  <c es a es'> | <ces es as es'> | % 31-32
}

upIII = \relative c' {
  % 33-40
  <bes f' as d> | <bes e! gis d'> | <a e' a cis> | <a e' a cis> |
  <a d fis c'!> | <<g d' f! \\ { \stemUp c'2. b4}>> |
  <g, c e b'>1 | <<f c' e \\ { \stemUp b'2. a4}>> |
  % 41-48
  <f, b d a'>1 | <e' b' d g>2 <<e a g' \\ {c,4 e4}>> |
  <d, a' c f>2 <<d g f' \\ {b,4 d4}>> | <c, g' b e>2 <<c f e' \\ {a,4 c4}>> |
  <b, f' a d>1 | <b fis' a dis> | <b e gis e'> | <b e gis e'>2. <d g! b f'>4 |
}

upIV = \relative c' {
  % 49-56
  <c g' c e>1 | <c g' c e> | <c a' c f> | <<c a' c \\ { \stemUp e2. d4 }>> |
  <<b,1 g' d' \\ {b2. a4}>> | <c, fis a d>1 |
  <c f! as d> | <<b f' g \\ { \stemUp d'2. dis4}>> |
  % 57-64
  <c, g' c e>1 | <c g' c e> | <c f c' f> | <<c fis c' \\ { \stemUp e2 es}>> |
  <c, g' c d>1 | <b g' b d> | <c a' c d> | <c a' c es>2 <b a' b dis> |
}

upV = \relative c' {
  % 65-72
  <b gis' b e>1 | <b gis' b e>1 | <d a' c f> | <d g b f'> |
  <c g' c e>2
  << bes'2 c g' \\ {c,,4 e} >> | <es a c fis>2 <d gis b f'> |
  <c g' c e>1 | <c fis a es'>2 <b f' as d> |
  % 73-79
  <bes e! g des'>1 | <<a es' fis \\ {des'2. c4}>> |
  <as, d! f! c'>1 | <g d' f b> | <g e' g c> | <g e' g c> | r1 |
  \fine
}

downI = \relative c, {
  % 1-8
  <c c'>1~ | <c c'> | <f, f'> | <fis fis'> |
  <g g'>2 <fis fis'>4 <e e'> | <d d'>1 | <g g'>~ | <g g'> | \break
  % 9-16
  <c c'>1~ | <c c'> | <a a'>~ | <a a'> |
  <g g'>~ | <g g'> | <c c'>~ | <c c'> | \break 
  % 17-24
  <a a'> | <b b'>2 <a a'> | <gis gis'>1 | <a a'>2 <g! g'!> |
  <f f'>1~ | <f f'> | <e e'>~ | <e e'> |
  % 25-32
  <a a'> | <d d'> | <g, g'>~ | <g g'> | \break
  <c c'> | <ges ges'> | <f f'> | <ces' ces'> |
  % 33-40
  <bes>~ | <bes bes'> | <a a'>~ | <a a'> | \break
  <d> | <g, g'> | <c> | <f, f'> |
  % 41-48
  <b> | <e, e'>2 <a a'> | <d, d'> <g g'> | <c, c'> <f f'> |
  <b b'>2. b4~ | <b b'>2. b4 | <e, e'>1~ | <e e'>2. <d d'>4 | \break
  % 49-56
  <c c'~>1 | <c' c'> | <f, f'> | <fis fis'> |
  <g g'>2 <fis fis'>4 <e e'> | <d d'>1 | <g g'>~ | <g g'> | \break
  % 57-64
  <c c'>1~ | <c c'> | <a a'>~ | <a a'>2. <as as'>4 |
  <g g'>1~ | <g g'> | <fis fis'> | <f! f'!> |
  % 65-72
  <e e'~> | <e' e'> | <d> | <g, g' > | \break
  <c~> | <c c'> | <c> | <g g'> |
  % 73-79
  <g g'>~ | <g g'> | <g g'>~ | <g g'> |
  <c, c'>~ | <c c'> | <c c'> |
  \fine
}