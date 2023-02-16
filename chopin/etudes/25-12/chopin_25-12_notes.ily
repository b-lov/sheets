% 1-14
upI = \relative c' {
  <es g es'>1 | <d as' d> | <f c' f> | <es g es'> | <d as' d> | <es as es'> | % 1-6
  <c es c'>4 <c es c'> <c es bes'> <c es as> | % 7
  <b d g> <bes des g> <a c f> <as b f'> | % 8
  <es' g es'>1 | <d as' d> | <f c' f> | <e c' e> | % 9-12
  <as des as'> | <g b g'> | % 13-14
}
downI = \relative c {
  <c g' c>1 | <c f c'> | <c as' c> | <c g' c> | <c f c'> | <c f b> | % 1-6
  <c g' c>4 <c g' c>4 <c g' c>4 <c g' c>4 | % 7
  <c g' b> <c g' bes> <c f a> <c f as> | % 8
  <c g' c>1 | <c f c'> | <c as' c> | <c g' c> | % 9-12
  <f des' f> | <g d'! f>2. <g d'>4 | % 13-14
  \break
}

% 15-30
upII = \relative c' {
  <e g e'>1~ | <e g e'>4 <e g e'> <d g d'> <f g g'> | % 15-16
  <e g e'>1~ | <e g e'>4 <e g e'> <d g d'> <c g' c> | % 17-18
  <d g d'>1~ | <d g d'>4 <d g d'> <c f c'> <c f a> | % 19-20
  <c f c'>1 | <c e c'>1 | % 21-22
  <c es! c'>1~ | <c es c'>4 <c es c'> <bes es bes'> <des es es'> | % 23-24
  <c es c'>1~ | <c es c'>4 <c es c'> <bes es bes'> <as es' as> | % 25-26
  <bes es bes'>1~ | <bes es bes'>4 <bes es bes'> <as des as'> <as des f> | % 27-28
  <as des as'>1 | <as c as'>2 <fis c' fis> | % 29-30
}
downII = \relative c {
  <c g' c>1~ | <c g' c>4 <c g' c> <c g' b> <c g' d'> | % 15-16
  <c g' c>1~ | <c g' c>4 <c g' c> <c g' b> <c g' a> | % 17-18
  <c g' b>1~ | <c g' b>4 <c g' b> <c f a> <c f a> | % 19-20
  <c as'! c>1 | <c g' c> | % 21-22
  \break
  <as es' as>1~ | <as es' as>4 <as es' as> <as es' g> <as es' bes'> | % 23-24
  <as es' as>1~ | <as es' as>4 <as es' as> <as es' g> <as es' f> | % 25-26
  <as es' g>1~ | <as es' g>4 <as es' g> <as des f> <as des f> | % 27-28
  <as fes' as>1 | <as es' as>2 <as d! as'> | % 29-30
  \break
}

% 31-46
upIII = \relative c' {
  <g b g'>1 | <as c as'> | <c f c'> | <b f' b> | % 31-34
  <b f' b> | <c f c'> | <es fis es'> | <d g d'> | % 35-38
  <d as' d> | <es as es'> | <g c g'> | <f c' f>2 <f b f'> | % 39-42
  <as b as'>1 | <g b g'> | % 43-44
  <g, b g'>2 <g c g'> | <g cis g'> <g cis g'>4 <g d' g> | % 45-46
}
downIII = \relative c {
  <g d' g>1 | <g es' g> | <as d as'> | <g d' g> | % 31-34 
  <g d' g> | <as f' as> | <a fis' a> | <bes g' bes> | % 35-38
  <b f' b> | <c f c'> | <es as es'> | <d as' d> | % 39-42
  <g d' f> | <g d' f> | % 43-44
  \break
  <g, d' g>2 <as c as'> | <a cis a'> <bes c bes'>4 <b d b'> | % 45-46
}

% 47-54
upIV = \relative c' {
  <es g es'>1 | <d as' d> | <f c' f> | <es g es'> | % 47-50
  <d as' d> | <es as es'> | % 51-52
  <c es c'>4 <c es c'> <c es bes'> <c es as> | % 53
  <b d g> <bes des g> <a c f> <as b f'> | % 54
}
downIV = \relative c {
  <c g' c>1 | <c f c'> | <c as' c> | <c g' c> | % 47-50
  <c f c'> | <c f b> | % 51-52 
  <c g' c>4 <c g' c>4 <c g' c>4 <c g' c>4 | % 53
  <c g' b> <c g' bes> <c f a> <c f as> | % 54
  \break
}

% 55-70
upV = \relative c' {
  <es g es'>1 | <d as' d> | <e bes' e> | <f as f'> | % 55-58
  <f as f'> | <e bes' e> | <f b f'> | <g b g'>2 <as b as'> | % 59-62
  <g c g'>1 | <c g' c> | % 63-64
  <bes c bes'>2 <as c as'> | <f as f'> <d as' d> | % 65-66
  <g c g'>1 | <as c as'> | <as b as'> | <g b g'> | % 67-70
}
downV = \relative c {
  <c g' c> | <c f c'> | <c g' c> | <des as' des> | % 55-58
  <des as' des> | <des g des'> | <des as' des> | <d! g d'>2 <d f d'> | % 59-62
  <es c' es>1 | <e c' e> | <f c' f>2 <f c' f> | <f c' f>2 <f c' f> | % 63-66
  <g es' g>1 | <g es' g>1 | <g d' f> | <g d' f>2. <g d'>4 | % 67-70
  \break
}

% 71-83
upVI = \relative c' {
  <e g e'>1~ | <e g e'>4 <e g e'> <d g d'> <f g g'> | % 71-72
  <e g e'>1~ | <e g e'>4 <e g e'> <d g d'> <c g' c> | % 73-74
  <d g d'>1~ | <d g d'>4 <d g d'> <c f c'> <c f a> | % 75-76
  <c f c'>1~ | <c f c'>4 <c f c'> <c f c'> <c f d'> | % 77-78
  <c f c'>1~ | <c f c'>4 <c f c'> <c f c'> <c f d'> | % 79-80
  <e g e'>1 | <e g e'> | % 81-82
  \change Staff = "down" \stemUp e,4 r \change Staff = "up" <e' g c e>2 | % 83
  \fine
}
downVI = \relative c {
  <c g' c>1~ | <c g' c>4 <c g' c> <c g' b> <c g' d'> | % 71-72
  <c g' c>1~ | <c g' c>4 <c g' c> <c g' b> <c g' a> | % 73-74
  <c g' b>1~ | <c g' b>4 <c g' b> <c f a> <c f a> | % 19-20
  <c as'! c>1~ | <c as' c>4 <c as' c>4 <c as' c>4 <c as' c>4 | % 77-78
  <c as'! c>1~ | <c as' c>4 <c as' c>4 <c as' c>4 <c as' c>4 | % 79-80
  <c g' c>4 <g g' c>4 <c g' c>4 <g g' c>4 | % 81
  <c g' c>4 <g g' c>4 <c g' c>4 <g g' c>4 | % 82
  \stemDown <c,, c'>4r4 <c'' g' c>2 | % 83
  \fine
}