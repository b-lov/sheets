% 1-14
upI = \relative c' {
  <es g es'>1 | <d as' d> | <f c' f> | <es g es'> | <d as' d> | <es as es'> | % 1-6
  <c es c'>4 <c es c'> <c es bes'> <c es as> | % 7
  <b d g> <bes des g> <a c f> <as b f'> | % 8
  <es' g es'>1 | <d as' d> | <f c' f> | <e c' e> | <as des as'> | <g b g'> | % 9-14
}
downI = \relative c, {
  <c g' c>1 | <c f c'> | <c as' c> | <c g' c> | <c f c'> | <c f b> | % 1-6
  <c g' c>4 <c' g' c>4 <c g' c>4 <c g' c>4 | % 7
  <c g' b> <c g' bes> <c f a> <c f as> | % 8
  <c, g' c>1 | <c f c'> | <c as' c> | <c g' c> | % 9-12
  <f des' f> | <g d'! f>2. <g d'>4 | % 13-14
  \break
}

% 
upII = \relative c' {
  <e g e'>1~ | <e g e'>4 <e g e'> <d g d'> <f g g'> | % 15-16
}
downII = \relative c, {
}