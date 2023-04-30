%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.1"
\language "english"

\include "Global.ily"
\include "articulate.ly"

sempreLegato = \markup \larger \italic "sempre legato"

tweakFingerA = 
  \tweak X-offset -1.5
  \tweak Y-offset -3.5
  \etc

tweakFingerB = 
  \tweak X-offset -1.5
  \tweak Y-offset -4.75
  \etc

global = {
  \time 4/4
  \key a \minor
  \accidentalStyle piano
}

rightHandUpper = \relative a' {
  \global
  \tempo "Allegro" 4 = 144
  
  a16-4^\sempreLegato as-3 b-4 c-5  cs-3 d-4 ds-3 e-4  f-5 fs-3 g-4 gs-5  
    a-4 as-3 b-4 c-3 |
  cs16-3 d-4 ds-3 e-4  f-5 e-4 ds-3 d-4  cs-3 c-5 b-4 bf-3  a-4 gs-3 b-5 a-4 |
  gs16-3 g-5 fs-3 f-5  e-4 ds-3 f-5 e-4  ds-3 d-4 cs-3 c-4  b-3 c-4 d-5 c-4 |
  b16-3 c-4 b-3 c-4  b-3 c-4 b-3 c-4  b-3 e-5 ds-4 d-5  cs-4 c-5 b-4 bf-3 |
  a16^\sempreLegato as b c  cs d ds e  f fs g gs  a as b c |
  cs16 d ds e  f e ds d  cs c b bf  a gs b-5 a-4 |
  g16-5 gs-3 a-4 as-3  b-4 c-5 b-4 as-5  a-5 gs-4 g-5 fs-4  
    es-5 fs-4 g-5 fs-4 |
  e16-3 f-5 ds-3 e-5  d-4 e-5 cs-3 d-5  c-4 d-5 b-3 c-5  b-4 c-5 as-3 b-5 |
  
  \barNumberCheck 9
  a16 as b c  cs d ds e  f fs g gs  a as b c |
  cs16 d ds e  f e ds d  cs c b bf  a gs b a |
  gs16^\sempreLegato g fs f  e ds f e  ds d cs c  b c d c |
  b16 c b c  b c b c  b e ds d  cs c b bf |
  a16 as b c  cs d ds e  f fs g gs  a as b c |
  cs16 d ds e  f e ds d  cs c b bf  a gs b a |
  bf16-3 b-4 c-5 cs-3  \ottava 1 d-4 ds-3 e-4 f-5  e-4 f-5 fs-3 g-5
    gs-3 a-4 as-3 b-4 |
  a16-5 gs-4 g-5 fs-4  f-5 e-4 ef-3 d-5  cs-4 c-5 b-4 bf-3
    \ottava 0 a-5 gs-4 g-5 fs-4 |
  
  \barNumberCheck 17
  f16-5 e-4 ef-3 d-4  cs-3 d-4 f-5 d-4  b-3 c-4 e-5 c-4  as16-3 b-4 e-5 b-4 |
  a16-5 as-3 b-4 c-3  cs-3 d-4 ds-3 e-4  a-5_( gs-4 g-5 fs-4  
    f16-5 e-4 ef-3 d-5) |
  df16-4^\sempreLegato c-5 b-3 c-4  cs-3 d-4 ds-3 e-4  f-5 fs-3 g-4 gs-3  
    a-5 e-3 f-5 d-4 |
  df16-3 c-4 b-3 c-4  cs-3 d-4 ds-3 e-4  f-5 fs-4 g-5 af-4  g-5 fs-4 f-5 e-4 |
  ef16-5^\sempreLegato d-4 cs-3 d-4  ef-3 e-4 f-5 fs-4  g-5 gs-4 a-5 bf-4  
    a-5 f-3 g-5 ef-4 |
  d16-3 ef-4 cs-2 d-4  ef-3 e-4 f-5 fs-4  g-5 gs-4 a-5 bf-4  
    a-5 gs-4 g-5 fs-4 |
  f16-5 e-4 ds-3 e-4  f-5 fs-3 g-4 gs-3  a-4 as-3 b-4 c-5  b-4 bf-3 a-4 gs-3 |
  g16-4 fs-3 f-4 e-5  f-4 fs-3 g-4 gs-5  a-4 as-3 b-4 c-5  cs-3 d-4 ds-3 e-4 |
  
  \barNumberCheck 25
  f16-5 e-4 ef-3 d-5  cs-4 c-5 b-4 bf-3  a-5 gs-4 g-5 fs-4  f-5 e-4 ds-3 e-1 |
  ef'16-5 d-5 cs-4 c-5  b-4 bf-3 a-5 gs-4  g-5 fs-4 f-5 e-4  
    ef-3 d-4 cs-3 d-1 |
  d'16-5 cs-4 c-5 b-4  bf-3 a-5 af-4 g-5  fs-3 g-4 gs-3 a-4  bf-3 b-4 c-5 b-4 |
  d16-5 c-4 bf-3 a-5  af-4 g-5 fs-4 f-5  e-4 f-5 fs-4 g-5  gs-4 a-5 bf-4 a-3 |
  c16-5 bf-4 a-5 af-4  g-5 fs-4 f-5 e-4  ef-3 d-5 df-4 c-5  bf-4 a-5 gs-4 g-5 |
  fs16-3 g-4 gs-3 a-4  bf-5 a-4 gs-3 g-4  fs-3 g-4 gs-3 a-4
    bf-5 a-4 gs-3 g-4 |
  fs16-3 g-4 gs-3 a-4  c-5 b-4 bf-3 a-4  gs-3 a-4 as-3 b-4  c-5 b-4 bf-3 a-4 |
  gs8-3 b\rest  e'16-4 f-5 d-4 e-5  c-4 d-5 b-4 c-5  a-4 b-5 g-4 a-5 |
  
  \barNumberCheck 33
  f16-4 g-5 e-3 f-1_( 
    << 
      \context Voice = "1" { 
        \stemDown \hideNotes f16) s8. \unHideNotes \stemUp 
      } 
      \new Voice { \voiceOne d'16-4 e-5 c-4 d-5 } 
    >> 
    b16-4 c-5 a-4 b-5  gs-4 a-5 f-4 g-5 |
  e16-4 f-5 ds-3 e-1_(
    <<
      \context Voice = "1" {
        \stemDown \hideNotes e16) s8. \unHideNotes \stemUp 
      } 
      \new Voice { \voiceOne c'16-4 d b c }
    >>
    a16 b g a  f g e f |
  d16 e c d  b c a b  gs^\sempreLegato f-3 ds-2 e-3  f-4 fs-3 g-4 gs-3 |
  a16 as b c  cs d ds e  f fs g gs  a as b c |
  cs16 d ds e  f e ds d  cs c b bf  a gs b a |
  gs16 g fs f  e ds f e  ds d cs c  b c d c |
  b16 c b c  b c b c  b e ds d  cs c b bf |
  a16 as b c  cs d ds e  f fs g gs  a as b c |
  
  \barNumberCheck 41
  cs16 d ds e  f e ds d  cs c b bf  a gs b a |
  bf16-3 b-4 c-5 cs-3  \ottava 1 d-4 ds-3 e-4 f-5  e-4 f-5 fs-3 g-5
    gs-3 a-4 as-3 b-4 |
  a16-5 gs-4 g-5 fs-4  f-5 e-4 ef-3 d-5  \ottava 0 cs-4 c-5 b-4 bf-3
    a-5 gs-4 g-5 fs-4 |
  f16-5 e-4 ef-3 d-4  cs-3 d-4 f-5 d-4  b-3 c-4 e-5 c-4  as16-3 b-4 e-5 b-4 |
  a16-2^\sempreLegato as-3 b-4 c-5  cs-3 d-4 ds-3 e-4  f-5 fs-3 g-4 gs-3
    a-4 as-3 b-4 c-5 |
  a16-4 as-3 b-4 c-5  cs d ds e  \ottava 1 f fs g gs  a as b c |
  a16-4 gs-3 g-5 fs-4  f-5 e-4 ef-3 d-4  cs-4 c-5 b-4 bf-3
    \ottava 0 a-5 gs-4 g-5 fs-4 |
  f16 e ef d  cs c b bf  a gs g fs  f e ef d |
  
  \barNumberCheck 49
  cs1\fermata | \bar "|."
}

rightHandLower = \relative c' {
  <c e>16 \tweakFingerA -2 \tweakFingerB -1 s8. 
    <e a>16 \tweakFingerA -2 \tweakFingerB -1 s8. <a d>16 s8. <d f>16 s8. |
  <e a>16 s8. <a c>16 s8. <e a>16 s8. <c e>16 s8. |
  <b e>16 s8. <gs b>16 s8. <a c>16 s8. <e a>16 s8. |
  <e gs>16 s8. <ds a'>16 s8. <e gs>16 s8. <d gs>16 s8. |
  <c e>16 s8. <e a>16 s8. <a d>16 s8. <d f>16 s8. |
  <e a>16 s8. <a c>16 s8. <e a>16 s8. <c e>16 s8. |
  <b e>16 s8. <e g>16 s8. <ds fs>16 s8. <a d>16 s8. |
  <gs b>16 s8. <f a>16 s8. <e a>16 s8. <d gs>16 s8. |
  
  \barNumberCheck 9
  <c e>16 s8. <e a>16 s8. <a d>16 s8. <d f>16 s8. |
  <e a>16 s8. <a c>16 s8. <e a>16 s8. <c e>16 s8. |
  <b e>16 s8. <gs b>16 s8. <a c>16 s8. <e a>16 s8. |
  <e gs>16 s8. <ds a'>16 s8. <e gs>16 s8. <d gs>16 s8. |
  <c e>16 s8. <e a>16 s8. <a d>16 s8. <d f>16 s8. |
  <e a>16 s8. <a c>16 s8. <e a>16 s8. <c e>16 s8. |
  <d f>16 s8. \ottava 1 <f bf>16 s8. <gs d'>16 s8. d'16 s8. |
  <c f>16 s8. <a c>16 s8. <e a>16 s8. \ottava 0 <c e>16 s8. |
  
  \barNumberCheck 17
  <bf d>16 s8. <f bf>16 s8. <e a>16 s8. <d gs>16 s8. |
  <c e>16 s8. <e gs>16 s8. <a c>16 s8. s4 |
  <e bf'>16 s8. <e bf'>16 s8. a16 s8. c16 s8. |
  bf16 s8. <e, bf'>16 s8. <f af>16 s8. b16 s8. |
  c16 s8. <fs, c'>16 s8. bf16 s8. d16 s8. |
  c16 s8. <fs, c'>16 s8. <g bf>16 s8. cs16 s8. |
  d16 s8. <gs, d'>16 s8. c16 s8. e16 s8. |
  d16 s8. <gs, d'>16 s8. c16 s8. <e a>16 s8. |
    
  \barNumberCheck 25
  a16 s8. <f a>16 s8. <d f>16 s8. <gs, d'>16 s8. |
  g'16 s8. <ef g>16 s8. <c e>16 s8. <fs, c'>16 s8. |
  <g' bf>16 s8. <cs, g'>16 s8. <a d>16 s8. <c f>16 s8. |
  <f a>16 s8. <b, f'>16 s8. <g c>16 s8. <bf ef>16 s8. |
  <ef g>16 s8. <bf ef>16 s8. <g bf>16 s8. <cs, g'>16 s8. |
  <a d>16 s8. <cs g'>16 s8. <a d>16 s8. <cs g'>16 s8. |
  <a d>16 s8. ds16 s8. <b e>16 s8. <d a'>16 s8. |
  <b e>16 s8. <gs'' b>16 s8. <e a>16 s8. <c e>16 s8. |
  
  \barNumberCheck 33
  <a c>16 s8. <f' a>16 s8. <d f>16 s8. <b d>16 s8. |
  <gs b>16 s8. <e' a>16 s8. <c e>16 s8. <a c>16 s8. |
  <f a>16 s8. <d f>16 s8. <b d>16 s8. s4 |
  <c e>16 s8. <e a>16 s8. <a d>16 s8. <d f>16 s8. |
  <e a>16 s8. <a c>16 s8. <e a>16 s8. <c e>16 s8. |
  <b e>16 s8. <gs b>16 s8. <a c>16 s8. <e a>16 s8. |
  <e gs>16 s8. <ds a'>16 s8. <e gs>16 s8. <d gs>16 s8. |
  <c e>16 s8. <e a>16 s8. <a d>16 s8. <d f>16 s8. |
  
  \barNumberCheck 41
  <e a>16 s8. <a c>16 s8. <e a>16 s8. <c e>16 s8. |
  <d f>16 s8. \ottava 1 <f bf>16 s8. <gs d'>16 s8. d'16 s8. |
  <c f>16 s8. <a c>16 s8. \ottava 0 <e a>16 s8. <c e>16 s8. |
  <bf d>16 s8. <f bf>16 s8. <e a>16 s8. <d gs>16 s8. |
  c16 s8. <d a'>16 s8. <a' d>16 s8. <d e>16 s8. |
  <c e>16 s8. <d a'>16 s8. \ottava 1 <a' d>16 s8. <d e>16 s8. |
  <c e>16 s8. <a d>16 s8. <f a>16 s8. \ottava 0 <d f>16 s8. |
  <a d>16 s8. <f a>16 s8. <d f>16 s8. <a d>16 s8. |
  
  \barNumberCheck 49
  \staffDown <e a>1 |
}

rightHand = {
  << { \rightHandUpper } \\ { \rightHandLower } >>
}

leftHand = \relative a, {
  \global
  \clef bass
  
  a8-. r <e' a c>-. r a,-. r <f' a d>-. r |
  <a,, a'>8-. r <e'' a c>-. r <a c e>-. r r4 |
  e,8-. r <e' b' d>-. r a,-. r <e' a c>-. r |
  <e b'>8-. r <f_( b>4-> <e) b'>8 r  r4 | 
  a,8-. r <e' a c>-. r a,-. r <f' a d>-. r |
  <a,, a'>8-. r <e'' a c>-. r <a c e>-. r r4 |
  b,8-. r <b' e g>-. r b,-. r <b' fs' b>-. r |
  <e, e'>4-. <e, e'>^\fz r <e e'> |
  
  \barNumberCheck 9
  a8-. r <e' a c>-. r a,-. r <f' a d>-. r |
  <a,, a'>8-. r <e'' a c>-. r <a c e>-. r r4 |
  e,8-. r <e' b' d>-. r a,-. r <e' a c>-. r |
  <e b'>8-. r <f_( b>4 <e) b'>8 r  r4 | 
  a,8-. r <e' a c>-. r a,-. r <f' a d>-. r |
  <a,, a'>8-. r <e'' a c>-. r <a c e>-. r r4 |
  <d,, d'>8-. r <d' f bf d>-. r <e, e'>-. r <e' b' d>-. r |
  <f, f'>8-. r <a' c f>-. r <c,, c'>-. r <e' a e'>-. r |
  
  \barNumberCheck 17
  d,8-. r <d' f bf d>4( <e a c>) e->( |
  <a, a')>4 <e e'> <a, a'> r |
  <c c'>8-. r <c' g' c>-. r f,-. r <c' a'c>-. r |
  c,8-. r <c' g' c>-. r df,-. r <df' af' b>-. r |
  d,8-. r <d' a' c>-. r g,-. r <d' g bf> r |
  d,8-. r <d' a' c>-. r ef,-. r <ef' bf' cs>-. r |
  e,8-. r <e' b' d>-. r a,-. r <e' a c e>-. r |
  e,8-. r <e' b' d>-. r <a, a'>4( <g g'>) |
  
  \barNumberCheck 25
  <f f'>4 <b b'>2-> <e e'>4 |
  <ef, ef'>4 <a a'>2-> <d d'>4 |
  <g,g'>4 <ef' ef'>( <d d'>) <a a'>( |
  <f f'>4) <df' df'>( <c c'>) <g g'>( |
  <ef ef'>8) r <ef' ef'>2 <ef, ef'>4( |
  <d d'>8) r <ef a>4->( <d d'>) <ef a>->( |
  <d d'>4) <f b>( <e e'>) <f b>( |
  <e e'>1)~ |
  
  \barNumberCheck 33
  q1~ |
  q1~ |
  q1 |
  a8-. r <e' a c>-. r a,-. r <f' a d>-. r |
  <a,, a'>8-. r <e'' a c>-. r <a c e>-. r r4 |
  e,8-. r <e' b' d>-. r a,-. r <e' a c>-. r |
  <e b'>8-. r <f_( b>4-> <e) b'>8 r r4 |
  a,8-. r <e' a c>-. r a,-. r <f' a d>-. r |
  
  \barNumberCheck 41
  <a,, a'>8-. r <e'' a c>-. r <a c e>-. r r4 |
  <d,, d'>8-. r <d' f bf d>-. r <e, e'>-. r <e' b' d>-. r |
  <f, f'>8-. r <a' c f>-. r <c,, c'>-. r <e' a e'>-. r |
  <d, d'>8-. r <d' f bf d>4( <e a c>) <e b'>-> |
  <a, a'>8 r <f f'>2-> <e e'>4 |
  <a, a'>8 r <f f'>2-> <e e'>4 |
  <a a'>1~ |
  q1~ |
  
  \barNumberCheck 49
  \override NoteColumn.force-hshift = -0.14
  q1 |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5
  
  s2 \p s4\cresc s\! |
  s1 * 2 |
  s2. s8.\< s16\! |
  s2 s4\cresc s\! |
  s1 * 2 |
  s4\> s16\! s\dim s8\! s2 |
  
  \barNumberCheck 9
  s2\p s4\cresc s\! |
  s1 * 2 |
  s4 s16\f s\> s8 s16\! s8. s4 |
  s1\p |
  s1 |
  s2 s4\cresc s\! |
  s1 |
  
  \barNumberCheck 17
  s4 s16 s8.\> s16\! s\dim s8\! s4 |
  s4\< s8. s16\! s4\> s8. s16\! |
  s2.\p s4^\markup \large "poco" |
  s4^\markup \large "a" s4^\markup \large "poco" s2\cresc |
  s2\p s2^\markup \large "poco" |
  s2^\markup \large "a" s2^\markup \large "poco" |
  s1\cresc |
  s4 s\< s s8 s16 s\! |
  
  \barNumberCheck 25
  s2.\f s8\> s16 s\! |
  s1 |
  s4 s4\cresc s2\! |
  s1 |
  s4 s16\f s\> s8 s16\! s8. s4 |
  s1 \sfp |
  s4 s4\> s16\! s\> s8 s8. s16\! |
  s8 s\> s2 s8. s16\! |
  
  \barNumberCheck 33
  s4 s2\> s8. s16\! |
  s4 s2\> s8. s16\! |
  s2 s16 s\< s8 s8. s16\! |
  s1 * 5 |
  
  \barNumberCheck 41
  s1 |
  \revert DynamicTextSpanner.style
  s2.\cresc s8. s16\! |
  s1\f |
  s4 s\> s16\! s s8 s4 |
  s2 s\cresc |
  s2. s8. s16\! |
  s1 |
  \override DynamicTextSpanner.style = #'none
  s1\dim |
  
  \barNumberCheck 49
  s2.\> s4\! |
}

breaks = {
  \repeat unfold 7 { s1 \noPageBreak }
  s1 \pageBreak
  \repeat unfold 7 { s1 \noPageBreak }
  s1 \pageBreak
  \repeat unfold 7 { s1 \noPageBreak }
  s1 \pageBreak
  \repeat unfold 7 { s1 \noPageBreak }
  s1 \pageBreak
}

etude-two-header = \header { }

etude-two-music = {
  \new PianoStaff \with { instrumentName = \markup \huge "No. 2" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "breaks" \breaks
  >>
}

etude-two-midi = \book {
  \bookOutputName "Fredric-Chopin-Etudes-Op10-No2"
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
