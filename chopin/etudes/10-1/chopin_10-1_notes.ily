% 1-16
upI = \relative c' {
  <c g' c e>1 | 1 | % 1-2
  <c a' c f> | << { e'2. d4 } \\ { <c, a' c>1 } >> | % 3-4
  << { b'2. a4 } \\ { <b, g' d'>1 } >> | <c fis a d>1 | % 5-6
  <c f! as d> | << { d'2. dis4 } \\ { <b, f' g>1 } >> | % 7-8
  <c g' c e>1 | <c g' c e> | <c f c' f> | <c fis c' e> | % 9-12
  <c g' c d> | <b g' b d> | <d g d' e> | <c g' c e> | % 13-16
}
downI = \relative c, {
  <c c'>1~ | <c c'> | <f, f'> | <fis fis'> | % 1-4
  <g g'>2 <fis fis'>4 <e e'> | <d d'>1 | <g g'>~ | <g g'> | % 5-8
  <c c'>1~ | <c c'> | <a a'>~ | <a a'> | % 9-12
  <g g'>~ | <g g'> | <c c'>~ | <c c'> | % 13-16
  \break 
}

% 17-36
upII = \relative c' {
  <e c' e f> | <d b' d f> | <d b' d e> | <c a' c e> | % 17-20
  <c a' c e> | <b a' b dis> | <b a' b e> | <b gis' b e> | % 21-24
  <e a cis g'!> | << { <a c!> } \\ { e2. d4 } \\ { g'2. fis4 } >> | % 25-26
  <d, g c f!>1 | <d g b f'> | % 27-28
  << { bes'2. c4 } \\ { <c, g' e'>1 } >> | <c es bes' es>1 | % 29-30
  <c es a es'> | <ces es as es'> | % 31-32
  <bes f' as d> | <bes e! gis d'> | <a e' a cis> | <a e' a cis> | % 33-36
}
downII = \relative c, {
  <a a'> | <b b'>2 <a a'> | <gis gis'>1 | <a a'>2 <g! g'!> | % 17-20
  <f f'>1~ | <f f'> | <e e'>~ | <e e'> | % 21-24
  <a a'> | <d d'> | <g, g'>~ | <g g'> | % 25-28
  \break
  <c c'> | <ges ges'> | <f f'> | <ces' ces'> | % 29-32
  <bes>~ | <bes bes'> | <a a'>~ | <a a'> | % 33-36
}

% 37-48
upIII = \relative c' {
  <a d fis c'!> | << { c'2. b4 } \\ { <g, d' f!>1 } >> | % 37-38
  <g c e b'>1 | << { b'2. a4 } \\ { <f, c' e>1 } >> | % 39-40
  <f b d a'>1 | % 41
  <e' b' d g>2 << { c'4 e } \\ { <e, a g'>2 }>> | % 42
  <d a' c f>2 << { b'4 d } \\ { <d, g f'>2 } >> | % 43
  <c g' b e>2 << { a'4 c4 } \\ { <c, f e'>2 } >> | % 44
  <b f' a d>1 | <b fis' a dis> | % 45-46
  <b e gis e'> | <b e gis e'>2. <d g! b f'>4 | % 47-48
}
downIII = \relative c, {
  <d>1 | <g, g'> | <c> | <f, f'> | % 37-40
  <b> | <e, e'>2 <a a'> | % 41-42
  \break
  <d, d'> <g g'> | <c, c'> <f f'> | % 43-44
  <b b'>2. b4~ | <b b'>2. b4 | <e, e'>1~ | <e e'>2. <d d'>4 | % 45-48
}

% 49-68
upIV = \relative c' {
  <c g' c e>1 | 1 | % 49-50
  <c a' c f> | << { e'2. d4 } \\ { <c, a' c>1 } >> | % 51-52
  << { b'2. a4 } \\ { <b, g' d'>1 } >> | <c fis a d>1 | % 53-54
  <c f! as d> | << { d'2. dis4 } \\ { <b, f' g>1 } >> | % 55-56
  <c g' c e>1 | 1 | % 57-58
  <c f c' f> | <<  { e'2 es } \\ { <c, fis c'>1 } >> | % 59-60
  <c g' c d>1 | <b g' b d> | % 61-62
  <c a' c d> | <c a' c es>2 <b a' b dis> | % 63-64
  <b gis' b e>1 | 1 | <d a' c f> | <d g b f'> | % 65-68
}
downIV = \relative c,, {
  <c c'~>1 | <c' c'> | <f, f'> | <fis fis'> | % 49-52
  <g g'>2 <fis fis'>4 <e e'> | <d d'>1 | <g g'>~ | <g g'> | % 53-56
  \break
  <c c'>1~ | <c c'> | <a a'>~ | <a a'>2. <as as'>4 | % 57-60
  <g g'>1~ | <g g'> | <fis fis'> | <f! f'!> | % 61-64
  <e e'~> | <e' e'> | <d> | <g, g' > | % 65-68
  \break
}

% 69-79
upV = \relative c' {
  <c g' c e>2 << { <bes' c g'>2 } \\ { c,4 e } >> | % 69
  <es a c fis>2 <d gis b f'> | % 70
  <c g' c e>1 | <c fis a es'>2 <b f' as d> | % 71-72
  <bes e! g des'>1 | <<  { des'2. c4 } \\ { <a, es' fis>1 } >> | % 73-74
  <as d! f! c'>1 | <g d' f b> | <g e' g c> | 1 | r1 | % 75-79
  \fine
}
downV = \relative c, {
  <c~> | <c c'> | <c> | <g g'> | % 69-72
  <g g'>~ | <g g'> | <g g'>~ | <g g'> | % 73-76
  <c, c'>~ | <c c'> | <c c'> | % 77-79
  \fine
}