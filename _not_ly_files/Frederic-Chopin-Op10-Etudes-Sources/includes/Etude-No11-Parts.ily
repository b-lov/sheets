%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.1"
\language "english"

\include "Global.ily"
\include "articulate.ly"

conForza = \markup \larger \italic "con forza"
dolce = \markup \larger \italic "dolce"
pocoRiten = \markup \larger \italic "poco ritenuto"
riten = \markup \larger \italic "ritenuto"

smorzMarkup = \markup { \normal-text \larger \italic "smorz." }
smorz = 
  \tweak self-alignment-X LEFT
  #(make-dynamic-script smorzMarkup)

pDolcisMarkup = \markup { \dynamic p \normal-text \larger \italic 
                          "dolcissimo" }
pDolcis = 
  \tweak self-alignment-X LEFT
  #(make-dynamic-script pDolcisMarkup)
  
slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.75) (-0.75 . 1.5) (-0.5 . -0.25) (0 . -0.5))
                      ) Slur

global = {
  \time 3/4
  \key ef \major
  \accidentalStyle piano
}

rightHand = \relative {
  \global
  \tempo "Allegretto" 4 = 76
  
  \partial 8 bf''8(
  <bf, g' ef'>8-^\arpeggio) <bf g' bf>\arpeggio( <bf g' a>\arpeggio
    <bf g' bf>\arpeggio <bf g' c>\arpeggio <bf g' bf>\arpeggio) |
  <bf af' f'>8-.\arpeggio <bf af' bf>\arpeggio( <bf af' bff>\arpeggio
    <bf af' bf>\arpeggio <bf af' c>\arpeggio <bf af' bf>\arpeggio) |
  <bf g'bf g'>8-.\arpeggio <d bf' d>\arpeggio( <bf ef bf' ef>\arpeggio
    <b ef d'>\arpeggio <c ef c'>\arpeggio <c f f'>\arpeggio |
  <bf g' ef'>8\arpeggio <c gf' a ef'>\arpeggio <bf f' bf d>\arpeggio
    <bf e g df'>\arpeggio <af f' af c>\arpeggio <c g' bf e>\arpeggio) |
  <c af' f'>8-.\arpeggio <c af' c>\arpeggio( <b af' b>\arpeggio 
    <c af' c>\arpeggio <df af' df>\arpeggio <c af' c>\arpeggio) |
  <c g' bf g'>8-.\arpeggio <c g' bf c>\arpeggio( <cf g' bf cf>\arpeggio
    <c g' bf c>\arpeggio <df g bf df>\arpeggio <c g' bf c>\arpeggio |
  <c af' c af'>8\arpeggio <ef bf' ef g>\arpeggio <f c' ef f>\arpeggio 
    <f cf' ef f>\arpeggio <d bf' f'>\arpeggio <d af' g'>\arpeggio |
  <ef g ef'>8\arpeggio <ef gf ef'>\arpeggio <d f d'>\arpeggio)
    <bf g' df'>\arpeggio( <af af' c>\arpeggio) <af f' d'>\arpeggio( | 
  
  \barNumberCheck 9
  <g ef' ef'>8-2-5\arpeggio) <bf ef bf'>\arpeggio( <bf ef a>\arpeggio
    <bf ef bf'>\arpeggio <bf ef c'>\arpeggio <bf ef bf'>\arpeggio) |
  <bf af' f'>8-.\arpeggio <bf af' bf>\arpeggio( <bf af' bff>\arpeggio
    <bf af' bf>\arpeggio <bf af' c>\arpeggio <bf af' bf>\arpeggio) |
  <bf g'bf g'>8-.\arpeggio <d bf' d>\arpeggio( <bf ef bf' ef>\arpeggio
    <b ef d'>\arpeggio <c ef c'>\arpeggio <c f f'>\arpeggio |
  <bf g' ef'>8\arpeggio <c gf' a ef'>\arpeggio <bf f' bf d>\arpeggio
    <bf e g df'>\arpeggio <af f' af c>\arpeggio <c g' bf e>\arpeggio) |
  <c af' f'>8-.\arpeggio <c af' c>\arpeggio( <b af' b>\arpeggio 
    <c af' c>\arpeggio <df af' df>\arpeggio <c af' c>\arpeggio) |
  <c g' bf g'>8-.\arpeggio <c g' bf c>\arpeggio( <cf g' bf cf>\arpeggio
    <c g' bf c>\arpeggio <df g bf df>\arpeggio <c g' bf c>\arpeggio |
  <c af' c af'>8\arpeggio <ef bf' ef g>\arpeggio <f c' ef f>\arpeggio 
    <ef cf' ef f>\arpeggio <d bf' f'>\arpeggio <d af' g'>\arpeggio |
  <ef g ef'>8-.\arpeggio) <ef gf ef'>\arpeggio( <cf gf' ef'>\arpeggio
    <af ff' df'>\arpeggio <gf ef' gf>\arpeggio <gf df' bf'>\arpeggio)
    
  \barNumberCheck 17
  <gf ef' cf'>8-.\arpeggio <gf ef' gf>\arpeggio( <f ef' f>\arpeggio
    <gf ef' gf>\arpeggio <gf ef' af>\arpeggio <gf df' bff'>\arpeggio |
  <gf c bff'>\arpeggio <gf c af'>\arpeggio <gf c g'>\arpeggio
    <gf c af'>\arpeggio) <af gf' df'>\arpeggio( <af gf' ef'>\arpeggio |
  <af ff' ff'>8-.\arpeggio) <af ff' af>\arpeggio( <g ff' g>\arpeggio
    <af ff' af>\arpeggio <af ff' bf>\arpeggio <af ef' cf'>\arpeggio |
  <af d cf'>8\arpeggio <af d bf'>\arpeggio <af d a'>\arpeggio
    <af d bf'>\arpeggio) <bf af' ef'>\arpeggio( <bf af' f'>\arpeggio |
  <bf gf' gf'>8-.\arpeggio) <bf gf' bf>\arpeggio( <a gf' a>\arpeggio
    <bf gf' bf>\arpeggio <cf f cf'>\arpeggio <bf f' df'>\arpeggio |
  <gf ef' ef'>8-.\arpeggio) <gf ef' gf>\arpeggio( <f ef'f>\arpeggio
    <gf ef' gf>\arpeggio <gf ef' af>\arpeggio <gf df' bf'>\arpeggio |
  <ef cf' cf'>8-.\arpeggio) <ef cf' ef>\arpeggio( <d cf' d>\arpeggio
    <ef cf' ef>\arpeggio <ff cf' ff>\arpeggio <ef cf' ef>\arpeggio |
  <e cf' e>8\arpeggio^\conForza <f cf' f>\arpeggio <e cf' e>\arpeggio
    <f cf' f>\arpeggio <gf cf gf'>\arpeggio <ef cf' ef>\arpeggio |
  
  \barNumberCheck 25
  <d bf' d>8-.\noBeam^\dolce) <af' f' bf>\arpeggio( <af e' bf'>\arpeggio
    <af f' bf>\arpeggio <af g' bf>\arpeggio <af d bf'>\arpeggio |
  <g ef' bf'>8-.\noBeam\arpeggio) <a ef' c'>^\pocoRiten\arpeggio( 
    <a ef' b'>\arpeggio <a ef' c'>\arpeggio <a ef' d'>\arpeggio 
    <a ef' c'>\arpeggio |
  <d bf' f'>8-.\noBeam\arpeggio) <af f' bf>\arpeggio( <af e' bf'>\arpeggio
    <af f' bf>\arpeggio \tuplet 3/2 { <af g' bf>8\arpeggio <af af' bf>\arpeggio
                                      <af d bf'>\arpeggio } |
  <g ef' bf'>8-.\noBeam\arpeggio) <a ef' c'>\arpeggio( <a ef' b'>\arpeggio
    <a ef' c'>\arpeggio <a ef' d'>\arpeggio < a ef' c'>\arpeggio |
  <bf bf' f'>8-.\noBeam\arpeggio) <af f' bf>\arpeggio( <af e' bf'>\arpeggio
    <af f' bf>\arpeggio <af g' bf>\arpeggio <af f' bf>\arpeggio |
  <a gf' cf>8-.\arpeggio) q\arpeggio( <a f' cf'>\arpeggio <a gf' cf>\arpeggio
    <a af' cf>\arpeggio <a gf' cf>\arpeggio |
  <bf g' c>8-.\arpeggio) q\arpeggio( <bf fs' c'>\arpeggio <bf g' c>\arpeggio
    <bf a' c>\arpeggio <bf g' c>\arpeggio |
  <c f a c>8-.\arpeggio) <d af' f'>^\riten\arpeggio( <cs af' e'>\arpeggio
    <d af' f'>\arpeggio <d c' af'>\arpeggio <d bf' g'>\arpeggio) |
  
  \barNumberCheck 33
  <bf g' ef'>8-.\arpeggio <bf g' bf>\arpeggio( <bf g' a>\arpeggio
    <bf g' bf>\arpeggio \slashedGrace { d'8 } <bf, g' c>\arpeggio
    <bf g' bf>\arpeggio) |
  <bf af' f'>8-.\arpeggio <bf af' bf>\arpeggio( <bf af' bff>\arpeggio
    <bf af' bf>\arpeggio \slashedGrace { d'8 } <bf, af' c>\arpeggio
    <bf af' bf>\arpeggio) |
  <bf g' bf g'>8-.\arpeggio <d bf' d>\arpeggio( <bf ef bf' ef>\arpeggio)
    <b ef d'>\arpeggio( <c ef c'>\arpeggio <c f f'>\arpeggio) |
  <bf g' ef'>8\arpeggio( <c gf' a ef'>\arpeggio <bf f' bf d>\arpeggio
    <bf e g df'>\arpeggio <af f' af c>\arpeggio <c g' bf e>\arpeggio) |
  <c af' f'>8-.\arpeggio <c af' c>\arpeggio( <b af' b>\arpeggio 
    <c af' c>\arpeggio \slashedGrace { ef'8 } <df, af' df>\arpeggio 
    <c af' c>\arpeggio) |
  <c g' bf g'>8-.\arpeggio <c g' bf c>\arpeggio( <cf g' bf cf>\arpeggio
    <c g' bf c>\arpeggio \slashedGrace { ef'8 } <df, g bf df>\arpeggio 
    <c g' bf c>\arpeggio |
  <c af' c af'>8\arpeggio <ef bf' ef g>\arpeggio <f c' ef f>\arpeggio
    <ef cf' ef f>\arpeggio <d bf' f'>\arpeggio <f d' g>\arpeggio |
  <e d' g>8\arpeggio <e cs' g'>\arpeggio q\arpeggio) <ef df' gf>\arpeggio(
    q\arpeggio <ef c' gf'>\arpeggio |
    
  \barNumberCheck 41
  <ef c' gf'>8\arpeggio) <d c' f>\arpeggio( q\arpeggio <d b' f'>\arpeggio
    q\arpeggio) <cs b' e>\arpeggio( |
  <cs b' e>8\arpeggio <cs as' e'>\arpeggio q\arpeggio) <c bf' ef>\arpeggio(
    q\arpeggio <c a' ef'>\arpeggio |
  <c a' ef'>8\arpeggio <a ef' c'>\arpeggio) <af d c'>\arpeggio(
    <af d bf'>\arpeggio <af d af'>\arpeggio <af d f>\arpeggio |
  <g ef'>8-.\noBeam) <df' bf' ef>\arpeggio( <df a' ef'>\arpeggio
    <df bf' ef>\arpeggio <df c' ef>\arpeggio <df g ef'>\arpeggio |
  <c af' ef'>8-.\arpeggio) <d af' f'>\arpeggio( <d af' e'>\arpeggio
    <d af' f'>\arpeggio <d af' g'>\arpeggio <d af' f'>\arpeggio |
  \ottava 1 <g ef' bf'>8-.\noBeam\arpeggio) \ottava 0 <df bf' ef>\arpeggio(
    <df a' ef'>\arpeggio <df bf' ef>\arpeggio <df c' ef>\arpeggio 
    <df g ef'>\arpeggio |
  <c af' ef'>8-.\arpeggio) <d af' f'>\arpeggio( <d af' e'>\arpeggio
    <d af' f'>\arpeggio <d af' g'>\arpeggio <d af' f'>\arpeggio |
  \ottava 1 <g ef' bf'>8-.\arpeggio) <af ef' cf'>\arpeggio( <g d' b'>\arpeggio
    <g e' c'>\arpeggio <a ef' c'>\arpeggio <bf d bf'>\arpeggio |
    
  \barNumberCheck 49
  <g ef' g>8-.\noBeam\arpeggio) <af ef' cf'>\arpeggio( <g d' b'>\arpeggio
    <g e' cf'>\arpeggio <a ef' cf'>\arpeggio <bf d bf'>\arpeggio |
  <g ef' g>2-^)
    <<
      { g'8.( f16 | \hideNotes ef4) }
      \\
      { \slurShapeA af,4->( | <g) ef'> }
    >> 
    \ottava 0 r4 << { g8~ \tuplet 3/2 { g16 f ef } } \\ { af,4 } >> |
  \autoBeamOff <g ef'>8-. <ef bf' g'>\arpeggio <g ef' bf'>\arpeggio
    <bf g' ef'>\arpeggio <ef bf' g'>\arpeggio \ottava 1 <g ef' bf'>\arpeggio |
  <bf g' ef'>4\arpeggio r \slashedGrace { <d, bf'>8 } bf''4 |
  \slashedGrace { <g, ef'>8 } ef''2.\fermata |
  \bar "|."
}

leftHand = \relative {
  \clef bass
  \global
  
  \partial 8 r8
  ef,8\noBeam \repeat unfold 5 { <ef' bf' g'>\arpeggio } |
  \repeat unfold 6 { <d bf' af'>8\arpeggio } |
  <ef bf' g'>8\arpeggio <f bf d af'>\arpeggio <g bf ef g>\arpeggio
    <g, ef' b'>\arpeggio <af ef' c'>\arpeggio <a f' ef'>\arpeggio |
  <bf ef g ef'>8\arpeggio <bf gf' a ef'>\arpeggio <bf f' bf d>\arpeggio
    <c g' bf e>\arpeggio <c af' f'>\arpeggio <c g' c g'>\arpeggio |
  f,8-.\noBeam \repeat unfold 5 { <f' c' af'>\arpeggio } |
  \repeat unfold 6 { <e bf' c g'>8\arpeggio } |
  <f af c af'>8\noBeam\arpeggio \clef treble <g bf ef bf'>\arpeggio
    <af ef' c'>\arpeggio <af f' cf'>\arpeggio <bf f' bf>\arpeggio
    <bf f' af>\arpeggio |
  <ef g>8\arpeggio <a, gf' c>\arpeggio[  <bf f' bf>\arpeggio]
    \clef bass <e, df' g>\arpeggio <f c' f>\arpeggio <bf, f' af d>\arpeggio |
  
  \barNumberCheck 9
  ef,8-.\noBeam \repeat unfold 5 { <ef' bf' g'>\arpeggio } |
  \repeat unfold 6 { <d bf' af'>8\arpeggio } |
  <ef bf' g'>8\arpeggio <f bf d af'>\arpeggio <g bf ef g>\arpeggio
    <g, ef' b'>\arpeggio <af ef' c'>\arpeggio <a f' ef'>\arpeggio |
  <bf g' ef'>8\arpeggio <bf gf' a ef'>\arpeggio <bf f' bf d>\arpeggio
    <c g' bf e>\arpeggio <c af' f'>\arpeggio <c g' c g'>\arpeggio |
  f,8-.\noBeam \repeat unfold 5 { <f' c' af'>8\arpeggio } |
  \repeat unfold 6 { <e bf' c g'>8\arpeggio } |
  <f af c af'>8\noBeam\arpeggio \clef treble <g bf ef bf'>\arpeggio
    <af ef' c'>\arpeggio <af f' cf'>\arpeggio <bf f' bf>\arpeggio
    <bf f' af>\arpeggio |
  <ef g>8\noBeam\arpeggio \clef bass <ef, bf' gf'>\arpeggio 
    <ef cf' gf'>\arpeggio <ff df' ff>\arpeggio <gf cf ef>\arpeggio
    <gf df' ff>\arpeggio |
    
  \barNumberCheck 17
  \repeat unfold 4 { <cf, gf' ef'>8\arpeggio } <bff gf' ef'>\arpeggio
    <bff gf' df'>\arpeggio |
  \repeat unfold 4 { <af gf' ef'>8\arpeggio } <c af' gf'>\arpeggio q\arpeggio |
  \repeat unfold 4 { <df af' ff'>8\arpeggio } <cf af' ff'>\arpeggio
    <cf af' ef'>\arpeggio |
  \repeat unfold 4 { <bf af' d>8\arpeggio } <d bf' f'>\arpeggio q\arpeggio |
  \repeat unfold 4 { <ef bf' gf'>8\arpeggio } <df bf' f'>\arpeggio q\arpeggio |
  \repeat unfold 4 { <cf gf' ef'>8\arpeggio } <bf gf' ef'>\arpeggio
    <bf gf' df'>\arpeggio |
  <af ef' cf'>8\arpeggio q\arpeggio <af d cf'>\arpeggio <af ef' cf'>\arpeggio
    <af ff' cf'>\arpeggio <af ef' cf'>\arpeggio |
  <af e' cf'>8\arpeggio <af f' cf'>\arpeggio <af e' cf'>\arpeggio
    <af f' cf'>\arpeggio <a gf' cf>\arpeggio <a ef' cf'>\arpeggio |
    
  \barNumberCheck 25
  <bf, bf'>8-.\noBeam <bf' f' d'>\arpeggio q\arpeggio q\arpeggio 
    <bf f' ef'>\arpeggio <bf f' f'>\arpeggio |
  <bf g' ef'>\arpeggio <bf gf' ef'>\arpeggio q\arpeggio q\arpeggio
    <bf f' ef'>\arpeggio q\arpeggio |
  bf,8-.\noBeam <bf' f' d'>\arpeggio <bf f' cs'>\arpeggio <bf f' d'>\arpeggio
    <bf f' ef'>\arpeggio <bf f' f'>\arpeggio |
  <bf g' ef'>8\arpeggio <bf gf' ef'>\arpeggio q\arpeggio q\arpeggio 
    <bf f' ef'>\arpeggio q\arpeggio |
  bf,8-.\noBeam <bf' f' d'>\arpeggio <bf f' cs'>\arpeggio <bf f' d'>\arpeggio
    <bf f' ef'>\arpeggio <bf f' d'>\arpeggio |
  <bf gf' ef'>8\arpeggio q\arpeggio <bf gf' d'>\arpeggio <bf gf' ef'>\arpeggio
    <bf gf' f'>\arpeggio <bf gf' ef'>\arpeggio |
  <bf g' e'>8\arpeggio q\arpeggio <bf g' ds'>\arpeggio <bf g' e'>\arpeggio
    <bf g' f'>\arpeggio <bf g' e'>\arpeggio |
  <bf f' a ef'>8\arpeggio \repeat unfold 5 { <bf f' af d>\arpeggio } |
  
  \barNumberCheck 33
  ef,8-.\noBeam \repeat unfold 5 { <ef' bf' g'>\arpeggio } |
  \repeat unfold 6 { <d bf' af'>8\arpeggio } |
  <ef bf' g'>8\arpeggio <f bf d af'>\arpeggio <g bf ef g>\arpeggio
    <g, ef' b'>\arpeggio <af ef' c'>\arpeggio <a f' ef'>\arpeggio |
  <bf g' ef'>8\arpeggio <bf gf' a ef'>\arpeggio <bf f' bf d>\arpeggio
    <c g' bf e>\arpeggio <c af' f'>\arpeggio <c g' c g'>\arpeggio |
  f,8-.\noBeam \repeat unfold 5 { <f' c' af'>\arpeggio } |
  \repeat unfold 6 { <e bf' c g'>8\arpeggio } |
  <f af c af'>\noBeam\arpeggio \clef treble <g bf ef bf'>\arpeggio 
    <af ef' c'>\arpeggio <af ef' cf'>\arpeggio <bf f' bf>\arpeggio 
    <bf f' af d>\arpeggio |
  <bf e g d'>8\arpeggio <bf e g cs>\arpeggio <a e' g cs>\arpeggio
    <a ef' gf df'>\arpeggio q\arpeggio <af ef' gf c>\arpeggio |
  
  \barNumberCheck 41
  <af ef' gf c>8\arpeggio <af d f c'>\arpeggio q\arpeggio <g d' f b>\arpeggio
    q\arpeggio <g cs e b'>\arpeggio |
  <g cs e b'>8\arpeggio <fs cs' e as>\arpeggio q\arpeggio 
    <gf c ef bf'>\arpeggio q\arpeggio <f c' ef a>\arpeggio \clef bass |
  <f c' ef a>\arpeggio <f c' f>\arpeggio 
    \repeat unfold 4 { <bf, f' af d>\arpeggio } |
  ef,8-.\noBeam 
    <<
      { bf''2_~ \hideNotes bf8 }
      \\
      { <g g'>8 <ef df' g> q q <ef bf' df g> }
    >> |
  <ef c' af'>\arpeggio <ef cf' af'>\arpeggio q\arpeggio q\arpeggio
    <ef bf' af'>\arpeggio q\arpeggio |
  ef,8-.\noBeam 
    <<
      { bf''2_~ \hideNotes bf8 }
      \\
      { <g g'>8 <ef df' g> q q <ef bf' df g> }
    >> |
  <ef c' af'>\arpeggio <ef cf' af'>\arpeggio q\arpeggio q\arpeggio
    <ef bf' af'>\arpeggio q\arpeggio |
  <ef bf' g'>8\noBeam\arpeggio \clef treble <af ef' cf'>\arpeggio
    <g d' f b>\arpeggio <c e bf'>\arpeggio <f, c' ef a>\arpeggio
    <bf f' af d>\arpeggio |
    
  \barNumberCheck 49
  <g ef' g>8-.\noBeam\arpeggio <af ef' cf'>\arpeggio <g d' f b>\arpeggio 
    <c e bf'>\arpeggio <f, c' ef a>\arpeggio <bf f' af d>\arpeggio |
  <ef g ef'>8-.\noBeam\arpeggio <bf g' ef'>\arpeggio <a fs' ef'>\arpeggio
    <bf g' ef'>\arpeggio <cf af' ef'>\arpeggio <bf af' d>\arpeggio |
  <ef g ef'>8-.\noBeam\arpeggio \clef bass <bf, g' ef'>\arpeggio
    <a fs' ef'>\arpeggio <bf g' ef'>\arpeggio <cf af' ef'>\arpeggio
    <bf af' d>\arpeggio |
  \autoBeamOff ef,8-. <g ef' bf'>\arpeggio <bf g' ef'>\arpeggio 
    <ef bf' g'>\arpeggio <g ef' bf'>\arpeggio \clef treble 
    <bf g' ef'>\arpeggio |
  <ef bf' g'>4\arpeggio r \clef bass \slashedGrace { <bf f' af>8 } bf,4 |
  \slashedGrace { <ef bf' g'>8 } ef,2.\fermata |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  
  \partial 8 s8
  s2.\sf |
  s2. |
  s2 s4\cresc |
  s4\> s8\< s s4\cresc |
  s8 s\< s16 s\! s s\> s8 s\! |
  s2. * 2 |
  s8 s\> s2\! |
  
  \barNumberCheck 9
  s8 s\< s s\! s\> s\! |
  s2. |
  s2 s4\cresc |
  s4\> s8\< s s4\cresc |
  s8 s\< s16 s\! s s\> s8 s\! |
  s2. * 3 |
  
  \barNumberCheck 17
  s2. |
  s2.\cresc |
  s2 s4\cresc |
  s2. |
  s4.\sf s8\< s s\! |
  s4. s8\< s s\! |
  s2 s4\cresc |
  s2.\! |
  
  \barNumberCheck 25
  s2. |
  s8 s\pp s2 |
  s8 s4\< s8\! s\> s16 s\! |
  s8 s\pDolcis s2 |
  s8 s\p s4 s\cresc |
  s2.\! |
  s2. |
  s4. s8\> s s\! |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 7 |
  s8 s\f\< s s\! s\> s\! |
  
  \barNumberCheck 49
  s8 s\< s\! s\> s s\! |
  s8\sf s\p\< s4. s8\! |
  s2\smorz\< s4\! |
  s8 s\f s2 |
  s2 s4\sf |
  s2. |
}

pedal = {  
  \partial 8 s8
  s2\sustainOn s8 s\sustainOff |
  s2\sustainOn s8 s\sustainOff |
  s2. * 2 |
  s2\sustainOn s8 s\sustainOff |
  s2\sustainOn s8 s\sustainOff |
  s2. * 2 |
  
  \barNumberCheck 9
  s2\sustainOn s8 s\sustainOff |
  s2\sustainOn s8 s\sustainOff |
  s2. * 2 |
  s2\sustainOn s8 s\sustainOff |
  s2\sustainOn s8 s\sustainOff |
  s2. * 2 |
  
  \barNumberCheck 17
  s4.\sustainOn s8\sustainOff s\sustainOn s\sustainOff |
  s2\sustainOn s8 s\sustainOff |
  s4.\sustainOn s8\sustainOff s\sustainOn s\sustainOff |
  s4.\sustainOn s8\sustainOff s\sustainOn s\sustainOff |
  s2. * 4 |
  
  \barNumberCheck 25
  \repeat unfold 3 { s2\sustainOn s8 s\sustainOff } |
  s8 s\sustainOn s4 s\sustainOff |
  \repeat unfold 3 { s2\sustainOn s8 s\sustainOff } |
  s8\sustainOn s\sustainOff s\sustainOn s s s\sustainOff |
  
  \barNumberCheck 33
  s2\sustainOn s8 s\sustainOff |
  s2\sustainOn s8 s\sustainOff |
  s2. * 6 |
  
  \barNumberCheck 41
  s2. * 3 |
  s2\sustainOn s8 s\sustainOff |
  s8 s\sustainOn s4 s\sustainOff |
  s2\sustainOn s8 s\sustainOff |
  s8 s\sustainOn s4 s\sustainOff |
  s2. |
  
  \barNumberCheck 49
  s2. * 3 |
  s2.\sustainOn |
  s4 s\sustainOff s8\sustainOn s\sustainOff |
  s2\sustainOn s4\sustainOff |
}

forceBreaks = {
  \partial 8 s8
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak 
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak 
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak 
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
}

etude-eleven-header = \header { }

etude-eleven-music = {
  \new PianoStaff \with { instrumentName = \markup \huge "No. 11" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal
    \new Devnull = "breaks" \forceBreaks
  >>
}

etude-eleven-midi = \book {
  \bookOutputName "Fredric-Chopin-Etudes-Op10-No11"
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
