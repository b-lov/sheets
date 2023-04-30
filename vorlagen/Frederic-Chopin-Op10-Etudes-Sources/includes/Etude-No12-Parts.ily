%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.1"
\language "english"

\include "Global.ily"
\include "articulate.ly"

legatis = \markup \larger \italic "legatissimo"
conFuoco = \markup \larger \italic "con fuoco"
ten = \markup \larger \italic "ten."
conForza = \markup \larger \italic "con forza"
sottoVoce = \markup \larger \italic "sotto voce"
stretto = \markup \larger \italic "stretto"
smorz = \markup \larger \italic "smorz"
pocoRall = \markup \larger \italic "poco rall."
ffApp = \markup { \dynamic ff \larger \italic "ed appassionato" }
sottoVoce = \markup \larger \italic "sotto voce"

slurShapeA = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 1.5) (0 . 2.5) (0 . 3))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 3.5) (0 . 3.5) (0 . 3.5) (0 . 3.5))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeJ = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -2)) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 3.5) (0 . 3.5) (0 . 3.5) (0 . 3.5))
                      ) \etc
slurShapeM = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
slurShapeN = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
slurShapeO = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
slurShapeP = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
slurShapeQ = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
slurShapeR = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
slurShapeS = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
slurShapeT = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 4) (0 . 4) (0 . 4) (0 . 4))
                      ) \etc
slurShapeU = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -2.5)) \etc
slurShapeV = \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) \etc

global = {
  \time 4/4
  \key c \minor
  \accidentalStyle piano
}

rightHand = \relative {
  \global
  \tempo "Allegro con fuoco" 4 = 160
  \override DynamicTextSpanner.style = #'none
  
  <b' d f g b>2 r |
  r2 r4 <af ef' f af>8. <g g'>16( |
  <d' f g d'>2) r |
  r2 r4 <af ef' f af>8. <g g'>16( |
  <f' g d' f>8\noBeam) af'16-4->( g-3 f-2-> d-1 ef-4 d-3  
    b-2-> g-1 af-4 g f-> d ef d |
  \voiceOne
  b16-> g af g f-> d ef d  \staffDown b-> g af g f-> d ef d |
  c16 b) g'-4( f ef d ef-4 d  c b bf'-4 af g f g f |
  ef d ef' d c b c b  af g af g f ef f ef |
  
  \barNumberCheck 9
  c8) \oneVoice \staffUp r8 r4 r2 |
  r2 r8 r16 <c'' c'>([ <d d'>8. <ef ef'>16] |
  <ef ef'>2) r8 r16 <g, c ef g>16[ q8. q16] |
  \override DynamicLineSpanner.staff-padding = #3.5 
  <af c~ ef~ af>2(\> <g c ef g>8)\! r16 <c c'>16([\f\< <d d'>8. <ef ef'>16]\! |
  <ef ef'>2) r8 r16 <g, c ef g>16[ q8. q16] |
  <a c ef a>1(^\ten |
  <d a' d>8-^) r <g, d' g>4-> r8 r16 <g df' g>[ <af df af'>8.-> <g df' g>16] |
  <g c g'>8( <c c'>16) r <f, c' f>4-> r8 r16 q16[ <g c g'>8.-> <f c' f>16] |
  
  \barNumberCheck 17
  <e c' e>2.~ q8. <ef ef'>16-> |
  << { b'2 } \\ { \set doubleSlurs = ##t <ef, ef'>4( <d d'>) } >> r2 |
  R1 |
  r2 r8 r16 <c' c'>([ <d d'>8. <ef ef'>16] |
  <ef ef'>2) r8 r16 <g, c ef g>[ q8. q16] |
  <af c~ ef~ af>2( <g c ef g>8->) r16 <c c'>([ <d d'>8. <ef ef'>16] |
  <ef ef'>2) r8 r16 <g, c ef g>[ q8. q16] |
  <a ef' f a>1^\ten |
  
  \barNumberCheck 25
  <bf f' bf>4. q4 <bf g' bf> <b g' b>8~ |
  <b g' b>8 <c g' bf c>4 <cs bf' cs> <d bf' d>8 <ef bf' ef> <e bf' e> |
  <f bf d f>2 
    << 
      { s4 d'8. c16 | s8 } 
      \\ 
      { <d, f bf d>4\slurShapeF^( <ef f a> | <d f bf>8) } 
    >>
    r8 r4 r2 |
  <b ds gs b>2. <ds, gs b ds>8. <es es'>16 |
  <fs as ds fs>2. <fs fs'>8. <gs gs'>16
  <a cs fs a>2. <cs, fs a cs>8. <ds ds'>16 |
  <e gs cs e>2. <e e'>8. <fs fs'>16 |
  
  \barNumberCheck 33
  <gs ds' fs gs>2. q8. <as as'>16 |
  <cf f af cf>4 <bf f' af bf>2\cresc q8.(\< <c c'>16\! |
  <df g bf df>4 <c g' bf c>) r2 |
  R1 |
  <af' c f af>2( <f c' f>4 \voiceOne <c f c'> |
  <bf f'~ bf>2 <af f' af>4) \oneVoice r |
  <af' c f af>2( <f c' f>4 \voiceOne <c f~ c'> |
  <c f c'>2.) \oneVoice <b f' b>8. <c c'>16 |
  
  \barNumberCheck 41
  <d f b d>2 r |
  r2 r4 <af ef' f af>8. <g g'>16( |
  <f' g d' f>2) r |
  r2 r4 <af, ef' f af>8. <g g'>16( |
  <f'g d' g>8-.) af'16( g f d ef d  b g af g f d ef d |
  \voiceOne
  b16 g af g f d ef d  \staffDown b g af g f d ef d |
  c16 b) g'( f ef d ef d  c b bf' af g f g f |
  ef d ef' d c b c b  af g af g f ef f ef |
  
  \barNumberCheck 49
  c8) \staffUp \oneVoice r r4 r2 |
  r2 r8 r16 <c'' c'>( \tuplet 3/2 { <cs cs'>8 <d d'>8. <ef ef'>16 } |
  <ef ef'>2) r8 r16 <g, c ef g>[ q8. q16] | 
  <af c~ ef~ af>2( \tuplet 3/2 4 { <g c ef g>8\noBeam) <b b'>( <c c'> 
                                   <cs cs'>[ <d d'>) r16 <ef ef'>] } |
  <ef ef'>2 r8 r16 <g, c ef g>[ q8. q16] |
  <a c ef a>1( |
  <a d a' d>8-.\arpeggio) r <g d' g>4 
    \tuplet 3/2 4 { r8 <g df' g> q q([ <af df af'> r16 <g df' g>)] } |
  <g c g'>16( <c c'>) r8 <f, c' f>4-> \tuplet 3/2 { r8 q( q } 
    <e c'e>16[ <f c' f> <g c g'>) r32 <f c' f>] |
    
  \barNumberCheck 57
  <e c' e>4 << { <ef_~ ef'~>2 q8. q16 } \\ { c'2. } >> |
  << { b2 } \\ { \set doubleSlurs = ##t <ef, ef'>4( <d d'>) } >> r2 |
  R1 |
  r2 \tuplet 3/2 4 { r8 <b' b'>( <c c'> <cs cs'>[ <d d'>) r16 <ef ef'>] } |
  <ef ef'>2 r8 r16 <g, c ef g>[ q8. q16] |
  <af c~ ef~ af>2( \tuplet 3/2 { <g c ef g>8-.\noBeam) <b b'> <c c'> } 
    <cs cs'>16([ <d d'> <f f'>) r32 <ef ef'>] |
  <ef ef'>2-> r8 r16 <g, c ef g>16[ q8. q16] |
  << 
    { <a ef' a>1-> } 
    \\ 
    { \override DynamicLineSpanner.staff-padding = #3.5 s2.\sf\< s8\cresc s\! }
  >> |
  
  \barNumberCheck 65
  <bf df bf'>2-> <af bf df af'>4 <gf bf df gf>8. <f bf df f>16 |
  <f bf~ df f>2->(\> <e bf' e>4)\! r |
  <af cf ff af>2( <gf af cf gf'>4 <ff af cf ff>8.) <ef af cf ef>16 |
  <ef af^~ cf ef>2( <d af' d>4) r |
  <g ef' g>1-> |
  <<
    { g'2 ~ g4. f8 }
    \\
    { g,2-> g-> }
    \\
    { d'1 }
  >> |
  << { f2( ef) } \\ { <g, c>1 } >> |
  << { ef'8( f16 ef df8. ef16 f4 af,) } \\ { <f af>1 } >> |
  
  \barNumberCheck 73
  <ef c'>1->~ |
  q1 |
  << { c'4.( b8 d4) } \\ { <d, f>2. } >> r4 |
  R1 |
  << 
    { c'1~\slurShapeV(^\sottoVoce | c2 d | e1) } 
    \\ 
    { c,8-. r r4 r2 | <f af>1 | <e g>1 } 
  >> |
  <<
    { c'2.^\pocoRall( <b d>4 | <e, g c e>8\noBeam) }
    \\
    { <c~ g'>2 <c f> | s8 }
    \\
    { af'1 | s8 }
  >> 
    af''16 g e c df c  bf g af g e c df c |
    
  \barNumberCheck 82 % can't be 81 because it starts in another voice
  bf16 g af g e c df c  \staffDown \voiceOne bf g af g e c df c |
  <c f a c>2-. <c f af c>-. |
  <c f g c>4-. <c e g c>-. r2 |
  \bar "|."
}

leftHand = \relative {
  \clef bass
  \global
  \override DynamicTextSpanner.style = #'none
  
  r8 af'16_2( g_1 f_2-> d_4 ef_3 d_1  b_2-> g_4 af_3 g_1 f-> d ef d |
  b16-> g af g f-> d ef d  c_2-> g_5 c g c-> g c g |
  b8-.\noBeam) af'''16( g f-> d ef d  b-> g af g f-> d ef d |
  b16-> g af g f-> d ef d  c-> g c g c-> g c g |
  b8-.\noBeam) \clef treble af''''16-> g f-> d ef d  b-> g af g f-> d ef d |
  \voiceFour
  \clef bass b16-> g af g f-> d ef d  b-> g af g f->d ef d |
  c16 b g'-4 f ef d ef-2 d  c b bf'-1 af g f g f |
  ef16 d ef' d c b c b  af g af g f ef f ef |
  
  \barNumberCheck 9
  c16\< g'-2^( c-1 d-4 ef-3 g-2 c-1 d-3  ef-2\> d c g ef d c g)\! |
  \oneVoice
  c,16-5(\< g'-2 c-1 d-3 ef-2\> d c g)\!  c,(\< g' c d ef\> d c g)\! |
  c,16\slurShapeA^(\< g' c d ef g c d  ef\> d c g ef d c g)\! |
  c,16(\< g' c d ef\> d c g)\!  c,(\< g' c d ef\> d c g)\! |
  c,16\slurShapeB^(\< g' c d ef g c d  ef\> d c g ef d c g)\! |
  c,16-5( fs-2 c'-1 d-3 ef-2 d c fs,)  c( fs c' d ef d c fs,) |
  b,16( b'-1 d-4 g-2 d'-1 g, d b)  bf,( bf' df g df' g, df bf) |
  a,16( a' c f c' f, c a)  af,( af' c f c' f, c af) |
  
  \barNumberCheck 17
  g,16-5(\< g'-1 c-3 b-4 df-2 c-4 d-1 cs-3  ef-2 d-4 e-1 ds-3 f e gf f)\! |
  g16( fs af g bf af g f  ef d c\dim b a g f d)\! |
  c16\slurShapeC(\< g' c d ef g c d  ef\> d c g ef d c g)\! |
  c,16(\< g' c d ef\> d c g)\!  c,(\< g' c d ef\> d c g)\! |
  c,16\slurShapeD(\< g' c d ef g c d  ef\> d c g ef d c g)\! |
  c,16(\< g' c d ef\> d c g)\!  c,(\< g' c d ef\> d c g)\! |
  c,16\slurShapeE(\< g' c d ef g c d  ef\> d c g ef d c g)\! |
  c,16(\< f c' d ef\> d c f,)\!  c(\< f c' d\! ef\> d c f,)\! |
  
  \barNumberCheck 25
  d16-5( bf'-3 cf-2 bf bf' bf, cf bf)  ef,( bf' cf bf bf' bf, cf bf) |
  e,16( bf' c bf bf' bf, c bf)  \stemDown f( bf_3 bf' bf,) gf( bf bf' bf,) |
  \stemNeutral
  f16\slurShapeG(\< bf d f-1 bf-3 d-2 g-1 f-2  f-1\> d bf g f-1 ef c f,-1\! |
  bf,16-.\noBeam) df'-1( c cf bf-4 c-1 cf bf  a-4 cf-1 bf a gs-4 bf-1 a gs-3 |
  gs,8-.-5\noBeam) fss'16-5\slurShapeH( gs b ds-1 as-5 b  
    ds gs-1 css,-5 ds gs b-1 fss gs-1 | 
  ds,16-.\noBeam) ds''-1( es, fs as ds-1 css,-5 ds  
    fs as-1 gss, as ds fs-1 es, fs-1 |
  fs,8-.-5\noBeam) es'16-5\slurShapeI( fs a cs-1 gs-5 a  
    cs fs-1 bs,-5 cs fs a-1 es fs-1 |
  cs,16-.-5\noBeam) cs''-1\slurShapeJ( ds, e gs cs bs, cs  
    e gs fss, gs cs e-1 ds, e-2 |
    
  \barNumberCheck 33
  bs16-.\noBeam) ds''-1\slurShapeK( fss, gs a-1 gs fs e-1  
    ds cs bs-1 a fss-3 gs-2 ds gs |
  d16\noBeam) f''-1 a, bf cf-1\> bf af gf  f-1 ef d-1 cf a-3 bf-2 f bf\! |
  e,16-.\noBeam g''( b, c df-2 c-1 bf af  g-1 f e g-1 f e df c-1 |
  b16 c df c-1 bf af g-1 f  e df c-1 b c bf af g) |
  f16-5_( c'-2\< f-1 g-4 af-3 c-2 f-1 g-4  af-3 c \staffUp f g 
    \voiceFour af\> g f c\! |
  df16 f df af-4 \staffDown f-1 df-2 af f  \oneVoice df-2 af df f df af df f) |
  f,16_( c' f g af c f g  af c \staffUp f g \voiceFour af g f c |
  d16-2 f-1 d-2 c-3 \staffDown af-4 f-1 d c  \oneVoice af f d c af-5 c d af' |
  
  \barNumberCheck 41
  <g, g'>8-.\noBeam) af'''16->( g f-> d ef d  b-> g af g f-> d ef d |
  b16-> g af g f-> d ef d  c-> g c g c-> g c g |
  b8-.\noBeam) af'''16->( g f-> d ef d  b-> g af g f-> d ef d |
  b16 g af g f d ef d  c g c g c g c g |
  b'8-.\noBeam) \clef treble af'''16 g f d ef d  b g af g f d ef d |
  \voiceFour
  \clef bass b16 g af g f d ef d  b g af g f d ef d |
  c16 b g' f ef d ef d  c b bf' af g f g f |
  ef16 d ef' d c b c b  af g af g f ef f ef |
  
  \barNumberCheck 49
  c16\< g'\slurShapeM^( c d ef g c d  ef\> d c g ef d c g)\! |
  \oneVoice
  c,16(\< g' c d ef\> d c g)\!  c,(\< g' c d ef\> d c g)\! |
  c,16\slurShapeN(\< g' c d ef g c d  ef\> d c g ef d c g)\! |
  c,16(\< g' c d ef\> d c g)\!  c,(\< g' c d ef\> d c g)\! |
  c,16\slurShapeO(\< g' c d ef g c d  ef\> d c g ef d c g)\! |
  c,16-5( fs-2 c'-1 d-3 ef-2 d c fs,)  c( fs c' d ef d c fs,) |
  b,16-5( b'-1 d-4 g-2 d'-1 g, d b)  bf,-5( bf'-1 df g df' g, df bf) |
  a,16( a' c f c' f, c a)  af,( af' c f c' f, c af) |
  
  \barNumberCheck 57
  g,16( g'\< c b df c d cs  ef d e ds f e gf f\! |
  g16\> fs af g bf af g f  ef d c b af g f d\!) |
  c16\slurShapeP(\< g' c d ef g c d  ef\> d c g ef d c g)\! |
  c,16(\< g' c d ef\> d c g)\!  c,(\< g' c d ef\> d c g)\! |
  c,16\slurShapeQ(\< g' c d ef g c d  ef\> d c g ef d c g)\! |
  c,16(\< g' c d ef\> d c g)\!  c,(\< g' c d ef\> d c g)\! |
  c,16\slurShapeR(\< g' c d ef g c d  ef\> d c g ef d c g)\! |
  c,16(\< fs c' d ef\> d c fs,)\!  c(\< fs c' d ef\> d c fs,)\! |
  
  \barNumberCheck 65
  df16-5(\< df'-1 gf-3 af-2 bf-1\> af gf df)\!  
    df,(\< df' gf af bf\> af gf df)\! |
  df,16-5(\< df'-1 g-4 bf-3 df-2\> c-1 bf af  g f e df c bf af g-1)\! |
  cf,16-5(\< cf'-1 ff-4 gf-1 af-2\> gf ff cf)\!
    cf,(\< cf' ff gf af\> gf ff cf)\! |
  cf,16-5(\< cf'-1 f-3 af-2 cf-1\> bf af gf  f ef d cf-1 bf af gf f)\! |
  bf,16(\< bf' ef f g\> f ef bf)\!  bf,(\< bf' ef f g\> f ef bf)\! |
  b,16(\< b' d g d'\> g, d b)\!  b,(\< b' d g d'\> g, d b)\! |
  c,16\slurShapeS(\< g' c d ef g c d  ef\> d c g ef d c g)\! |
  f,16-5\slurShapeT(\< df'-2 f-1 g-4 af-3 df-2 f-1 g-3  
    f-2\> g f df af f df c\! |
  
  \barNumberCheck 73
  g8-.\noBeam) e'16-1( ds f-1 e gf-2 f  g-1 fs af-2 g a-1 gs bf-2 a) |
  cf16-1( bf c-1 b df-2 c d-1 cs  ef-2 d e-1 ds f-1 e gf-2 f) |
  g16\slurShapeU( fs af g bf-2 af g f  ef d f-2 ef g-1 f ef d-1 |
  c16 b-1 d c b af g-1 fs  g-1 af-2 f-3 g-1 ef f d ef |
  c8-.\noBeam) df''16( c bf g af g  e c df c bf g af g |
  <>\pp \repeat unfold 8 { f16 c } |
  c'8-.\noBeam) df'16( c bf g af g  e c df c bf g af g |
  <>\pp \repeat unfold 8 { f16 c } |
  
  \barNumberCheck 81
  c'8-.\noBeam) \clef treble af'''16 g e c df c  bf g af g e c df c |
  \clef bass \voiceFour bf16 g af g e c df c  bf g af g e c df c |
  <f, f'>2 q |
  <c c'>4 q r2 |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5
  
  s8\f s^\legatis s2. |
  s2. s8.\> s16\! |
  s1 |
  s2. s8.\> s16\! |
  s8 s^\conFuoco s2. |
  s1 |
  s2 s\cresc |
  s1\! |
  
  \barNumberCheck 9
  s1 |
  s2 s8 s\f\< s8. s16\! |
  s2 s8 s\p\< s8. s16\! |
  s1
  s2 s8 s16 s\< s8. s16\! |
  s1\sf |
  s1^\conForza |
  s1 |
  
  \barNumberCheck 17
  s1 * 3 |
  s2 s8 s16 s\p\<_\sottoVoce s8. s16\! |
  s1 |
  s2 s8 s16 s\cresc s4 |
  s2\sf s8 s16 s\< s8. s16\! |
  s1\sf |
  
  \barNumberCheck 25
  s2 s\cresc |
  s2\! s8 s4.^\stretto |
  s2. s8.\> s16\! |
  s1 |
  s2.\f s8.\< s16\! |
  \repeat unfold 3 { s2. s8.\< s16\! | }
  
  \barNumberCheck 33
  s2. s8.\< s16\! |
  s1 * 3 |
  s1\f |
  s1 * 2 |
  s2. s8.\< s16\! |
  
  \barNumberCheck 41
  s1\ff |
  s1
  s1\f |
  s1
  s1\f |
  s1 * 3 |
  
  \barNumberCheck 49
  s1 |
  s2 s8 s16 s\< s8. s16\! |
  s2 s8 s16 s\p\< s8. s16\! |
  s2 s8 s16 s\f\< s8. s16\! |
  s2 s8 s16 s\p\< s8. s16\! |
  s1\sf |
  s1 |
  s2. s8\< s16\! s |
  
  \barNumberCheck 57
  s1 * 3 |
  s2 s4.\f\< s16 s\! |
  s2 s8 s16 s\< s8. s16\! |
  s1 |
  s2 s8 s16 s\p\< s8. s16\! |
  s1 |
  
  \barNumberCheck 65
  s1\ff |
  s1 |
  s2.\f s8.\> s16\! |
  s1 |
  s16\sf s\p s8 s2. |
  s1 |
  s1\p |
  s1 |
  
  \barNumberCheck 73
  s1 * 2 |
  s8 s^\smorz s2. |
  s1 * 2 |
  s2.\< s8. s16\! |
  s1 * 2 |
  
  \barNumberCheck 81
  s8 s^\ffApp s2. |
}

forceBreaks = {
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\pageBreak
  
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\pageBreak
  
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\pageBreak
  
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\pageBreak
  
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\pageBreak
}

etude-twelve-header = \header { }

etude-twelve-music = {
  \new PianoStaff \with { instrumentName = \markup \huge "No. 12" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Devnull = "breaks" \forceBreaks
  >>
}

etude-twelve-midi = \book {
  \bookOutputName "Fredric-Chopin-Etudes-Op10-No12"
  \score { 
    \articulate << 
      \new Staff = "upper" << \rightHand \dynamics >>
      \new Staff = "lower" << \leftHand \dynamics >>
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
