% 1-4
upI = \relative c'' {
  \partial 4 es4 | <es, as c es>1 | <es as c f>4 <es as c es>2. | % 1-2
  <es bes' des es>2 <es bes' des f>4 <es bes' des es> | % 3
  <es c' es bes'> <es c' es as> <e c' e as>2 | % 4
}
downI = \relative c, {
  \partial 4 r4 | <as es'' as c>4 <as' es' as c>2. | <as es' as c>1 | % 1-2
  <as es' g des'>1 | <as es' as c>2 <as e' as c>2 | % 3-4
}

% 5-8
upII = \relative c'' {
  <as des f as>2. <g des' f bes>4 | % 5
  <g c f c'>4 <g c e bes'> <as c f as> <f ces' es f> | % 6
  <f bes es f> <f bes es g> <f as bes d as'> <bes, f' as bes> | % 7
  <bes es as bes> <bes es as c> <bes des es g des'> <es, bes' des es> | % 8
}
downII = \relative c, {
  <des as'' des f>4 <des' as' des f>2 <des g des' f>4 | % 5
  <c g' c f> <c g' c e> <f as c f> <ces f as es'> | % 6
  <bes f' as es'>2 <bes f' as d>2 | % 7
  <es, bes' es des'!>4 <es bes' es as>4<es bes' es g>4 <es bes' des g>4 | % 8
  \break
}

% 9-12
upIII = \relative c'' {
  <es, as c es>1 | <es as c f>4 <es as c es>2. | % 9-10
  <es bes' des es>4 <es bes' des bes'> <es bes' des c'> <es bes' des g> | % 11
  <es c' es bes'> <es c' es as> <e c' e as>2 | % 12
}
downIII = \relative c, {
  <as es'' as c>4 <as' es' as c>2. | <as es' as c>1 | % 9-10
  <as es' g des'>1 | <as es' as c>2 <as e' as c>2 | % 11-12
}

% 13-16
upIV = \relative c'' {
  <as des f as>2. <g des' f bes>4 | <g c f c'>4 <g c f g>4 <g c e g>2 | % 13-14
  <f b e g>4 <f b d g>4 <f b f' g>4 <f b e g>4 | % 15
  <c f g d'> <c e g c> <c d g c> <c e g c> | % 16
}
downIV = \relative c, {
  <des as'' des f>4 <des' as' des f>2 <des g des' f>4 | <c g' c f>2 <c g' c e> | % 13-14
  <g d' g b>2 <g d' g d'> | <c, g' c g'>1 | % 15-16
  \break
}

% 17-20
upV = \relative c' {
  <c g' bes c>2 <c g' bes des!>4 <c g' bes c> | % 17
  <c f bes c>4 <c f as d> <c g' c e> <c as' c f> | % 18
  <es bes' des es>2 <es bes' des f>4 <es bes' des es> | % 19
  <es as des es> <es as c f> <es as c g'> <es as c as'> | % 20
}
downV = \relative c, {
  <e c' bes'>1 | <f c' bes'>4 <f c' as'> <f c' g'> <f c' f> | % 17-18
  <g es'! des'>1 | <as es' des'>4 <as es' c'> <as es' bes'> <as es' as> | % 19-20
}

% 21-24
upVI = \relative c'' {
  <g c es g>2 <as c d as'>4 <f b d f> | % 21
  <e g c e> <d as' b d> <f as b f'> <e as b e> | % 22
  <e g c e> <d gis b d> <f gis b f'> <e gis b e> | % 23
  <e a cis e> <d a' b d> <fis a b fis'> <e gis d' e> | % 24
}
downVI = \relative c, {
  <es g' c> <c' g' c> <f, d' c'> <g d' g b> | % 21
  <c e g c> <c f as b> <c f as d> <c e as d> | % 22
  \break
  <c e g c> <b f' gis b> <b f' gis d'> <b e gis d'> | % 23
  <a e' a cis> <a fis' a b> <a fis' a d> <a e' gis d'> | % 24
}

% 25-29
upVII = \relative c' {
  <e a cis e> <a cis e a> <a dis fis b> <as es' ges c> | % 25
  <f des' f c'> <f des' f bes> <f bes des des'> <f bes des f> | % 26
  <es c' es bes'> <es c' es as> <es as c c'> <es as c es> | % 27
  <des g bes es> <des g bes e> <des g bes f'> <des g bes es> | % 28
  <des f as des> <c f as c> <c es f c'> <c' es f c'> | % 29
}
downVII = \relative c {
  <a e' a cis>2 <a dis fis c'>4 <as es' ges c> | % 25
  <des, as'' bes des>4 <des' as' bes des>4
  <des, as'' bes des>4 <des' as' bes des>4 | % 26
  <es, es' as c> <c' es as c> <es, es' as c> <c' es as c> | % 27
  <es, es' g es'> <bes' es g es'> <es, es' g es'> <bes' es g es'> | % 28
  <f f' as> <c' f as> <f, f' a> <c' f a> | % 29
  \break
}

% 30-35
upVIII = \relative c' {
  <f des' f c'> <f des' f bes> <fes bes des des'> <fes bes des fes> | % 30
  <es c' es bes'> <es c' es as> <es as c c'> <es as c es> | % 31
  <es a c es> <es a c f> <es a c ges'> <es a c f> | % 32
  <des bes' des f> <f bes des g!> <f b d as'> <f b d g> | % 33
  <es c' es g> <as c es as> <a c es a> <es' a c ges'> | % 34
  <bes f' as! f'> <bes f' as! bes> <bes fes' as des!> <g des' es g> | % 35
}
downVIII = \relative c, {
  <bes f'' bes des>4 <bes' f' bes des> <bes, fes'' as des> <bes' fes' as des> | % 30
  <es, es' as c> <c' es as c> <es, es' as c> <c' es as c> | % 31
  <es, a' c> <es' a c> <es, a' c> <es' a f'> | % 32
  <es, bes'' f'> <es' bes' des> <es, b'' d> <es' b' g'> | % 33
  <es, c'' g'> <es' c' es> <es, c'' ges'> <es' c' es a> | % 34
  <es bes' d as'>2 <es bes' des as'>4 <es bes' des es>4 | % 35
  \break
}

% 36-43
upIX = \relative c' {
  <es as c as'> <es as c es>2. | % 36
  <es bes' des f>4 <es bes' des es> <es bes' des c'> <es bes' des g> | % 37
  <es as c as'> <es as c es>2. | % 38
  <es bes' des f>4 <es bes' des es> <es bes' des f'> <es bes' des g> | % 39
  <es as c as'> <es as c es> <es as c f> <es as c es> | % 40
  <des es as des> <c es as c> <des es as des> <c es as c> | % 41
  <bes c es bes'> <as c es as> <bes c es bes'> <as c es as> | % 42
  <bes c es bes'> <as c es as> <bes c es bes'> <as c es as> | % 43
}
downIX = \relative c {
  <as es' as c>1 | <as es' g des'> | <as es' as c> | <as es' g des'> | % 36-39
  <as es' as c> | <es as es' as> | <as, es' as es'> | <as es' as es'> | % 40-43
  \break
}

% 44-49
upX = \relative c {
  \clef bass <c es as c es>4 \clef treble
  <as'' c es as c es> <c es as c es as> <as c es as c es> | % 44
  <c es as c es as> <as c es as c es> <c es as c es as> <as c es as c es> | % 45
  <c es as c es as> <as c as' c>2. | <as c as' c>1 | % 46-47
  as4 <as' as'> r <es, c'> | <c as'>1 | % 48-49
  \fine
}
downX = \relative c, {
  <as es' as c es as>4 \clef treble
  <c'' es as c es as> <es as c es as c> <as, es' as c es as> | % 44
  <es' as c es as c> <as, es' as c es as>
  <es' as c es as c> <as, es' as c es as> | % 45
  <es' as c es as c> <as, es' as es'>2. | <as es' as es'>1 | % 46-47
  as4 \clef bass <as, es' c'> r es | <as, as' es'>1 | % 48-49
  \fine
}