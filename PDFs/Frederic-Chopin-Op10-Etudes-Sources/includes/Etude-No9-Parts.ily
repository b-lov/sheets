%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.1"
\language "english"

\include "Global.ily"
\include "articulate.ly"

lagatissimo = \markup \larger \italic "lagatissimo"
conForza = \markup \larger "con forza"
segue = \markup \larger \italic "segue"
ritard = \markup \larger \italic "ritard"
aTempo = \markup \larger \italic "a tempo"
sottoVoce = \markup \larger "sotto voce"
sempreLag = \markup \larger \italic "sempre lagatissimo"
sempreLagato = \markup \larger \italic "sempre lagato"
sempreStret = \markup \larger \italic "sempre e più stretto"
sempreCresc = \markup \larger \italic "sempre più cresc."
sempreAccel = \markup \larger \italic "sempre più accel."
sempreAgi = \markup \larger \italic "sempre agitato"
accel = \markup \larger \italic "accel."
stretto = \markup \larger \italic "stretto"
fAppas = \markup { \dynamic f \larger \italic "appassionato" }
pocoRall = \markup \larger \italic "poco rall."
ten = \markup \larger \italic "ten."
smorz = \markup \larger \italic "smorz"
riten = \markup \larger \italic "riten."
pppLeggier = \markup { \dynamic ppp \larger \italic "leggierissimo" }

slurShapeA = \shape #'((0 . -2) (0 . 1.25) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . -2) (0 . 1.25) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((-0.25 . 2) (-0.25 . 2) (-0.25 . 2) (-0.25 . 2))
                      ) \etc
slurShapeD = \shape #'((0 . -1) (0 . 1) (0.5 . 2) (0 . -1.5)) \etc
slurShapeE = \shape #'((0 . -1.5) (0 . 0.75) (0 . 0) (0 . 0)) \etc

global = {
  \time 6/8
  \key f \minor
  \accidentalStyle piano
}

rightHand = \relative {
  \global
  \tempo "Allegro molto agitato" 8. = 96
  
  r8 f'-.( g-.) r af-.( bf-.) |
  r8 c-.( df-. c-. af'-. g-. |
  f8-. c-. df-. c-. af-. f-. |
  c2.-^) |
  r8 f-.( g-.) r af-.( bf-.) |
  r8 c-.-\slurShapeA ( df-. c-. c'-. af-. |
  g8-. c,-. df-. c-. g-. c,-. |
  f16 g af4->~^\ritard af) r8 |
  
  \barNumberCheck 9
  r8^\aTempo f-.( g-.) r af-.( bf-.) |
  r8 c-.( df-. c-. af'-. g-. |
  f8-. c-. df-. c-. af-. f-. |
  c2.-^) |
  r8 f-.( g-.) r af-.( bf-.) |
  r8 c-.-\slurShapeB ( df-. c-. c'-. af-. |
  g8-. c,-. df-. c-. g-. c,-. |
  f2.)-> |
  
  \barNumberCheck 17
  af4.-\slurShapeC ( \slashedGrace { bf8 } af8 g8. af16 |
  bf4. c |
  df8-. af-. bf-. af-. f-. df-. |
  af4->) r8 r4 ef'8( |
  ef'4. \grace { ef16 f } ef8 d ef |
  f4.)-5 gf4.->~(-4 |
  gf8-. df-. ef-. df-.^\sempreStret bf-. gf-. |
  df8-.) df'-.([ ef-.] df-. af-. ff-. |
  
  \barNumberCheck 25
  df8-.) <df df'>-.[( <ef ef'>-.]) r <ff ff'>-.( <gf gf'>-.) |
  r8 <g g'>-.( <a a'>-.)^\accel r <bf bf'>-.( <c c'>-.) |
  \stemDown
  \ottava 1 <df df'>8( <ef ef'>) <ff ff'>( <gf gf'>) <g g'>( <a a'>) |
  \stemNeutral
  <bf bf'>16( <c c'> <df df'>4) \ottava 0 r r8 |
  \pageTurn
  <df, df'>8-.( q-. q-.) q4->( <c c'>8) |
  df8-.( df-. df-.) df4->( c8) |
  <bf bf'>8-.(^\stretto <af af'>-. <bf bf'>-. <c c'>4.-.) |
  bf8( af bf c4.) |
  
  \barNumberCheck 33
  \tuplet 5/3 { \ottava 1 <df' df'>8-.( q-. q-. q-. \ottava 0 <df, df'>-.) } 
    q4-> <c c'>8 |
  \tuplet 5/3 { df'8-.( df-. df-. df-. df,-.) } df4-> c8 |
  \tuplet 5/3 { <bf bf'>8( <c c'> <bf bf'> <af af'> <bf bf'>) } <c c'>4. |
  \tuplet 5/3 { bf8(^\pocoRall c bf af bf) } c4. |
  r8^\aTempo f,-.( g-.) r af-.( bf-.) |
  r8 c-.( df\prall c-. af'-. g-. |
  f8-. c-. df\prall c-. af-. f-.|
  c2.-^) |
  
  \barNumberCheck 41
  r8 f-.( g-.) r af-.( bf-.) |
  r8 c-.( df-. c-. c'-. af-. |
  g8-. c,-. df-. c-.) g-.^([ c,-.] |
  f16 g af4~ af) r8 | 
  r8^\conForza <f f'>-.( <g g'>-.) r <af af'>-.( <bf bf'>-.) |
  r8 <c c'>-.-\slurShapeE ( <df df'>-. <c c'>-. <af' af'>-. <g g'>-. |
  <f f'>8-. <c c'>-. <df df'>-. <c c'>-. <af af'>-. <f f'>-. |
  <c c'>2.->) |
  
  \barNumberCheck 49
  r8 <f f'>-.( <g g'>-.) r <a a'>-.( <bf bf'>-.) |
  r8 <c c'>( <df df'> <ef ef'>4.) |
  r8 <b b'>-.(^\stretto <c c'>-.) r <d d'>-.( <e e'>-.) |
  r8 <f f'>( <g g'> <af af'>4.) |
  r8^\sempreAccel <e, e'>( <f f'> <af af'> <g g'> <af af'> |
  <c c'>8 <bf bf'> <c c'> <ef ef'> <df df'> <ef ef'> |
  <f f'>8 <e e'> <f f'> \ottava 1 <af af'> <g g'> <af af'> |
  <a a'>16 <bf bf'> <df df'>4~ q4) \ottava 0 <e,, e'>8( |
  
  \barNumberCheck 57
  <g g'>8 q q q4 <f f'>8) |
  g8-.( g-. g-.) g4->( f8) |
  <e e'>8-.( <ds ds'>-. <e e'>-. <f f'>4.)^\ten |
  e8(^\smorz ds e f4.) |
  \tuplet 5/4 { <g' g'>16 q q q q } q[ r32 <g, g'>] q4-> <f f'>8 |
  \tuplet 5/4 { g'16 g g g g } g[ r32 g,] g4-> f8 |
  <e e'>16-.(^\riten <f f'>-. <g g'>-. <af af'>-. <bf bf'>-. <af af'>-. 
    <f f'>4.) |
  e16-.( f-. g-. af-. bf-. af-. f4.) |
  
  \barNumberCheck 65
  \ottava 1 bf''16 c, af' c, bf' c,  af' c, bf' c, af' c, |
  g'16 af, f' af, g' af,  f' af, g' af, f' af, |
  f''8-. \ottava 0 r r r4 r8 |
  \bar "|."
}

leftHand = \relative {
  \clef bass
  \global
  
  \stemDown
  f,16(-5_\lagatissimo c'-4 af' c,-4 bf' c,)-4  f,(-5 c'-4 c' c, df' c,) |
  f,16 c' c' c, bf' c,  f, c' af' c, bf' c, |
  f,16 c' af' c, bf' c,  f, c' af' c, c' c, |
  f,16 c' g' c, af' c,  f, c' bf' c, g' c, |
  f,16 c' af' c, bf' c,  f, c' c' c, df' c, |
  f,16 c' c' c, bf' c,  f, c' af' c, c' c, |
  f,16 c' bf' c, g' c,  f, c' bf' c, g' c, |
  f,16( b af' b, df' b,)  f( b af' b, df' b,) |
  
  \barNumberCheck 9
  f16 c' af' c, bf' c,  f, c' c' c, df' c, |
  f,16 c' c' c, bf' c,  f, c' af' c, bf' c, |
  f,16 c' af' c, bf' c,  f, c' af' c, c' c, |
  f,16 c' g' c, af' c,  f, c' bf' c, g' c, |
  f,16 c' af' c, bf' c,  f, c' c' c, df' c, |
  f,16 c' c' c, bf' c,  f, c' af' c, c' c, |
  f,16 c' bf' c, g' c,  f, c' bf' c, g' c, |
  f,16 c' af' c, c' c,  f, c' af' c, c' c,
  
  \barNumberCheck 17
  f,16 d' af' d, bf' d,  f, bf af' bf, bf' bf, |
  \stemNeutral
  ef,16 bf' gf' bf, bf' bf,  ef, af gf' af, af' af, |
  df,16 af'-3 f' af, af' af,  df, af' f' af, af' af, |
  c,16 af' ef' af, af' af,  c, af' ef' af, af' af, |
  cf,16( gf' ef' gf, gf' gf,)  cf,( gf' ef' gf, gf' gf,) |
  cf,16( af' df af af' af,)  bf,( gf' df' gf, gf' gf,) |
  bf,16( gf' df' gf, gf' gf,)  bf,( gf' df' gf, gf' gf,) |
  af,16( f' df' f, f' f,)  af,( ff' df' ff, ff' ff,) |
  
  \barNumberCheck 25
  aff,16( ff' df' ff, ff' ff,)  bf,( aff' ff' aff, aff' aff,) |
  b,16( g' e' g, g' g,)  c,( g' e' g, g' g,) |
  ff16( df' bf' df,) g,( ff' df' ff,) bf,( g' ff' g,) |
  df16( bf' g' bf,) e,( df' \clef treble bf' df, bf' df, bf' df,) \clef bass |
  c,16 af'-3 f' af, af' af,  c, g'-4 e' g, g' g, |
  c,16 af' f' af, af' af,  c, g' e' g, g' g, |
  c,16 f-4 df' f, f' f,  c g'-4 e' g, g' g, |
  c,16 f df' f, f' f,  c g' e' g, g' g, |
  
  \barNumberCheck 33
  c,16 af' f' af, af' af,  c, g' e' g, g' g, |
  c,16 af' f' af, af' af,  c, g' e' g, g' g, |
  c,16 f df' f, f' f,  c g' e' g, g' g, |
  c,16 f df' f, f' f,  c g' e' g, g' g, |
  \stemDown 
  f,16(_\sempreLagato c' af' c, bf' c,)  f,( c' c' c, df' c,) |
  f,16 c' c' c, bf' c,  f, c' af' c, bf' c, |
  f,16 c' af' c, bf' c,  f, c' af' c, c' c, |
  f,16-\slurShapeD ( c' g' c, af' c,)  f,( c' bf' c, g' c,) |
  
  \barNumberCheck 41
  f,16 c' af' c, bf' c,  f, c' c' c, df' c, |
  f,16 c' c' c, bf' c,  f, c' af' c, c' c, |
  f,16 c' bf' c, g' c,  f, c' bf' c, g' c, |
  f,16 b af' b, df' b,  f b af' b, df' b, |
  f16 c' af' c, bf' c,  f, c' c' c, df' c, |
  f,16 c' c' c, bf' c,  f, c' af' c, bf' c, |
  f,16 c' af' c, bf' c,  f, c' af' c, c' c, |
  f,16 c'-4 g' c, af' c,  f, c' bf' c, g' c, |
  
  \barNumberCheck 49
  f,16 c' a' c, bf' c,  f, c' c' c, df' c, |
  f,16 gf' ef' gf, f' gf,  f, gf' gf' gf, gf' gf, |
  f,16 d' af' d, a' d,  f, d' b' d, cs' d, |
  f,16 d' d' d, e' d,  f, d' f' d, f' d, |
  \repeat unfold 4 { f,16 df' bf' df, df' df,  f, df' bf' df, df' df, | }
  
  \barNumberCheck 57
  \repeat unfold 8 { f,16 df' bf' df, df' df,  f, c' af' c, c' c, | }
  
  \barNumberCheck 65
  \stemNeutral
  f,8 r \clef treble f''''16 f,  f' f, f' f, f' f, |
  bf16 f bf f bf f  bf f bf f bf f |
  f,8-. r r r4 r8 |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5

  s2.\p |
  s4.\cresc s8\< s4\! |
  s2.^\conForza |
  s2. * 2 |
  s4 s\< s8 s\! |
  s2 s8 s\< |
  s32 s\! s16 s8\cresc s2 |
  
  \barNumberCheck 9
  s2.^\sottoVoce |
  s8 s4\< s8\! s4 |
  s2. * 6 |
  
  \barNumberCheck 17
  s2.\p\< |
  s2.\cresc |
  s2.\f |
  s2.\sf |
  s2.\p |
  s4. s\cresc |
  s2. * 2 |
  
  \barNumberCheck 25
  s2.\f |
  s2. |
  s4 s2\cresc |
  s2.\ff |
  s2.\f |
  s2.-\tweak X-offset 0 \pp |
  s2.\f |
  s2.-\tweak X-offset 0 \pp |
  
  \barNumberCheck 33
  s2.^\fAppas |
  s2.-\tweak X-offset 0 \pp |
  s2.\f |
  s2.-\tweak X-offset 0 \pp |
  s2.^\sempreAgi
  s8 s\< s s4 s8\!
  s2. * 2 |
  
  \barNumberCheck 41
  s2. * 3 |
  s8\< s4\! s4. |
  s2. |
  s8 s\< s s4.\! | 
  s4 s8\> s4 s8\! |
  s2.\sf |
  
  \barNumberCheck 49
  s4. s\cresc |
  s8 s4\< s4.\! |
  s2.\cresc |
  s2.\! |
  s2.^\sempreCresc |
  s2. |
  s2\< s8 s\! |
  s8 s4\sf s8 s4\p |
  
  \barNumberCheck 57
  s2.^\sottoVoce |
  s2.-\tweak X-offset 0 \pp |
  s4\p\< s8\! s4. |
  s2.\pp |
  s2.\f |
  s2.-\tweak X-offset 0 \pp |
  s2.\ff |
  s2.\pp |
  
  \barNumberCheck 65
  s2.^\pppLeggier |
  s2.^\smorz |
  s2. |
}

pedal = {
  \override TextScript.Y-offset = -0.5
  
  \repeat unfold 3 {
    s4\sustainOn s16 s\sustainOff s4\sustainOn s16 s\sustainOff |
  }
  s4\sustainOn s16 s-\tweak X-offset -1.25 \sustainOff s4\sustainOn s16 
    s\sustainOff |
  s2.^\segue |
  s2. * 3 |
  
  \barNumberCheck 9
  s2.-\sempreLag |
  s2. * 6 |
  s2\sustainOn s8. s16\sustainOff |
  
  \barNumberCheck 17
  s4\sustainOn s16 s\sustainOff s4\sustainOn s16 s\sustainOff |
  s4\sustainOn s16 s-\tweak X-offset -1.5 \sustainOff s4\sustainOn s16 
    s\sustainOff |
  \repeat unfold 3 { s2\sustainOn s8. s16\sustainOff | }
  s4\sustainOn s16 s\sustainOff s4.\sustainOn |
  s2. |
  s4\sustainOn s16 s\sustainOff s4\sustainOn s16 s\sustainOff |
  
  \barNumberCheck 25
  s2\sustainOn s8. s16\sustainOff |
  s2. * 2 |
  s4\sustainOn s16 s\sustainOff s4\sustainOn s16 s\sustainOff |
  \repeat unfold 4 { s4\sustainOn s16 s-\tweak X-offset -1.5 \sustainOff 
                     s4\sustainOn s16 s\sustainOff | }
  
  \barNumberCheck 33
  \repeat unfold 4 { s4\sustainOn s16 s-\tweak X-offset -1.5 \sustainOff 
                     s4\sustainOn s16 s\sustainOff | }
  s2. * 4 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  \repeat unfold 4 { s4\sustainOn s16 s-\tweak X-offset -2 \sustainOff 
                     s4\sustainOn s16 s\sustainOff | }
  s2.\sustainOn |
  s2. * 2 |
  s2 s8 s16 s\sustainOff |
  
  \barNumberCheck 57
  \repeat unfold 7 { s4\sustainOn s16 s-\tweak X-offset -2 \sustainOff 
                     s4\sustainOn s16 s\sustainOff | }
  s4\sustainOn s16 s-\tweak X-offset -2 \sustainOff s4.\sustainOn
  
  \barNumberCheck 65
  s2. * 2 |
  s2.\sustainOff |
}

etude-nine-header = \header { }

etude-nine-music = {
  \new PianoStaff \with { instrumentName = \markup \huge "No. 9" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal
  >>
}

etude-nine-midi = \book {
  \bookOutputName "Fredric-Chopin-Etudes-Op10-No9"
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
