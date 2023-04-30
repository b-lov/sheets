%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.1"
\language "english"

\include "Global.ily"
\include "articulate.ly"

brillante = \markup \larger \italic "brillante"
legato = \markup \larger \italic "legato"
pocoRall = \markup \larger \italic "poco rall."
aTempo = \markup \larger \italic "a tempo"
pocoAPoco = \markup \larger \italic "poco a poco"
deliSmorz = \markup \larger \italic "delicat. smorz."
pocoCresc = \markup \larger \italic "poco cresc."
sempLeg = {
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \once \override Score.RehearsalMark.Y-offset = 5.25
  \once \override Score.RehearsalMark.X-offset = -7
  \mark \markup \smaller \italic "sempre legatissimo"
}

adjustFingerA = \tweak Y-offset 4.2 \etc
adjustFingerB = \tweak Y-offset 4.2 \etc
adjustFingerC = \tweak Y-offset 2.1 \etc
adjustFingerD = \tweak Y-offset 5.2 \etc
adjustFingerE = \tweak Y-offset 3.5 \etc
adjustDynA = \tweak X-offset 0 \etc
slurShapeA = \shape #'(
                        ((0 . 4) (0 . 0) (0 . -3) (0 . 1))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) Slur
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 2) (2 . 1.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) PhrasingSlur

global = {
  \time 2/4
  \key gf \major
  \accidentalStyle piano
  
  % group beams by 1/8 note, must be in both staves
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 1,1,1,1
}

rightHand = \relative {
  \clef treble
  \global
  \tempo "Vivace" 4 = 116
  
  \scaleDurations 2/3 {
    \ottava 1 gf'''16-3^\brillante bf-5 df,-1  gf-4 ef-2 gf-4  df-1 gf-5 bf,
      df gf,-1 bf-4 |
    \ottava 0 gf16-2 bf df,  gf ef gf  df gf bf,  df gf,-1 bf-5 |
    df,16-1^\legato df' af-2  df-5 af af'  af, af' ef  af ef ef' |
    ef,16 ef' af,  \ottava 1 ef' af, af'  af, af' df,  af' df, df' |
    gf,16 bf df,  gf ef gf  df gf bf,  \ottava 0 df gf, bf |
    gf16 bf df,  gf ef gf  df gf bf,  df gf, bf |
    ef, ef' af,  ef' af, af'  ef af ef  \ottava 1 ef' af, af' |
    bf, bf' bf,  bf'^\pocoRall bf, bf'  bf, bf' bf,  bf' bf, bf' |
    
    \barNumberCheck 9
    gf16^\aTempo bf df,  gf ef gf  df gf bf,  df gf, bf |
    \ottava 0 gf16 bf df,  gf ef gf  df gf bf,  df gf, bf |
    df,16 df' af  df af af'  af, af' ef  af ef ef' |
    \ottava 1 ef,16 ef' af,  ef' af, af'  af, af' df,  af' df, df' |
    gf,16 bf df,  gf ef gf  df gf bf,  df gf, bf |
    \ottava 0 gf16 bf df,  gf ef gf  df gf bf,  df gf, bf |
    ef,16-1 ef' af,-2  ef'-5 af,-1 af'  ef-2 af ef-1  ef' af, ef' |
    ef,16 ef'-5 af,-2  ef' df,-1 df'-4  af-2 df-4 af-1  
      \ottava 1 af'( df,-1 df' |
      
    \barNumberCheck 17
    af16-2 bf af  ef-1 ef' ef,  df ef df  af af' af, |
    \ottava 0 af16-2 bf af  ef-1 ef' ef,  df[ ef df)  af8*3/2->]~ |
    af16 ef'-2( af-4  bf-5 af-4 ef-2  df-1 af' df  ef df bf) |
    \ottava 1 af16 ef' af  bf af ef  df af' df  ef df bf |
    af16 bf af  ef ef' ef,  df ef df  af af' af, |
    \ottava 0 af16 bf af  ef ef' ef,  df[ ef df  af8*3/2->]~ |
    af16 af'(-4 gf-2  af-3 gf-1 af-2  gf'-^)-5 af,(-2 gf-1  af-3 gf-2 af-3 |
    af,16)-1 af'(-3 gf-2  af-3 gf-1 af-2  gf'-^)-5 af, gf  af gf af-3 |
    
    \barNumberCheck 25
    bf,16(-1 bf'-3 gf-2  bf-4 gf-1 bf)-2  gf'-^-5 bf,(-2 gf-1  
      bf-\adjustFingerA-4 gf-2 bf)-3 |
    bf,16-1( bf' gf  bf gf bf)  gf'-^ bf,(-2 gf-1  bf-\adjustFingerB-2 
      gf-1 bf)-2 |
    \ottava 1 gf16(-1 bf-2 gf  bf'-.-5 bf,-2 gf-1  af'-. bf, gf  
      gf'-. bf, gf) |
    df'16-. bf( gf  bf'-. bf, gf  af'-. bf, gf  gf'-.-5 bf,-3 gf)-2 |
    df16-1 df'-4 bf-2  df-4 df-1 df'  bf df df,  df bf df |
    df,16 df' bf  df df df'  bf df df,  df bf df |
    df,16 df' bf  df df df'  af df df,  df-5 af-2 df-5 |
    \ottava 0 df,16-1 df'-5 gf,-1  df' df,-1 df-5  gf,-2 df' df,-1 
      \staffDown \voiceOne df-5 gf,-2 df'-5 |
   
   \barNumberCheck 33
   \sempLeg \slurShapeA ef,16( gf df'  \staffUp ef16 gf,-\adjustFingerC-1 df'
     ef gf df-1  ef gf df' |
   \oneVoice ef,16-1 gf df'  ef gf,-1 df'  ef gf df-1  
     ef-2 df'-\adjustFingerD-5 gf,-3 |
   ef16-1 gf ef'-5  df gf, ef  df'-5 gf, ef  df gf-5 ef |
   df16 gf, ef'-5  df gf, ef  df'-5 gf, ef  df-1 gf-4 ef)-2 |
   af,16(-1 ef' gf  af ef-1 gf  af ef' gf,-1  af ef' gf |
   af,-1 ef' gf  af ef-1 gf  af ef' gf,-1  af gf'-5 ef-4 |
   af,16-2 gf-1 ef'-5  af, gf ef  af-5 gf ef  af, gf'-5 ef |
   af,16 gf-1 ef'  af,-3 gf ef  af gf ef  af, gf'-4 ef)-2 |
   
   \barNumberCheck 41
   df16(-1 df'-4 af-2  df-4 af-1 af'-5  df,-2 af'-5 af,-1  df-4 af-2 df-4 |
   df,16 df' af  df af af'  df, af' af,  df af df) |
   df,16 df' af  df-5 df-1 df'  af-2 df-5 df,-1  df-5 af df |
   af16-1 af'-5 df,-2  af'-5 af-1 af'  df, af' af,  af df,-2 af'-5 |
   df,16-1 ef-2 df-1  \ottava 1 ef'-5 df-1 ef'-5  df-4 ef-5 df-4  
     df,-1 ef-5 df-4 |
   \ottava 0 df,16-1 ef-2 df-1  \ottava 1 ef'-5 df-1 ef'  df ef df  df, ef df |
   df'16-4 ef-5 df-4  df,-1 ef-2 df-1  df' ef df  df, ef df |
   df'16 ef df  df, ef df  df' ef df  df, ef df |
   
   \barNumberCheck 49
   gf16-3 bf-5 df,-1  gf-4 ef gf  df gf bf,  \ottava 0 df gf, bf |
   gf16 bf df,  gf ef gf  df gf bf,  df gf, bf |
   df,16 df' af  df af af'  af, af' ef  af ef ef' |
   ef,16 ef' af,  \ottava 1 ef' af, af'  af, af' df,  af' df, df' |
   gf,16 bf df,  gf ef gf  df gf bf,  \ottava 0 df gf, bf |
   gf16 bf df,  gf ef gf  df gf bf,  df gf, bf |
   ef,16 ef' af,  ef' af, af'  bf, bf' bf,  bf' bf, bf' |
   ef,16 ef' af,  \ottava 1 ef' af, af'  bf, bf'-> bf,  bf' bf, bf' |
   
   \barNumberCheck 57
   bf,16 bf' ef,  bf'-5 af,-1 af'  af,-1 af'-5 df,  af' gf,-1 gf' |
   df,16 df' af-2  df-5 af-1 af'  gf,-1 gf' df-2  gf-5 df-1 df' |
   bf,16-1 bf' ef,  bf' af,-1 af'  af, af' df,  af' gf, gf' |
   df,16 df' af  df af af'  bf, gf' df  gf df df' |
   bf,16-1 bf'-5 ef,-2  bf'-5 af,-1 af'-4  bf,-1 bf'-5 ef,-2  bf'-5 af, af'-4 |
   bf,16 bf' ef,  bf' af, af'  bf, bf' ef,  bf' af, af' |
   df,16(-2 bf'-5 af,-1  af'-4 df,-2 bf'-5  af,-1 af'-4 df,-2  
     bf'-5 af,-1 af'-4 |
   df,16  bf' af,  af' df, bf'  af,^\pocoRall af' df,  bf' af, af'-4 |
   
   \barNumberCheck 65
   ef'16)[-5 r32 \slurShapeB df\(-3 bf16]-2  af-1 gf-4 ef-3  
     \ottava 0 df-2 bf-1 af-4  gf-3 ef-2 df-1 |
  }
  << { af4-3 bf8.[-\adjustFingerE-4 af16] } \\ { <ef gf>4( <df f>) } >>
  gf8\)^\aTempo r
  \scaleDurations 2/3 {
    \ottava 1 af''16 bf af  df, df' df, |
    df16 ef df  gf, gf' gf,  \ottava 0 af[ bf af df,8*3/2]->~ |
    df16 gf af  bf af gf  df af' df  ef df af
    \ottava 1 gf16 df' gf  af gf ef  df af' df  ef df af |
    gf16 af gf  df df' df,  df ef df  af af' af, |
    \ottava 0 af16 bf af  gf gf' gf,  df4*3/2->~ |
    
    \barNumberCheck 73
    df16 gf af  bf af gf  df af' df  ef df af |
    \ottava 1 gf16 df' gf  af gf df  af df af' bf af df, |
    bf'16 df, af'-4  bf,-1 af'-5 df,  gf-4 bf,-1 ef-5  
      \ottava 0 af,-2 df-4 df,-1 |
    bf'16-5 df, af'  bf, af' df,  gf bf, ef  af, df df, |
    bf'16 df, af'  bf, af' df,  gf bf, ef  \clef bass af, df df, |
    bf'16-3 gf-2 ef'-5  df,-1 df'-4 af-2  bf-3 gf-2 ef'-5  df, df' af |
    bf8*3/2  <bf df>16->( af gf)  \clef treble <ef' gf>->( df bf) 
      <gf' bf>->( ef df) |
    <bf' df>16->( af gf)  <ef' gf>->( df bf)  <gf' bf>->( ef df)  
      <bf' df>->( af gf) |
      
    \barNumberCheck 81
    \ottava 1 <ef' gf>16( df bf)  <gf' bf>( ef df)  <ef gf>( df bf)
      <gf' bf>( ef df) |
    <ef gf>16( df bf)  <gf' bf>( ef df)  <ef gf>( df bf)  <gf' bf>( ef df) |
    <bf gf'>16-. \ottava 0 r <gf gf'>-.  <ef ef'>-. <df df'>-. <bf bf'>
      <af af'>-. <gf gf'>-. <ef ef'>-.  <df df'>-. <bf bf'>-. <af af'>-. |
  }
  <gf gf'>8-. r \ottava 1 <bf'' df gf bf>4 |
  \staffDown \voiceOne gf,,2\fermata |
  \bar "|."
}

leftHand = \relative {
  \clef bass
  \global
  
  <gf bf df gf>8-.[ <gf cf ef gf>-. <gf bf df gf>-.] r |
  <gf, gf'>8-. <cf' ef gf>-.[ <bf df gf>-.] r |
  <df,, df'>8-. <af'' df f>-.[ <af cf ef>-.] af,-. |
  << { r8 <af' cf ef>->[ <af cf df>] } \\ { df,4. } >> r8 |
  <gf bf df gf>8-.[ <gf cf ef gf>-. <gf bf df gf>-.] r |
  <gf, gf'>8-. <cf' ef gf>-.[ <bf df gf>-.] r |
  cf,8 <af' ef'>4-> cf,8 |
  <bf f' d'>8\arpeggio \clef treble <bf' f' d'>\arpeggio r4 |
  
  \barNumberCheck 9
  <gf bf df gf>8-.[ <gf cf ef gf>-. <gf bf df gf>-.] r |
  \clef bass <gf, gf'>8-. <cf' ef gf>-.[ <bf df gf>-.] r |
  <df,, df'>8-. <af'' df f>-.[ <af cf ef>-.] af,-. |
  << { r8 <af' cf ef>->[ <af cf df>] } \\ { df,4. } >> r8 |
  <gf bf df gf>8-.[ <gf cf ef gf>-. <gf bf df gf>-.] r |
  <gf, gf'>8-. <cf' ef gf>-.[ <bf df gf>-.] r |
  c,8-. <af' gf'>4 af,8-. |
  df-.[ <af' f'>-.] r4 \clef treble |
  
  \barNumberCheck 17
  <c gf' af>8([ <af gf' af>)] <df f bf>[ <af f' af>] |
  <c gf' bf>8[ <af gf' af>] <df f>[ af] \clef bass |
  c,8-. <af' ef' gf>-.[ <af df f>-.] df,-. |
  af8-.[ <af' c gf'>-.] df,,-.[ <af'' df f>-.] |
  af,8 \clef treble <c' gf' af>[ <df f bf> <af f' af>] |
  <c gf' bf>8[ <af gf' af>] <df f>[ af] \clef bass |
  c,8-.[ <af' ef' gf>-.] r c,,_( |
  c'8-^)[ <af' ef' gf>] r <c,, c'> |
  
  \barNumberCheck 25
  <df df'>8 <bf'' df gf> <c,, c'>[( <df df'>] |
  <d d'>8) <bf'' gf'> <cs,, cs'>[( <d d'>] |
  <ef ef'>8) <bf'' gf'>4-> <ef,, ef'>8 |
  <ff ff'>8 <bf' gf'>4-> <e,, e'>8 |
  <f f'>8[ <bf' df f>] <e,, e'>[( <f f'>]) |
  <gf gf'>8-.[ <bf' df ff>-.] <f, f'>[( <gf gf'>]) |
  <g g'>8[ <g' df' ff>] <af, af'>[ <af' df f>] |
  <bff, bff'>8[ <bff' ef gf>] r \voiceFour <bff,, bff'>-> |
  
  \barNumberCheck 33
  <af af'>2 |
  \oneVoice r4 <af'' df gf>8.[ q16] |
  q2 |
  R2 |
  <af,, af'>2 |
  r4 \clef treble <af'' c gf' af>8.[ q16] |
  q2 |
  R2 |
  
  \barNumberCheck 41
  \clef bass df,,8-. r <af'' f'>4~ |
  q4 <g e'>8.[ <af f'>16] |
  df,8-. r <af' f'>4~ |
  q4 <g e'>8.[ <af f'>16] |
  df,8-. \clef treble <af' df f>[( <bff df gf> <bf df g>] |
  <cf df af'>4 <bf df g>8[ <bff df gf>]) |
  <af df f>8-. \clef bass df,-. \clef treble 
  <<
    { af''8[( bf] | cf4 bf8[ af]) | }
    \\
    { <cf, df f>4 | q2 | }
  >> 
  
  \barNumberCheck 49
  <gf bf df gf>8-.[ <gf cf ef gf>-. <gf bf df gf>-.] r |
  \clef bass <gf, gf'>8-. <cf' ef gf>-.[ <bf df gf>-.] r |
  <df,, df'>8-. <af'' df f>-.[ <af cf ef>-.] af,-. |
  << { r8 <af' cf ef>[ <af cf df>] } \\ { df,4. } >> r8 |
  <gf bf df gf>8-.[ <gf cf ef gf>-. <gf bf df gf>-.] r |
  <gf, gf'>8-. <cf' ef gf>-.[ <bf df gf>-.] r |
  cf,8-.[ <af' ef'>]( <f bf d>)[ bf,]( |
  cf8-.)[ <af' ef'>]( <f bf d>)[ bf,-.] |
  
  \barNumberCheck 57
  cf8-.[ \clef treble <cf' ef af>-.] \clef bass df,-.[ 
    \clef treble <bf' df gf>-.] |
  \clef bass cf,8-.[ \clef treble <cf' df f af>-.] \clef bass bf,-.[
    \clef treble <bf' df gf bf>-.] |
  \clef bass cf,8-.[ \clef treble <cf' ef af>-.] \clef bass df,-.[ 
    \clef treble <bf' df gf>-.] |
  \clef bass cf,8-.[ \clef treble <cf' df f af>-.] \clef bass bf,-.[
    \clef treble <bf' df gf bf>-.] |
  \clef bass cf,8 <af' ef' af>4-> cf,8 |
  c8 <af' ef' gf af>4-> c,8 |
  df4-. \clef treble <af' df gf af> |
  <gf' af df>4 r |
  
  \barNumberCheck 65
  \clef bass \grace { df,,8 } <df' af' df gf>2 |
  <df af' cf>2 |
  \clef treble << { <bf' gf'>8[ df_\legato <cf af'> <af f'>] } \\ { gf2 } >> |
  << { <bf gf'>8[ df <cf af'> <af f'>] } \\ { gf2 } >> |
  \clef bass <gf bf gf'>8 r <f cf' ef>[(\> <df df'>])\! |
  <gf bf ef>[(\> <df df'>])\! <f cf' ef>[(\> <df df'>])\! |
  \clef treble << { <bf' gf'>8[ df <cf af'> <af f'>] } \\ { gf2 } >> |
  << { <bf gf'>8[ df <cf af'> <af f'>] } \\ { gf2 } >> |
  
  \barNumberCheck 73
  \clef bass <gf bf gf'>8[ df'] <f, cf' ef>[\> <df df'>]\! |
  <gf bf ef>[\> <df df'>]\! <f cf' ef>[\> <df df'>]\! |
  \clef treble <gf df' bf'>4\arpeggio r8 \clef bass <df af' cf f>(\> |
  <gf bf gf'>4)\! r8 <df, cf' f>-> |
  <gf bf gf'>4 r8 df |
  <gf, gf'>8[ df' <gf, gf'> df'] |
  <gf, gf'>8 r r 
  \scaleDurations 2/3 {
    gf'16( df' bf') |
    gf,16( df' bf')  bf,( gf' df')  df,( bf' gf')  \clef treble gf,( df' bf') |
    
    \barNumberCheck 81
    bf,16( gf' df')  df,( bf' gf')  gf,( bf gf')  df,( bf' gf') |
    gf,( bf gf')  df,( bf' gf')  gf,( bf gf')  df,( bf' gf') |
    gf,16-. r \clef bass <gf, gf'>-.  <ef ef'>-. <df df'>-. <bf bf'>
      <af af'>-. <gf gf'>-. <ef ef'>-.  <df df'>-. <bf bf'>-. <af af'>-. |
  }
  <gf gf'>8-. r \clef treble <gf'' df' bf'>4\arpeggio |
  \clef bass \voiceFour <gf,, gf'>2\fermata |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5
  
  s2\f |
  s2\p |
  s4 s\cresc |
  s2 |
  s2\f |
  s2\p |
  s4 s8.\< s32 s\! |
  s4 s8.\> s16\pp |
  
  \barNumberCheck 9
  s2\f |
  s2\p |
  s4 s\cresc |
  s2 |
  s2\f |
  s2\p |
  s4 s\cresc |
  s2 |
  
  \barNumberCheck 17
  s4\p s8\> s\! |
  s8\> s\! s4 |
  s4. s8\cresc
  s2 |
  s4 s16.\> s32\! s8 |
  s2 * 3 |
  
  \barNumberCheck 25
  s4 s-\pocoAPoco |
  s2\cresc |
  s2 * 2 |
  s4 s\cresc |
  s2 |
  s4 s\cresc |
  s2 |
  
  \barNumberCheck 33
  s8-\adjustDynA\f s4\< s16 s32 s\! |
  s2 |
  s2\> |
  s8 s4.\dim |
  s2\< |
  s4. s8\! |
  s8 s4\> s16. s32\! |
  s8 s4.\dim |
  
  \barNumberCheck 41
  s2\p |
  s2 * 2|
  s8 s4.\cresc |
  s8 s4\< s16. s32\! |
  s4.\> s16. s32\! |
  s2 |
  s4\> s\! |
  
  \barNumberCheck 49
  s2\f |
  s2\p |
  s4. s8\cresc |
  s2 |
  s2\f |
  s2\p |
  s4 s\cresc |
  s2 |
  
  \barNumberCheck 57
  \repeat unfold 5 { s16.\> s32\! s8 s16.\> s32\! s8 | }
  s4 s\cresc |
  s2 * 2 |
  
  \barNumberCheck 65
  s8\pp s4.^\deliSmorz |
  s2 |
  s2\p |
  s2 |
  s4 s4^\pocoCresc |
  s2 |
  s2\p |
  s2 |
  
  \barNumberCheck 73
  s4 s^\pocoCresc |
  s2 |
  s2\f |
  s2 * 2 |
  s2\ff |
  s2 * 2 |
  
  \barNumberCheck 81
  s8 s4.\cresc |
  s2 |
  s2\ff |
  s2 * 2 |
}

pedal = {
  s2 |
  s4\sustainOn s\sustainOff |
  s4\sustainOn s8\sustainOff s16.\sustainOn s32\sustainOff |
  s8\sustainOn s\sustainOff s\sustainOn s\sustainOff |
  s8\sustainOn s4.\sustainOff |
  s8\sustainOn s4.\sustainOff |
  s2 |
  s4\sustainOn s\sustainOff |
  
  \barNumberCheck 9
  s2 |
  s4\sustainOn s\sustainOff |
  s4\sustainOn s8\sustainOff s16\sustainOn s32 s\sustainOff |
  s8\sustainOn s\sustainOff s\sustainOn s16. s32\sustainOff |
  s4\sustainOn s\sustainOff |
  s4\sustainOn s\sustainOff |
  s4\sustainOn s8. s32 s\sustainOff |
  s4\sustainOn s8. s32 s\sustainOff |
  
  \barNumberCheck 17
  s2 * 2 |
  s8\sustainOn s\sustainOff s\sustainOn s16. s32\sustainOff |
  s8.\sustainOn s16\sustainOff s8.\sustainOn s32 s\sustainOff |
  s4\sustainOn s8\sustainOff s |
  s2 |
  s2\sustainOn |
  s4 s8. s32 s\sustainOff |
  
  \barNumberCheck 25
  s4\sustainOn s\sustainOff |
  s4\sustainOn s\sustainOff |
  s4\sustainOn s8. s32 s\sustainOff |
  s4.\sustainOn s8\sustainOff |
  s4\sustainOn s\sustainOff |
  s4\sustainOn s\sustainOff |
  s8.\sustainOn s16\sustainOff s8.\sustainOn s32 s\sustainOff |
  s4\sustainOn s8. s32 s\sustainOff |
  
  \barNumberCheck 33
  s2\sustainOn |
  s2 * 2 |
  s4. s16. s32\sustainOff |
  s2\sustainOn |
  s2 * 2 |
  s4. s16. s32\sustainOff |
  
  \barNumberCheck 41
  s2\sustainOn |
  s2 * 2 |
  s4. s16. s32\sustainOff |
  s2\sustainOn |
  s4. s16. s32\sustainOff |
  s8 s4.\sustainOn |
  s4. s16. s32\sustainOff |
  
  \barNumberCheck 49
  s2 |
  s4\sustainOn s\sustainOff |
  s4\sustainOn s8\sustainOff s16.\sustainOn s32\sustainOff |
  s4\sustainOn s\sustainOff |
  s2 |
  s8\sustainOn s4.\sustainOff |
  s8.\sustainOn s16\sustainOff s8.\sustainOn s32 s\sustainOff |
  s8.\sustainOn s16\sustainOff s8.\sustainOn s32 s\sustainOff |
  
  \barNumberCheck 57
  \repeat unfold 4 { 
    s8.\sustainOn s16\sustainOff s8.\sustainOn s32 s\sustainOff |
  }
  s4.\sustainOn s16. s32\sustainOff |
  s4.\sustainOn s16. s32\sustainOff |
  s2\sustainOn |
  s2 |
  
  \barNumberCheck 65
  s4. s16. s32\sustainOff |
  s8\sustainOn s\sustainOff s8.\sustainOn s32 s\sustainOff |
  s2 * 6 |
  
  \barNumberCheck 73
  s2 * 8 |
  
  \barNumberCheck 81
  s2 * 5 |
}

etude-five-header = \header {}

etude-five-music = {
  \new PianoStaff \with { instrumentName = \markup \huge "No. 5" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal
  >>
}

etude-five-midi = \book {
  \bookOutputName "Fredric-Chopin-Etudes-Op10-No5"
  \score { 
    \articulate \unfoldRepeats {
      << 
        \new Staff = "upper" << \rightHand \dynamics \pedal >>
        \new Staff = "lower" << \leftHand \dynamics \pedal >>
      >>
    }
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
