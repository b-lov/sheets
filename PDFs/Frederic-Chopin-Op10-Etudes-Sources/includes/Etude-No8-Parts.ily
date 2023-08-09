%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.1"
\language "english"

\include "Global.ily"
\include "articulate.ly"

veloce = \markup \larger \italic "veloce"
fMarcato = \markup { \dynamic f \larger "marcato" }
pocoRall = \markup \larger \italic "poco rall."
sempreLeg = \markup \larger \italic "sempre legatissimo"

adjustPedalA = \tweak X-offset -4 \etc
adjustPedalB = \tweak X-offset -5 \etc
adjustPedalC = \tweak X-offset -4 \etc
adjustPedalD = \tweak X-offset -4 \etc
adjustPedalE = \tweak X-offset -4 \etc
adjustPedalFOn = \override SustainPedal.Y-offset = 6
adjustPedalFOff = \revert SustainPedal.Y-offset
adjustPedalG = \tweak X-offset -1 \etc
adjustPedalH = \tweak X-offset -1 \etc
adjustDynA = \tweak X-offset 0 \etc
adjustDynB = \tweak X-offset 0 \etc
adjustHShiftA = \once \override NoteColumn.force-hshift = 0.75
adjustHShiftB = \once \override NoteColumn.force-hshift = 0.5
adjustOttavaA = \once \override Staff.OttavaBracket.padding = 4.5
adjustOttavaB = \alterBroken padding #'(3 1) Staff.OttavaBracket
adjustOttavaC = \once \override Staff.OttavaBracket.padding = 1
adjustOttavaD = \alterBroken padding #'(1 4) Staff.OttavaBracket
adjustOttavaE = \once \override Staff.OttavaBracket.padding = 1
adjustOttavaF = \once \override Staff.OttavaBracket.padding = 1
adjustOttavaG = \alterBroken padding #'(1 1) Staff.OttavaBracket
adjustOttavaH = \alterBroken padding #'(3 3) Staff.OttavaBracket
adjustOttavaI = \alterBroken padding #'(1 1) Staff.OttavaBracket
adjustOttavaJ = \alterBroken padding #'(1 1) Staff.OttavaBracket
adjustOttavaK = \alterBroken padding #'(2.5 1) Staff.OttavaBracket
adjustOttavaL = \once \override Staff.OttavaBracket.padding = 1
adjustOttavaM = \once \override Staff.OttavaBracket.padding = 1
adjustOttavaN = \once \override Staff.OttavaBracket.padding = 1
adjustOttavaO = \alterBroken padding #'(1 1) Staff.OttavaBracket
adjustOttavaP = \once \override Staff.OttavaBracket.padding = 1.5
adjustFingerA = \tweak extra-offset #'(-0.25 . -3) \etc
adjustFingerB = \tweak extra-offset #'(-0.25 . -3) \etc

slurPositionA = \tweak positions #'(4 . 4) \etc
slurPositionB = \tweak positions #'(2 . 3) \etc
slurShapeA = \shape #'((0 . 3) (0 . 2) (0.5 . 2) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . -2) (0 . 1) (0 . 0)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2) (0 . 3) (0 . 1) (0 . -5))
                      ) Slur
slurShapeD = \shape #'((0 . 2) (0 . 3) (0 . 1) (0 . -5)) \etc
slurShapeE = \shape #'(
                        ((0 . -6) (0 . 1) (0 . 0.5) (0 . 0))
                        ((1 . -1) (1 . -0.5) (0 . 0) (0 . 0))
                      ) Slur
slurShapeF = \shape #'((0 . 0) (0 . 0.5) (0 . -3) (0 . 0)) \etc
slurShapeG = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) \etc
slurShapeH = \shape #'((0 . 0) (0 . 0.5) (0 . -3) (0 . 0)) \etc
slurShapeI = \shape #'((0 . -4) (0 . 1) (0 . 1) (0 . 0)) \etc

global = {
  \time 4/4
  \key f \major
  \accidentalStyle piano
}

rightHand = \relative {
  \global
  \tempo Allegro 2 = 88
  
  \partial 4 \adjustOttavaA \ottava 1 \afterGrace c'''4\trill { b16 c }
  a'16->(-4 g f c  \ottava 0 a->-4 g f c  a->-4 g f c  \staffDown \voiceOne 
    a-> g f c) |
  f16->( g a c \staffUp \oneVoice f-> g a c  f-> g a c  \adjustOttavaB 
    \ottava 1 f-> g a g) |
  f16-> c a g  \ottava 0 f-> c a g  \voiceOne f-> c \staffDown a g  f-> c f a |
  g16->-3 c,-1 g'-2 a-3  \staffUp \oneVoice bf->-4 c-1 g' a  bf-> c g' a
    \adjustOttavaC \ottava 1 bf-> c g' a |
  bf16-> a g c,  \ottava 0 bf-> a g c,  bf-> a g c,  \staffDown \voiceOne 
    bf-> a g c, |
  g'16->-\slurShapeH( a bf c \staffUp  \oneVoice g'-> a bf c  g'-> a bf c  
    \adjustOttavaE \ottava 1 g'-> a bf a |
  g16-> c, bf a  \ottava 0 g-> c, bf a  g-> c, bf a  \staffDown \voiceOne
    g-> c, g' bf)-\adjustFingerA-4 |
  a16->-3 c,-1 f-2 g-3  \staffUp \oneVoice a->-4 c f g  a-> c f g 
    \adjustOttavaG \ottava 1 a-> c f a-4 |
    
  \barNumberCheck 9
  g16->(-3 f-2 d-1 bf-4  \ottava 0 g-> f d bf)-3  c-1->( f g a  \ottava 1
    c-> f g a) |
  g16->( f d bf  \ottava 0 g-> f d bf)  c->( f g a  \ottava 1 c-> f g a) |
  g16->-3 a g f  \ottava 0 d->-1 b-3 c a  g->-1 a-4 g f  d->-1 b-3 c a |
  g16-> a g f  \staffDown \voiceOne d-> b c a  g-> a g f  d-> f-4 e d |
  c16->-1 a' g b-4  \staffUp \oneVoice c->-1 a' g b  c->-1 a' g b  
    \ottava 1 c->-1 a' g b |
  c16->-5 f,-1 e-2 d'-5  c->-4 f,-1 e-2 d'-5  c->-4 f, e d'  c->-4 a bf-4 g |
  a16-\slurShapeB( g f c  \ottava 0 a g f c  a g f c  \staffDown \voiceOne 
    a g f c) |
  f16( g a c \staffUp \oneVoice f g a c  f g a c  \adjustOttavaF \ottava 1 
    f g a g |
  
  \barNumberCheck 17
  f16 c a g  \ottava 0 f c a g  \voiceOne f c \staffDown a g  f c f a ) |
  g16( c, g' a  \staffUp \oneVoice bf c g' a  bf c g' a  
    \ottava 1 bf c g' a |
  bf16 a g c,  \ottava 0 bf a g c,  bf a g c,  \staffDown \voiceOne 
    bf a g c,) |
  \slurShapeC g'16( a bf c \staffUp  \oneVoice g' a bf c  g' a bf c  \ottava 1 
    g' a bf a |
  g16 c, bf a  \ottava 0 g c, bf a  g c, bf a  \staffDown \voiceOne 
    g c, g' bf) |
  a16( c, f g  \staffUp \oneVoice a c f g  a c f g  \ottava 1 a c f a |
  g16 f d bf  \ottava 0 g f d bf)  c( f g a  \ottava 1 c f g a |
  g16 f d bf  \ottava 0 g f d bf)  c( f g a  \ottava 1 c f g a) |
  
  \barNumberCheck 25
  g16 a g f  \ottava 0 d-1 bf-3 c a  g-1 a-4 g f  d bf c-4 a-2 |
  g16(-1 a-2 g-1 d'-3  c-2 d-3 c-1 a'-3  g-2 a-3 g-1 d'  \adjustOttavaD
    \ottava 1 c d c d') |
  c16-\slurShapeD(-4 d-5 c-4 bf-3  g-2 e-1 f-4 d-2  \ottava 0 c d c bf  
    g e f d |
  c16-1 d-5 c-4 a-2  f-1 c-2 d-4 bf-2  \staffDown \voiceOne a-1 e-2 f-4 d-2
    c-1) r r8 |
  \staffUp \oneVoice f'''16(->-4 e d a  f->-4 e d a  \voiceOne f->-4 e d 
    \staffDown a  f-> e d a) |
  d16->( e f a  \staffUp \oneVoice d-> e f a  d-> e f a  d-> e f e |
  d16-> a f e  d-> a f e  \staffDown \voiceOne d-> a f e  d-> a d f) |
  e16( a, e' f  \voiceOne g a \staffUp e' f  \oneVoice g a e' f  
    \adjustOttavaH \ottava 1 g a e' f |
  
  \barNumberCheck 33
  g16-> f e a,  \ottava 0 g-> f e a,  \voiceOne g-> f e \staffDown a,
    g-> f e a,) |
  e'16->( f g a  \staffUp \oneVoice e'-> f g a  e'-> f g a  e' f g f |
  e16 a, g f  e a, g f  \voiceOne e \staffDown a, g f  e a, e' g) |
  fs16-\slurShapeI( a, ds e  fs a \staffUp ds e  \oneVoice fs a ds e  
    fs a ds e) |
  \adjustOttavaI \ottava 1 fs16(-4 e ds c')  fs,(-4 e ds a)  f'(-4 ef d b')  
    f( ef d af)-1 |
  f'16 ef d bf'  f ef d af-1  \ottava 0 f ef d af-1  f ef d af-1 |
  r4 \adjustOttavaJ \ottava 1 f'''16( ef d af)  e'( d cs bf')  e,( d cs g) |
  e'16 d cs a'  \ottava 0 e d cs g  e d cs g  e d cs g |
  
  \barNumberCheck 41
  r4 e'''16(-4 d cs g)  d'( cs b f)  cs'( b a e) |
  b'16( a g d)  a'( g fs c)  g'( fs e b)  fs'( e d a) |
  e'16( d cs g)  d'( cs b gs  d' cs b fs  d' cs b es, | 
  cs'16 b a fs)-1 c'( b a fs  c' b a e  c' b a ds, |
  b'16 a g e)  bf'( a g e  bf' a g d  bf' a g cs,)-1 |
  d16(-1 e f d')  cs,( d e cs')  d,( e f d')  f,( g gs f') |
  a,16( b cs a'  a b cs a'  cs, b a-1 a-5  \stemDown cs, b a-1 a-3) |
  \stemNeutral bf16(-1 c d bf'  \ottava 1 bf-1 c d bf'  d, c bf bf  
    \ottava 0 d, c bf-1 bf)-3 |
  
  \barNumberCheck 49
  b16(-1 cs ds b'  \ottava 1 b cs ds b'  ds, cs b b  \ottava 0 ds, cs b b-3) |
  c16(-1 d e c'  \ottava 1 c d e c'  e, d c-1 c-5  \ottava 0 e, d c c-3) |
  cs16->( d e cs')  e,->( fs g e')  g,->( a bf g')  
    \ottava 1 bf,->( c cs bf') |
  g,16( a bf g')  e,( f g e')  g,( a bf g')  bf,(c cs bf') |
  e,16->( d cs g)  e'->(-4 d cs bf')-5  e,->(-4 d cs g)-1  e'->( d cs bf') |
  e,16->( d cs g  cs d e bf')  e,->( d cs g  cs d e bf') |
  e,16( d c g)  e'( d c bf')  e,( d c g)  e'( d c bf') |
  e,16(^\pocoRall d c g  c d e bf')  e,( d c g  c d e bf') |
  
  \barNumberCheck 57
  \ottava 0 e,16 d c g  f' e d gs,  f' e d gs,  e' d cs g |
  e'16 d cs g  f' e d gs,  f' e d gs,  fs' e ds a |
  fs'16 e ds a  g' f e bf  g' f e bf  fs' e ds a |
  fs'16 e ds a g' f e bf  g' f e bf  gs' g f b, |
  a'16-4 g f c  a g f c  a g f c  \staffDown \voiceOne a g f c |
  f16( g a c  \staffUp \oneVoice f g a c  f g a c  \ottava 1 f g a g |
  f c a g  \ottava 0 f c a g  \voiceOne f \staffDown c a g  f c f a) |
  \slurShapeE g16( c, g' a  \voiceOne bf \staffUp c g' a  \oneVoice bf c g' a
    \adjustOttavaK \ottava 1 bf c g' a |
  
  \barNumberCheck 65
  bf16 a g c,  \ottava 0 bf a g c,  bf a g c,  \staffDown \voiceOne 
    bf a g c,) |
  g'16-\slurShapeF( a bf c \staffUp  \oneVoice g' a bf c  g' a bf c  
    \adjustOttavaL \ottava 1 g' a bf a |
  g16 c, bf a  \ottava 0 g c, bf a  g c, bf a  \staffDown \voiceOne
    g c, g'-2 bf)-\adjustFingerB-4 |
  a16-3 c,-1 f-2 g-3  \staffUp \oneVoice a-4 c f g  a c f g \adjustOttavaM 
    \ottava 1 a c f a |
  g16 f d bf  \ottava 0 g f d bf  c f g a  \adjustOttavaN \ottava 1 c f g a |
  g16 f d bf  \ottava 0 g f d bf  c f g a  \adjustOttavaO \ottava 1 c f g a |
  g16-3 a-4 g-3 f-2  \ottava 0 b,-1 g-3 f-2 b,-1  \voiceOne g-3 f-2 \staffDown
    b,-1 g-3  f s8. |
  r16 df f-1 g  \staffUp \oneVoice df' f-1 g df'  f-1 g df' f  \ottava 1
    g df' f f, |
  
  \barNumberCheck 73
  c'16 -5 g-3 f-2 c-1  \ottava 0 g-3 f-2 c-1 g-3  \voiceOne f-2 c \staffDown
    g f  \staffUp \oneVoice r4 |
  << { \adjustHShiftB <bf bf'>2.( a'8. g16) } \\ { e4-> d d-> <bf c> } >> |
  f'16( a, e'-3 g-5  f-4 a-1 e'-2 g-4  f-3 a-5 g-4 d-1  f-5 ef g,-1 a |
  bf16 ef-5 d-4 e,-1  f-2 c' bf cs,-1  d-2 a' g c,  bf ef d a |
  g16-2 a-3 g-1 d'-3  c-2 d-3 c-1 f  e f e a  g a g d') |
  c16-1 e-2 g-4 f-1  gs-2 bf-4 a-1 b-2  \ottava 1 f' c e g  f gs bf a |
  b16(-2 c-3 f-5 e-4  ef-5 c-3 d-4 bf-2  a-1 d-5 c-4 g-2  f-1 d-2 ef-3 c-1 |
  \ottava 0 bf-2 e-5 d-4 fs,-1  g-2 c-5 bf-4 cs,-1  d-2 a'-5 g-4 c,-1
    bf-2 e d a) |
  
  \barNumberCheck 81
  g16( a g d'  c d c f  e f e d'-5  \ottava 1 c-1 d c d' |
  c16 d-5 c-4 g-2  f-1 g-5 f-4 d-2  \ottava 0 c-1 d c g  f g f d-2) |
  c16(-1 d c f-3  e-2 f e-1 bf'-3  c-2 d c f-3  \ottava 1 e-2 f e d' |
  c16 d c g  f g f d  \ottava 0 c d c g  f g f d) |
  c16 ds f e  fs a g b  \ottava 1 d c ds f  e fs a g |
  bf16->-5 fs-2 g-1 d'-5  c->-4 a-2 g-1 d'-5  bf->-3 fs-2 g-1 d'-5
    c->-4 a-2 g-1 d'-5 |
  bf-> fs g d'  c-> a g d'  bf-> fs g d'  c-> a g d' |
  c16-> a g d'  c-> a g d'  c-> a g d'  c-> g-1 a-3 g |
  
  \barNumberCheck 89
  f8-.-> r f16(-2 bf-4 a-5 d,-2  c-1-> g'-5 f-4 bf,-2  \ottava 0 
    a-1-> d-5 c-4 g-2 |
  f16->-1 bf-4 a-5 d,-2  c-> g' f bf,  a-> d c g  f-> bf a d,)
  c16->^( g' f bf,  \staffDown \voiceOne a-> d c g  f->-1 d'-5 c-4 bf-2
    a->-1 d-5 c-4 g-2 |
  f16-> d' c bf  a-> d c g  f-> d' c bf  a-> d c g) |
  f16-\slurShapeG(-1 a c \staffUp e  \oneVoice f-1 a c e  f a c e  
    \adjustOttavaP \ottava 1 f a c e |
  f8) \ottava 0 r <a,,, e' a>4\arpeggio <a d f a>\arpeggio <c g' c>\arpeggio |
  <c f a c f>1\arpeggio\fermata |
  \bar "|."
}

leftHandUpper = \relative {
  \partial 4 s4
  c2 \slashedGrace { b8 } c8-. d\rest \voiceFour c-. g\rest |
  s1 |
  \voiceThree c2 \slashedGrace { b8 } \voiceFour c8-.-2 b\rest c-. g\rest |
  s1 * 3 |
  \voiceThree c2 \slashedGrace { b8 } c8-. d\rest \voiceFour c-. g\rest |
  s1 |
  
  \barNumberCheck 9
  s1 * 2 |
  \voiceThree \adjustHShiftA b'2( d4) s |
  s1 * 5 |
  
  \barNumberCheck 17
  c,2 \slashedGrace { b8 } \voiceFour c8-. b\rest c-. g\rest |
  s1 * 3 |
  \voiceThree c2 \slashedGrace { b8 } c8-. d\rest \voiceFour c-. g\rest |
  s1 * 3 |
  
  \barNumberCheck 25
  s1 |
  \voiceThree <f' g d'>2( c'4 bf) |
  s1 * 2 |
  a,2 \slashedGrace { gs8 } \voiceFour a8 b\rest a g\rest |
  s1 |
  \voiceThree a2 \slashedGrace { gs8 } \voiceFour a8 b\rest a g\rest |
  s1 |
  
  \barNumberCheck 33
  s1 * 2 |
  \voiceThree a2 \slashedGrace { gs8 } \voiceFour a8 g\rest a g\rest |
  s4 b8. a16^( c4) s |
  s1 * 4 |
  
  \barNumberCheck 41 
  s1 * 6 |
  s2. \voiceThree <cs e>4( |
  f4) 
  <<
    { g8. f16_~ \voiceFour f2 | s4 }
    \new Voice { \voiceThree s4 bf d( | \oneVoice <a, ds fs b>4)  }
  >> 
  
  % barNumberCheck 49 + 4th note
  s2 \voiceThree <ds fs>4( |
  g4)
  <<
    { a8. g16_~ \voiceFour g2 | }
    \new Voice { \voiceThree s4 c e | }
  >>
  s1 * 6 |
  
  \barNumberCheck 57
  s1 * 6 |
  \voiceThree c,2 \slashedGrace { b8 } \voiceFour c8-. g\rest c-. g\rest |
  s1 |
  
  \barNumberCheck 65
  s1 * 2 |
  \voiceThree c2 \slashedGrace { b8 } c8 d\rest \voiceFour c g\rest |
  s1 * 3 |
  \mergeDifferentlyHeadedOn \mergeDifferentlyDottedOn
  \voiceThree s2. s16 b8.~ |
  b1 |
  
  \barNumberCheck 73
  s1 * 3 |
  s2. 
  <<
    { f'4~ | f4 e8. d16 c4 c | }
    \new Voice { \voiceFour d8. c16 | bf1 | }
  >> 
  a'4-1 f-1 d\rest \clef treble f'-> |
  f4 f-> f f-> |
  f4 f-> f f->~( |
  
  \barNumberCheck 81
  f4 e8. d16 c4 c) |
  d4( c->) b'\rest f |
  f4( e8. d16 c4 c |
  d4 c)_~ <c a'>( <bf g'>8 <a f'>) |
  f'4( e8. d16 c4 c |
  <f, c' e bf'>4)\arpeggio s2. |
  s1 * 2 |
  
  \barNumberCheck 89
  s1 * 7 |
}

leftHandLower = \relative {
  \partial 4 \oneVoice r4
  \voiceFour f,1 |
  <f, f'>8-. r \oneVoice d''8.\< c16( a'4^^)\! f8.\> a,16\! |
  \voiceFour f1 |
  <e, e'>8 r \oneVoice d''8. c16-\slurPositionA( g'4)-1 d'->-1\sf
  \grace { e,,16 c'~ } <c c'>4 r \grace { b8 } c8-. r \voiceFour c-. r |
  <e,, e'>8 r \oneVoice d''8.( c16 bf'4)-1 g8.->-1 g,16 |
  \voiceFour e1 |
  <f, f'>8 r \oneVoice d''8. c16-\slurShapeA( f4) f'->\sf |
  
  \barNumberCheck 9
  <f, bf d f>2-> <f a c f>4 q |
  <f bf d f>2-> <f a c f>4 q |
  \voiceFour <g f'>2. \oneVoice r4 |
  r2 \voiceFour r4 g, |
  <c, g'>1 |
  \oneVoice <c' g' e'>2\arpeggio r4 <c g' bf e>\arpeggio |
  \grace { f,16 c' a'-1 } f'8-.-2 r r4 \grace { b,,8 } c8-. r \voiceFour c r |
  <f,, f'>8-. r \oneVoice d''8.( c16 a'4)-1 f8.-1 a,16 |
  
  \barNumberCheck 17
  \voiceFour f1 |
  <e, e'>8 r \oneVoice d''8. c16 g'4 d'-> |
  \grace { e,,16 c'~ } <c c'>4 r \grace { b8 } c8-. r \voiceFour c-. r |
  <e,, e'>8-. r \oneVoice d''8.( c16 bf'4) g8.( g,16) |
  \voiceFour e1 |
  <f, f'>8-. r \oneVoice d''8.( c16 f4) f'->\sf |
  <f, bf d f>2 <f a c f>4 q |
  <f bf d f>2 <f a c f>4 q |
  
  \barNumberCheck 25
  <bf, f' g d'>1\arpeggio |
  \voiceFour c1*1/2 e2 |
  <f, c' e bf'>1(\arpeggio |
  <f c' f a>2)\arpeggio r4 r16 g( a f) |
  d1 |
  <d, d'>8-. r \oneVoice bf''8. a16 f'4-1 d8.-1 f,16 |
  \voiceFour d1 |
  <cs, cs'>8-. r bf''8. a16^( \oneVoice e'4-^) bf'-> |
  
  \barNumberCheck 33
  \grace { cs,,16 a'~ } <a a'>4 r \slashedGrace { gs8 } \voiceFour
    a8-. r a-. r |
  <cs,, cs'>8-. r \oneVoice bf''8. a16 g'4 e8. e,16 |
  \voiceFour cs1 |
  c2. \oneVoice c''4( |
  <b, b'>4-.) \clef treble fs''16(-4 gs a fs')  f,( gf af b,)  
    f'(-4 gf-3 af f')-1 |
  bf,,8 r <bf bf'>8. <f f'>16 \clef bass <bf, bf'>4 <f f'> |
  <bf, bf'>8 r \clef treble f'''16( g af f')  e,( f g bf,)  e(f g e') |
  a,,8-. r \clef bass <a a'>8. <e e'>16 <a, a'>4 <e e'> |
  
  \barNumberCheck 41
  <a, a'>8 r \clef treble e'''16(-4 fs g e')  d,( e fs d')  cs,( d e cs') |
  b,16( cs d b')  a,( b  cs a')  \clef bass g,( a b g')  fs,( g a fs') |
  e,16( fs g e')  es,( fs gs d')  fs,( gs a d)  gs,( a b d) |
  a16( b c cs)-1  ds,( e fs c')  e,( fs g c)  fs,( g a c) |
  g16( a as b)  cs,( d e bf')  d,( e f bf)  e,( f g bf)-1 |
  a16(-1 g f a,)  g'( f e a,)  a'( g f a,)  f'( e d a~ |
  <a cs>4) <a, a'>2-> s4 |
  \voiceFour <a' d>1 |
  
  \barNumberCheck 49
  s4 \oneVoice <a, a'>2-> s4 |
  \voiceFour <a' e'>1 |
  <a e' g cs>4->\arpeggio \oneVoice <a, a'> r g''16 a bf e |
  \clef treble bf16( c cs g')  cs,( d e bf')  e,( f g cs)  g( a bf e)-1 |
  g8-2 r  g,16->( a-4 bf cs,)-5  g'->(-4 a bf e)-1  g,->( a bf cs,) |
  g'16->( a bf e  bf a g cs,)  g'->( a bf e  bf a g c,) |
  g'16( a bf e)  g,( a bf c,)  g'( a bf e)  g,( a bf c,) |
  g'16 a bf e  bf a g c,  g' a bf e  bf a g c, |
  
  \barNumberCheck 57
  g'16 a bf e  gs, a b f'  gs, a b f'  g, a b e |
  g,16 a bf e gs, a b f'  gs, a b f'  a, bf c fs |
  a,16 bf c fs  bf, c cs g'  bf, c cs g'  a, bf c fs |
  a,16 bf c fs  bf, c cs g' bf, c cs g'  b, c d gs |
  <f, c' a'>8\arpeggio r r4 \clef bass <f, c'>8 r \voiceFour <g, c> r |
  <f, f'>8-. r \oneVoice d''8. c16( a'4) f8. a,16 |
  \voiceFour f1 |
  <e, e'>8-. r d''8. c16 \oneVoice g'4 d'-> |
  
  \barNumberCheck 65
  \grace { e,,16 c'~ } <c c'>4 r \grace { b8 } c r \voiceFour c r |
  <e,, e'>8-. r \oneVoice d''8. c16( bf'4) g8. g,16 |
  \voiceFour e1 |
  <f, f'>8-. r \oneVoice d''8. c16( f4) f'-> |
  <f, bf d f>2-> <f a c f>4 q |
  <f bf d f>2-> <f a c f>4 q |
  <df g b f'>4\arpeggio r r \voiceFour s16 b g f |
  b,1 |
  
  \barNumberCheck 73
  \oneVoice <c c'>2. \voiceThree c'16-1 f, e d |
  c16(-5 d e c')  d,(-4 e f c')  d,(-4 e f c')  e,( f g c) |
  \oneVoice f,8 r r4 <ef' c'> f,-\slurPositionB( |
  <d' bf'>4) f,2. |
  \voiceFour f1~ |
  <f c'>2 s4 \clef treble s |
  <f' ef'>2 <g ef'>4 <a ef'> |
  <<
    { \voiceThree \shiftOnn d2._~ \shiftOff \voiceFour d8. c16 | bf1 | }
    \new Voice { \voiceFour bf2 f~ | f1 | }
  >>
  
  % \barNumberCheck 82
  <f a>1 |
  <f g bf>1 |
  <f a>1 |
  <f g bf>1 |
  s4 \oneVoice r r2 |
  <f' c' e bf'>4\arpeggio r r2 |
  R1 |
  
  \barNumberCheck 89
  <f c' a'>8\arpeggio r f'16-4-> bf-2 a-1 d,-4  c-5-> g'-1 f-2 bf,-4  
    a-> d c g |
  f16-> bf a d, c-> g' f bf,  \clef bass a-> d c g  f-> bf a d, |
  c16-> g' f bf,  \voiceFour a-> d c g  f-> d'-1 c-2 bf-3  a->-4 d-1 c-2 g-4 |
  f16-> d' c bf  a-> d c g  f-> d' c bf  a-> d c g |
  f a c e  f-1 a c e  \clef treble f a c e  f a c e |
  f8 \oneVoice \clef bass r <cs,,, e a cs>4\arpeggio <d f a d>\arpeggio
    <c g' bf e>\arpeggio |
  <f, c' a'>1\arpeggio\fermata |
}

leftHand = <<
  \clef bass
  \global
  \new Voice { \voiceThree \leftHandUpper }
  \new Voice { \voiceFour \leftHandLower }
>>

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5
  
  \partial 4 s4
  s1^\veloce |
  s1 * 6 |
  s2 s\cresc |
  
  \barNumberCheck 9
  s1\f |
  s1 * 3 |
  s2 s\cresc |
  s1 * 3 |
  
  \barNumberCheck 17
  s1 * 5 |
  s2 s\cresc |
  s1\f |
  s1 |
  
  \barNumberCheck 25
  s1 * 8 |
  
  \barNumberCheck 33
  s1 * 5 |
  s1^\fMarcato |
  s1 |
  s4 s2.\f |
  
  \barNumberCheck 41
  s4 s2\f s4\dim |
  s1 * 4 |
  s2\< s\cresc |
  \revert DynamicTextSpanner.style
  s2. s4\cresc |
  s1 |
  
  \barNumberCheck 49
  s2. s8. s16\! |
  s1 * 2 |
  \override DynamicTextSpanner.style = #'none
  s1\cresc |
  s1 |
  s2. s4\cresc |
  s2. s4\dim |
  s1 |
  
  \barNumberCheck 57
  \override TextSpanner.bound-details.left.text = "poco a poco cresc"
  \revert DynamicTextSpanner.style
  \override TextSpanner.Y-offset = -0.5
  s4-\adjustDynB\pp s2.\startTextSpan |
  s1 * 2 |
  s2. s8. s16\stopTextSpan |
  s1\f |
  s1 * 3 |
  
  \barNumberCheck 65
  s1 * 3 |
  \override DynamicTextSpanner.style = #'none
  s2 s\cresc |
  s1\f |
  s1 |
  s1\ff |
  s4 s2\< s8. s16\! |
  
  \barNumberCheck 73
  s4 s8.\> s16\! s2 |
  s1 |
  s1\p |
  s1 * 5 |
  
  \barNumberCheck 81
  s1^\sempreLeg |
  s1 * 3 |
  s1^\sempreLeg |
  s1 |
  s1\p |
  s1-\adjustDynA\pp |
  
  \barNumberCheck 89
  s4 s2.\f |
  s1 * 4 |
  s4 s2.\ff |
  s1 |
}

pedal = {
  \partial 4 s4
  s1\sustainOn |
  s8. s16\sustainOff s2. |
  s1\sustainOn |
  s8. s16\sustainOff s2. |
  s4-\adjustPedalA\sustainOn s8. s16\sustainOff s2 |
  s1 * 3 |
  
  \barNumberCheck 9
  s1 * 6 |
  s1-\adjustPedalB\sustainOn |
  s8. s16\sustainOff s2. |
  
  \barNumberCheck 17
  s1 * 2 |
  s1-\adjustPedalC\sustainOn |
  s8. s16\sustainOff s2. |
  s1 * 4 |
  
  \barNumberCheck 25
  s2\sustainOn s4. s16 s\sustainOff |
  s1 |
  s2\sustainOn s4. s16 s\sustainOff |
  s1 |
  s1\sustainOn |
  s8. s16\sustainOff s2. |
  s1 * 2 |
  
  \barNumberCheck 33
  s4-\adjustPedalD\sustainOn s8. s16\sustainOff s2 |
  s1 * 7 |
  
  \barNumberCheck 41
  s1 * 6 |
  s2\sustainOn s4. s16 s\sustainOff |
  s1 |
  
  \barNumberCheck 49
  s2\sustainOn s4. s16 s\sustainOff |
  s1
  s2\sustainOn s8. s16\sustainOff s4 |
  s1 |
  s4 s2.\sustainOn |
  s2 s4. s16 s\sustainOff |
  s1\sustainOn |
  s2 s4. s16 s\sustainOff |
  
  \barNumberCheck 57
  s1 * 4 |
  s1\sustainOn |
  s8. s16\sustainOff s2. |
  s1 * 2 |
  
  \barNumberCheck 65
  s4-\adjustPedalE\sustainOn s8. s16\sustainOff s2 |
  s1 * 2 |
  s2\sustainOn s4. s16 \adjustPedalFOn s\sustainOff |
  s4\sustainOn s8. s16-\adjustPedalG\sustainOff s4\sustainOn 
    s8. s16\sustainOff |
  s4\sustainOn s8. s16-\adjustPedalH\sustainOff s4\sustainOn s8. s16\sustainOff |
  \adjustPedalFOff s1\sustainOn |
  s2 s4. s16 s\sustainOff |
  
  \barNumberCheck 73
  s2\sustainOn s4. s16 s\sustainOff |
  s1 |
  s2\sustainOn s\sustainOff |
  s2\sustainOn s8. s16\sustainOff s4 |
  s1 * 4 |
  
  \barNumberCheck 81
  s1 * 5 |
  s1\sustainOn |
  s1 |
  s2 s4. s16 s\sustainOff |
  
  \barNumberCheck 89
  s1 * 6 |
  s2\sustainOn s4. s16 s\sustainOff |
}

etude-eight-header = \header { }

etude-eight-music = {
  \new PianoStaff \with { instrumentName = \markup \huge "No. 8" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal
  >>
}

etude-eight-midi = \book {
  \bookOutputName "Fredric-Chopin-Etudes-Op10-No8"
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