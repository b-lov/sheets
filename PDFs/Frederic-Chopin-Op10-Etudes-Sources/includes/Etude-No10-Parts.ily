%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.1"
\language "english"

\include "Global.ily"
\include "articulate.ly"

lagato = \markup \larger \italic "legato"
legatis = \markup \larger \italic "legatissimo"
stac = \markup \larger \italic "staccato"
leggieris = \markup \larger \italic "leggierissimo"
dolcis = \markup \larger \italic "dolcissimo"
rall = \markup \larger \italic "rall."
aTempo = \markup \larger \italic "a tempo"
sempre = \markup \larger \italic "sempre"
ee = \markup \larger \italic "e"
smorz = \markup \larger \italic "smorz"

slurPositionA = \tweak positions #'(4 . 0) \etc
slurPositionB = \tweak positions #'(3 . 0) \etc
slurPositionC = \tweak positions #'(4 . 0) \etc

global = {
  \time 12/8
  \key af \major
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \partial 8 s8
  s1. * 8 |
  
  \barNumberCheck 9
  ef''4 bf b c cs d |
  ef4 f ef c bf c |
  bf4 c g af g af |
  f4 g f ff ef g |
  s1. * 4 |
  
  \barNumberCheck 17
  s1. * 8 |
  
  \barNumberCheck 25
  s1. * 8 |
  
  \barNumberCheck 33
  s1. * 8 |
  
  \barNumberCheck 41
  s1. * 8 |
  
  \barNumberCheck 49
  s1. * 8 |
  
  \barNumberCheck 57
  s1. * 8 |
  
  \barNumberCheck 65
  s1. * 8 |
  
  \barNumberCheck 73
  s1. * 3 |
  s2. s8 af2 * 5/4 ~ |
  af1. |
  \bar "|."
}

rightHandLower = \relative {
  \oneVoice
  \partial 8 ef'8\(
  af8 <c af'>_2-5( bf-1) <df bf'>->_2-5( b) <d b'>(  
    c) <ef c'>( cs-1) <e cs'>->( d) <f d'>( |
  ef8) <g ef'>( f) <af f'>->( ef) <g ef'>(  
    c,) <ef c'> bf < df bf'>-> c <ef c'> |
  bf8 <df bf'> c <ef c'>-> g, <bf g'>  af <c af'> g <bf g'>-> af <c af'> |
  \stemDown
  f,8 <af f'> g <bf g'>-> f <af ff'>->  ff <g ff'>-> ef <g ef'>-> g <bf g'> |
  af8 <c af'> bf <df bf'>-> b <d b'>  c <ef c'> cs <e cs'>-> d <f d'> |
  ef8 <g ef'> f <af f'>-> ef <f ef'>  c <ef c'> bf <df bf'>-> c <ef c'> |
  ef8 <d bf'> c <ef c'>-> df <f df'>  ef <g ef'> f <af f'>-> fs <a fs'> |
  g8-> <bf g'> af <c af'>-> d, <f d'>  f <af d> e <g e'>-> e <g ef'>\) |
  
  \barNumberCheck 9
  ef8-1([ <c af'>_2-5)] bf([ <df bf'>)] b([ <d b'>)]
    c([ <ef c'>)] cs([ <e cs'>)] d([ <f d'>)] |
  ef8([ <g ef'>)] f([ <af f'>)] ef([ <g ef'>)]
    c,([ <ef c'>)] bf([ <df bf'>)] c([ <ef c'>)] |
  bf8([ <df bf'>)] c([ <ef c'>)] g,([ <bf g'>)]
    af([ <c af'>)] g([ <bf g'>)] af([ <c af'>)] |
  f,8([ <af f'>)] g([ <bf g'>)] f([ <af f'>)]
    ff([ <g ff'>)] ef([ <g ef'>)] g([ <bf g'>)] |
  af8-.[ <c af'>-.] bf-.[ <df bf'>-.] b-.[ <df b'>-.]
    c-.[ <ef c'>-.] cs-.[ <e cs'>-.] d-.[ <f d'>-.] |
  ef8-.[ <g ef'>-.] f-.[ <af f'>-.] ef-.[ <g ef'>-.]
    c,-.[ <ef c'>-.] bf-.[ <df bf'>-.] c-.[ <ef c'>-.] |
  df8-.[ <f df'>-.] ef-.[ <g ef'>-.] f-.[ <af f'>-.] \ottava 1
    g-.[ <bf g'>-.] af-.[ <cf af'>-.] a-.[ <c a'>-.] |
  bf8-.[ <df bf'>-.] c-.[ <ef c'>-.] g,-.[ <bf g'>-.]
    af->( <c af'> \ottava 0 af <c, af'> af <c af'>) |
    
  \barNumberCheck 17
  \key e \major
  \stemNeutral
  gs8^\legatis <b gs'> a <cs a'>-> gs <b gs'>  
    fs <as fs'> cs, <e cs'>-> ds <fs ds'> |
  e8 <gs e'> gs <b gs'>-> fs <a fs'>  e <gs e'> b, <ds b'>-> cs <e cs'> |
  e8 <gs e'> ds <fs ds'>-> e <gs e'>  gs <b gs'> fs <a fs'>-> gs <b gs'> |
  b8 <ds b'> a <cs a'>-> b <ds b'>  ds <fs ds'>-> cs <e cs'>-> b <ds b'> |
  gs,8([ <b gs'>)] a([ <c a'>)] gs([ <b gs'>)]
    fs([ <a fs'>)] c,([ <e c'>)] e([ <gs e'>)] |
  fs8[ <a fs'>] gs[ <b gs'>] fs[ <a fs'>]  
    e[ <gs e'>] ds[ <gs ds'>] d[ <gs d'>] |
  \key af \major
  ef[ <g ef'>] f[ <af f'>] fs <a fs'>  g[ <bf g'>] af[ <c af'>] bf[ <df bf'>] |
  c8[ <ef c'>] cs[ <e cs'>] d[ <f d'>]  
    ef[ < gf ef'>] f[ <af f'>] gf[ <bf gf'>] |
  
  \barNumberCheck 25
  gf8[ <bf gf'>] f[ <af f'>] c,[ <ef c'>]  
    ef[ <g ef'>] df[ <ff df'>] bf,[ <df bf'>] |
  bf8[ <df bf'>] bff[ <df bff'>] af[ <df af'>] 
    g,[ <c g'>] gf[ <c gf'>] ef,[ <gf ef'>] |
  df8([ <f df'>)] df8([ <f df'>)] df8([ <f df'>)]
    df8( <f df'> df8 <f df'>-> df8 <f df'>) |
  df8([ <ff df'>)] df8([ <ff df'>)] df8([ <ff df'>)]
    df( <ff df'> df <ff df'> df'-1 <ff df'>) |
  \key a \major
  cs8 <e cs'> d <fs d'> cs <e cs'>  b <ds b'> fs, <a fs'> gs <b gs'> |
  a8 <cs a'> cs <e cs'> b <d b'>  a <cs a'> e, <gs e'> fs <a fs'> |
  a8 <cs a'> gs <b gs'> a <cs a'>  cs <e cs'> b <d b'> cs <e cs'> |
  e8 <gs e'> d <fs d'> e <gs e'>  gs <b gs'> fs <a fs'> e <gs e'> |
    
  \barNumberCheck 33
  cs,8[ <e cs'>] d[ <f d'>] cs[ <e cs'>]  b[ <d b'>] f,[ <a f'>] a[ <cs a'>] |
  b8[ <d b'>] cs[ <e cs'>] b[ <d b'>]  a[ <cs a'>] gs[ <cs gs'>] g[ <cs g'>] |
  \key af \major
  af8[ <c af'>] bf[ <df bf'>] b[ <d b'>]  
    c[ <ef c'>] df[ <f df'>] ef[ <gf ef'>] |
  f8[ <af f'>] gf[ <bff gf'>] g[ <bf g'>] \ottava 1
    af[ <cf af'>] bf[ <df bf'>] cf[ <ef cf'>] |
  cf8[ < ef cf'>] bf[ <df bf'>] f,[ <af f'>]  
    af[ <cf af'>] gf[ <cf gf'>] \ottava 0 ef,[ <gf ef'>] |
  ef8[ <gf ef'>] eff[ <gf eff'>] df[ <gf df>]
    df[ <f df'>] c[ <f c'>] cf[ <f cf'>] |
  bf,8[ <d bf'>] c[ <ef c'>] cs[ <e cs'>] d <f d'> ef <g ef'> f <af f'> |
  af8 <c af'> g <bf g'> d, <f d'>  f <a f'> ef <gf ef'> c, <ef c'> |
  
  \barNumberCheck 41
  c8( <ef c'> cf <ef cf'>-> bf <ef bf'>)  c-\slurPositionA ( 
    <e c'> b <e b'>-> bf <e bf'>) |
  c8( <f c'> cf <f cf'>-> bf, <f' bf>)  bf,-\slurPositionB ( 
    <d bf'> g <bf gf'>-> f <af f'>) |
  ef8( <g ef'> ff-1 <af ff'> ff'-1 \ottava 1 <af ff'> ff <af, ff'> \ottava 0
    ff <af, ff'> ff <af ff'>) |
  ef8( <g ef'> ff <af ff'> ff' <af ff'> \ottava 1 ff' <af ff'> ff <af, ff'>
    \ottava 0 ff <af, ff'>) |
  ef8-1 <g ef'> ef'-1 <g ef'> ef <g, ef>  
    gf-1 <a gf'> gf'-1 <a gf'> gf <a, gf'> |
  f8 <af f'> f' <af f'> f <af, f'>  af <cf af'> af' <cf af'> af <cf, af'> |
  g8 <bf g'> g' <bf g'> g <bf, g'>  bf <df bf'> bf' <df bf'> bf <df, bf'> |
  a8 <c a'> a' <c a'> a <c, a'>  c <ef c'> c' <ef c'> c <ef, c'> |
    
  \barNumberCheck 49
  df8 <ef df'> df' \ottava 1 <ef df'> \repeat unfold 4 { df <ef df'> } |
  \repeat unfold 6 { df8 <ef df'> } |
  df8 <ef df'> df <ef c'> c <ef c'> c <d c'> c <d b'> b <d b'> |
  cf8 <df cf'> cf <df bf'> bf <df bf'>  bf <c bf'> bf <c a'> a <c a'> |
  a8 <b a'> \repeat unfold 5 { af <cf af'> } |
  af8^\rall <cf af'> gf \ottava 0 <bff gf'> ff <af ff'>  
    eff <gf eff'> cf, <ef cf'> af, <cf af'> |
  af8^\aTempo <c af'> bf <df bf'> b <d b'>  c <ef c'> cs <e cs'> d <f d'> |
  ef8 <g ef'> f <af f'> ef <g ef'>  c, <ef c'> bf <df bf'> c <ef c'> |
  
  \barNumberCheck 57
  bf8 <df bf'> c <ef c'> g, <bf g'>  af <c af'> g <bf g'> af <c af'> |
  \stemDown
  f,8 <af f'> g <bf g'> f <af f'>  ff <g ff'> ef <g ef'> g <bf g'> |
  \stemNeutral
  af8([ <c af'>)] bf([ <df bf'>)] b([ <d b'>)] 
    c([ <ef c'>)] cs([ <e cs'>)] d([ <f d'>)] |
  ef8([ <g ef'>)] f([ <af f'>)] ef([ <g ef'>)]
    c,([ <ef c'>)] bf([ <df bf'>)] c([ <ef c'>)] |
  df8 <f df'>] ef[ <g ef'>] f[ <af f'>]  
    e[ <bf' g'>] f[ <c' af'>] g[ <df' bf'>] |
  g,8[ <df' bf'>] c[ <ef c'>] e,[ <g e'>] 
    e[ <bf' g'>] f[ <af f'>] df,[ <f df'>] |
  f8[ <af f'>] ff[ <af ff'>] ef[ <af ef'>] 
    ef[ <g ef'>] d[ <g d'>] df[ <g df'>] |
  \ottava 1 df'8[ <f df'>] c[ <f c'>] g,[ <bf g'>] 
    bf[ <df bf'>] af[ <cf af'>] \ottava 0 f,[ <af f'>] |
  
  \barNumberCheck 65
  f8[ <af f'>] ff[ <af ff'>] ef[ <af ef'>]  
    f[ <a f'>] ff[ <a ff'>] ef[ <a ef'>] |
  f8[ <bf f'>] ff[ <bf ff'>] ef,[ <bf' ef>]
    ef,[ <c' ef>] ef,[ <df' ef>] ef,[ <g ef'>] |
  f8[ <af f'>] ff[ <af ff'>] ef[ <af ef'>]
    f[ <a f'>] ff[ <a ff'>] ef[ <a ef'>] |
  d,8[ <af' f'>] g[ <bf g'>] f[ <c' af'>]
    \ottava 1 ef,[ <df' bf'>] c[ <ef c'>] bf[ <df g>] |
  af8 <c af'> bf <df bf'> b <d b'>  c <ef c'> cs <e cs'> d <f d'> |
  ef8 <g ef'> f <af f'> ef <g ef'>  c, <ef c'> bf <df bf'> c <ef c'> |
  bf8 <df bf'> c <ef c'> g, <bf g'>  af <c af'> g <bf g'> af <c af'> |
  \ottava 0 ef,8 <g ef'> f <af f'> g <bf g'>  
    c, <ef c'> bf <df bf'> c <ef c'> |
    
  \barNumberCheck 73
  bf8 <df bf'> c <ef c'> g, <bf g'>  af <c af'> df <f df'> c <ef c'> |
  af,8 <c af'> df <f df'> c <ef c'>  af, <c af'> df <f df'> c <ef c'> |
  af,8 <c af'> af' <c af'> af <c, af'>  
    af <c, af'> af <df ff af> af' <df ff af> |
  af8 <c ef af> af' <c ef af> af <c, ef af> \voiceTwo 
    af <c, ef af> af <bf df> \set tieWaitForNote = ##t <af~ c> <bf df> |
  <af c ef>1. |
}

rightHand = <<
  \clef treble
  \global
  \tempo "Vivace assai" 4. = 152
  \mergeDifferentlyHeadedOn
  \new Voice { \voiceOne \rightHandUpper }
  \new Voice { \voiceTwo \rightHandLower }
>>

leftHandUpper = \relative {
  \oneVoice
  \partial 8 r8
  \voiceThree
  \repeat unfold 3 { s4. ef2*3/4 s4. ef2*3/4 | }
  s4. af4 s8 s2. |
  \repeat unfold 2 { s4. ef2*3/4 s4. ef2*3/4 | }
  s4. af4 s8 s2. |
  s2. s4. df |
  
  \barNumberCheck 9
  s1. * 8 |
  
  \barNumberCheck 17
  s1. * 8 |
  
  \barNumberCheck 25
  s1. * 8 |
  
  \barNumberCheck 33
  s1. * 8 |
  
  \barNumberCheck 41
  s1. * 8 |
  
  \barNumberCheck 49
  s1. |
  s2. s4. \voiceFour <bff' df gf^~>4.^> |
  \voiceThree <ef gf>2. <d f> |
  <df ff>2. <c ef> |
  <cf ef>2. s2. |
}

leftHandLower = \relative {
  \partial 8 s8
  af,8-.^([ c'_\lagato af ef ef' af,)]  af,-.^([ c' af ef ef' af,)] |
  af,8[ df' g, ef ef' g,]  af,[ c' af ef ef' af,] |
  af,8[ df' g, ef ef' g,]  af,[ c' af ef ef' af,] |
  bf,8[ d' bf af d af]  ef,[ df'' bf ef, df' bf] |
  af,8[ c' af ef ef' af,]  af,[ c' af ef ef' af,] |
  af,8[ df' g, ef ef' g,]  af,[ c' af ef ef' af,] |
  \stemNeutral
  bf,8[ d'^( bf af d bf)]  ef,[ \clef treble g' ef c a' ef] |
  bf8[ bf' ef, bf af' d,]  \clef bass ef,[ g' ef! df g ef] |
  
  \barNumberCheck 9
  \oneVoice
  af,,8[_\legatis c' af ef ef' af,]  af,[ c'af ef ef' af,] |
  af,8[ df' g, ef ef' g,]  af,[ c' af ef ef' af,] |
  af,8[ df' g, ef ef' g,]  af,[ c' af ef ef' af,] |
  bf,8[ d' bf af d bf]  ef,,[ df'' bf g df' bf] |
  af,8-.[^\stac c'-. af-. ef-. ef'-. af,-.]  
    af,-.[ c'-. af-. ef-. ef'-. af,-.] |
  af,8-.[ df'-. g,-. ef-. ef'-. g,-.]  af,-.[ c'-. af-. gf-. ef'-. af,-.] |
  df,8-.[ f'-. df-. af-. f'-. df-.]  df,-.[ ff'-. df-. af-. ff'-. df-.] |
  ef,8-.[ \clef treble g'-. ef-. df-. g-. ef-.] \clef bass
    af,,-.([ c' af ef ef' af,)] |
    
  \barNumberCheck 17
  \key e \major
  e,8[ b'' e, b b' e,]  e,[ as' fs cs as' fs] |
  e,8[ a' ds, b b' ds,]  e,[ gs' e b b' e,] |
  e,8[ a' fs b, b' fs]  e,[ a' ds, b b' ds,] |
  e,8[ a' fs b, b' fs]  e,[ a' ds, b b' ds,] |
  e,8[ b'' e, b b' e,]  e,[ a' e c a' e] |
  e,8[ a' ds, b b' ds,]  e,[ gs' e b b' e,] |
  \key af \major
  ef,8[ df'' g, ef ef' g,]  ef,[ df'' g, ef ef' g,] |
  af,8[ c' af gf ef' af,]  af,[ c' af gf ef' af,] |
  
  \barNumberCheck 25
  df,,8[ f'' df af f' df]  g,,[ df'' bf ff df' bf] |
  af,8[ df' af f df' af]  af,[ c' af gf c af] |
  df,,8[ af'' df, af af' df,]  df,[ af'' df, af af' df,] |
  df,8[ af'' df, af af' df,]  df,[ af'' df, af af' df,] |
  \key a \major
  a8[ e'' a, e e' a,] a,[ ds' a fs ds' a] |
  a,8[ d' gs, e e' gs,]  a,[ cs' a e e' a,] |
  a,8[ d' b e, e' b]  a,[ d' gs, e e' gs,] |
  a,8[ d' b e, e' b]  a,[ d' gs, e e' gs,] |
  
  \barNumberCheck 33
  a,8[ e'' a, e e' a,]  a,[ d' a f d' a] |
  a,8[ d' gs, e e' gs,]  a,[ cs' a e e' a,] |
  \key af \major
  af,8[ c' af gf ef' af,]  af,[ c' af ef ef' af,] |
  df,8[ f' df cf af' df,]  df,[ f' df cf af' f] \clef treble |
  gf,8[ gf' df bf bf' df,] \clef bass cf,[ ef' cf af gf' cf,] |
  df,[ df' bf gf gf' bf,]  df,[ f' cf af af' cf,] |
  d,8[ f' bf, af af' bf,]  bf,[ d' bf af af' bf,] |
  ef,8[ ef' bf g g' bf,]  a, ef''[c gf gf' c,] |
  
  \barNumberCheck 41
  bf,8[ ef' bf g g' bf,]  bf,[ e' c g g' c,]
  bf,8[ f'' d af af' d,]  bf,-\slurPositionC ([ df' bf af df bf] |
  <ef, g ef'>4) r8 <ef af cf d>2. ef,4 r8 |
  <ef' bf'>4 r8 <ef af cf d>4.  ef,4 r8 <ef'~ af cf d>4. |
  <ef g bf>8 ef, r r4 <ef' bf'>8(  <ef dff'>) ef, r r4 <ef' dff'>8 |
  <ef cf'>8 ef, r r4 <ef' cf'>8  <ef d'> ef, r r4 <ef' d'>8 |
  <ef df'>8 ef, r r4 <ef' df'>8  <ef ff'> ef, r r4 <ef' ff'>8 |
  <ef ef'>8 ef, r r4 <ef' ef'>8  <ef gf'> ef, r r4 <ef' gf'>8 |
  
  \barNumberCheck 49
  <ef bf' df g>4.\arpeggio \clef treble <bf'' df g>2.-> <a df fs>4.->( |
  <bf df g>4-.) r8 <a df fs>4.->( <bf df g>4) r8 
    \voiceFour \hideNotes bff4._~ \unHideNotes |
  bff4. af2. g4.( |
  aff4.) gf2. f4. |
  f4. ff \oneVoice r4 r8 r4 r8 \clef bass |
  ff,,8([ r cf'] eff af eff' af4.) r4 r8 |
  ef,,8-.[ c''( af ef ef' af,)]  ef,8-.[ c''( af ef ef' af,)] |
  ef,8-.[ df''( g, ef ef' g,)]  af,-.[ c'( af ef ef' af,)] |
  
  \barNumberCheck 57
  af,8[ df' g, ef ef' g,]  af,[ c' af ef ef' af,] |
  bf,8[ d' bf af d bf]  ef,, df''[ bf ef, df' bf] |
  af,8[ c' af ef ef' af,]  af,[ c' af ef ef' af,] |
  af,8[ df'g, ef ef' g,]  af,[ c' af gf ef' af,] |
  df,8[ f' df af f' df]  af,[ e'' c bf g' c,] |
  f,8[ f' c af af' c,]  df,[ f' bf, af f' bf,] |
  ef,8[ ef' c af af' c,]  ef,[ g' df bf g' df] |
  f,8[ f' c af af' c,]  d,[ f' b, af af' b,] |
  
  \barNumberCheck 65
  ef,8[ af' ef c af' ef]  ef,[ a' ef c a' ef] |
  ef,8[ bf'' ef, bf bf' ef,]  ef,[ g' ef df g ef] |
  ef,8[ af' ef c af' ef]  ef,[ a' ef cf a' ef] |
  ef,8[ af' d, bf af' d,]  ef,[ g' ef df g ef] |
  af,,8[ c' af ef ef' af,]  af,[ c' af ef ef' af,] |
  af,8[ df' g, ef ef' g,]  af,[ c' af ef ef' af,] |
  af,8[ df' g, ef ef' g,]  af,[ c' af ef ef' af,] |
  af,8[ df' g, ef ef' g,]  af,[ c' af ef ef' af,] |
  
  \barNumberCheck 73
  af,8[ df' g, ef ef' g,]  af,[ c' af ef ef' af,] |
  af,8[ c' af ef ef' af,]  af,[ c' af ef ef' af,] |
  af,2. r4 r8 <df, df'>4. |
  <af af'>1. ~ |
  q1. |
  
}

leftHand = <<
  \clef bass
  \global
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \new Voice { \voiceThree \leftHandUpper }
  \new Voice { \voiceFour \leftHandLower }
>>

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5
  
  \partial 8 s8
  s2.\< s2 s8 s\! |
  s1. |
  s2.\> s2 s8 s\! |
  s1. |
  s2.\< s2 s8 s\! |
  s2. s2\> s8 s\! |
  s4. s\cresc s2. |
  s2. s\dim |
  
  \barNumberCheck 9
  s2.\p\< s4. s4 s8\! |
  s1\> s4.\< s8\! |
  s1. * 2 |
  s2. s2.\< |
  s4 s8\! s4. s4 s2\cresc |
  s1. * 2 |
  
  \barNumberCheck 17
  s1.\f |
  s1. * 2 |
  s2.\< s\! |
  s1. * 2 |
  s1. \cresc |
  s2.\< s\! |
  
  \barNumberCheck 25
  s2\f\> s8 s\!  s s\> s4. s8\! |
  s1. |
  s2.\p s2.\dim |
  s1. * 5 |
  
  \barNumberCheck 33
  s1.\p |
  s1. |
  s2. s\cresc |
  s1. * 2 |
  s2\> s4\!  s2\> s4\! |
  s2 s1\cresc |
  s1. |
  
  \barNumberCheck 41
  s1. * 2 |
  s1.\f |
  s1. |
  s2. s4. s\cresc |
  s2. s2\cresc s4\! |
  s1. * 2 |
  
  \barNumberCheck 49
  s1. * 2 |
  s4. s^\leggieris s2. |
  s1. |
  s2. s^\dolcis |
  s1. |
  s2. s4.\cresc s\! |
  s1. |
  
  \barNumberCheck 57
  s1. * 8 |
  
  \barNumberCheck 65
  s1. * 4 |
  s4. s^\dolcis s2. |
  s2. s^\sempre |
  s2.\dim s^\ee |
  s1.^\legatis |
  
  \barNumberCheck 73
  s2.\dim s\! |
  s4. s^\smorz s2. |
}

pedal = {
  \partial 8 s8
  s2.\sustainOn s2 s8 s\sustainOff |
  \repeat unfold 3 { 
    s2\sustainOn s8 s-\tweak X-offset -1 \sustainOff 
    s2\sustainOn s8 s\sustainOff | }
  s1. * 2 |
  s2\sustainOn s8 s\sustainOff s4.\sustainOn s\sustainOff |
  s2. s4.\sustainOn s4 s8\sustainOff |
  
  \barNumberCheck 9
  s1. * 6 |
  s2. s4.\sustainOn s4 s8\sustainOff |
  s2\sustainOn s8 s\sustainOff s2\sustainOn s8 s\sustainOff |
  
  \barNumberCheck 17
  \repeat unfold 4 { 
    s2\sustainOn s8 s-\tweak X-offset -1.5 \sustainOff 
    s2\sustainOn s8 s\sustainOff | }
  s1. * 2 |
  \repeat unfold 2 { 
    s2\sustainOn s8 s\sustainOff s2\sustainOn s8 s\sustainOff | }
  
  \barNumberCheck 25
  \repeat unfold 2 { 
    s2\sustainOn s8 s\sustainOff s2\sustainOn s8 s\sustainOff | }
  s2.\sustainOn s2 s8 s\sustainOff |
  s2.\sustainOn s2 s8 s\sustainOff |
  \repeat unfold 3 { 
    s2\sustainOn s8 s-\tweak X-offset -1.25 \sustainOff 
    s2\sustainOn s8 s\sustainOff | }
  s2.\sustainOn s2 s8 s\sustainOff |
  
  \barNumberCheck 33
  s1. * 6 |
  s2. s4.\sustainOn s4 s8\sustainOff |
  s2\sustainOn s8 s-\tweak X-offset -1.5 \sustainOff 
    s2\sustainOn s8 s\sustainOff |
  
  \barNumberCheck 41
  \repeat unfold 2 { 
    s2\sustainOn s8 s-\tweak X-offset -1.5
    \sustainOff s2\sustainOn s8 s\sustainOff | }
  s4. s2.\sustainOn s4 s8\sustainOff |
  s4. s2.\sustainOn s4 s8\sustainOff |
  \repeat unfold 4 { 
    s2\sustainOn s8 s\sustainOff s2\sustainOn s8 s\sustainOff | }
  
  \barNumberCheck 49
  s1. * 5 |
  s2.\sustainOn s2 s8 s\sustainOff |
  s2.\sustainOn s2 s8 s\sustainOff |
  s1. |
  
  \barNumberCheck 57
  s1. * 4 |
  \repeat unfold 4 { 
    s2\sustainOn s8 s-\tweak X-offset -1.5 \sustainOff 
    s2\sustainOn s8 s\sustainOff | }
  
  \barNumberCheck 65
  \repeat unfold 4 { 
    s2\sustainOn s8 s-\tweak X-offset -1.5 \sustainOff 
    s2\sustainOn s8 s\sustainOff | }
  s2.\sustainOn s2 s8 s\sustainOff |
  s2\sustainOn s8 s\sustainOff s2\sustainOn s8 s\sustainOff |
  s1. * 2|
  
  \barNumberCheck 73
}

etude-ten-header = \header { }

etude-ten-music = {
  \new PianoStaff \with { instrumentName = \markup \huge "No. 10" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal
  >>
}

etude-ten-midi = \book {
  \bookOutputName "Fredric-Chopin-Etudes-Op10-No10"
  \score { 
    \articulate << 
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }    
    }
  }
}