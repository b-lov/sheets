%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.1"
\language "english"

\include "Global.ily"
\include "articulate.ly"

delicato = \markup \larger \italic "delicato"

adjustFingerA = \tweak Y-offset 3.85 \etc
adjustFingerB = \tweak Y-offset 4 \etc

global = {
  \time 6/8
  \key c \major
  \accidentalStyle piano
}

rightHand = \relative {
  \global
  \tempo Vivace 4. = 84
  
  \partial 8 g'8
  <e g>16^(_2-3 <e c'>_1-5 <f af>_2-\adjustFingerA-3 <f d'>_1-\adjustFingerB-5
    <d f> <d b'>  <b d> <b g'> <c ef> <c a'> <d af'>_2-4 <d b'>)_1-5 |
  <e g>16 <e c'> <f af> <f d'> <d f> <d b'>  
    <b d> <b g'> <c ef> <c a'> <d af'> <d b'> |
  <e g>16( <e c'> <f b> <f d'> <g bf> <g e'>
    <bf e> <bf g'> <a d> <a f'> <g a> <g e'>) |
  <g a>16^( <g e'> <f a> <f d'> <ef a> <ef c'>
    <e g> <e c'> <ef fs> <ef c'> <d f> <d b'>) |
  <e g>16 <e c'> <f af> <f d'> <d f> <d b'>  
    <b d> <b g'> <c ef> <c a'> <d af'> <d b'> |
  <e g>16 <e c'> <f af> <f d'> <d f> <d b'>  
    <b d> <b g'> <c ef> <c a'> <d af'> <d b'> |
  <e g>16 <e c'> <g as> <g e'> <g b> <g e'>
    <g cs> <g e'> <b e> <b g'> <a b> <a fs'> |
  <g b>16 <g e'> <b e> <b g'> <e g> <e b'>
    <g b> <g e'> <f a> <f d'> <g f> <f b> |
    
  \barNumberCheck 9
  <e g>16 <e c'> <f af> <f d'> <d f> <d b'>
    <b d> <b g'> <c ef> <c a'> <d af'> <d b'> |
  <e g>16 <e c'> <f af> <f d'> <d f> <d b'>
    <b d> <b g'> <c ef> <c a'> <d af'> <d b'> |
  <e g>16 <e c'> <f b> <f d'> <g bf> <g e'>
    <bf e> <bf g'> <a d> <a f'> <g a> <g e'> |
  <g a>16 <g e'> <f a> <f d'> <ef a> <ef c'>
    <e g> <e c'> <ef fs> <ef c'> <d f> <d b'> |
  <e g>16 <e c'> <f af> <f d'> <d f> <d b'>
    <b d> <b g'> <c ef> <c a'> <d af'> <d b'> |
  <e g>16 <e c'> <f af> <f d'> <d f> <d b'>
    <b d> <b g'> <c ef> <c a'> <d af'> <d b'> |
  <e g>16 <e c'> <g as> <g e'> <g b> <g e'>
    <g cs> <g e'> <b e> <b g'> <a b> <a fs'> |
  <g b>16 <g e'> <g b>16 <g e'> <g b>16 <g e'>
    <g b>16 <g e'> <g b>16 <g e'> <g bf>16 <g e'> |
    
  \barNumberCheck 17
  <g a>16-2-3 <g e'>-1-5 <g a>16-2-3 <g e'>-1-5 <g a>16 <g e'>
    <g a>16 <g e'> <g a>16 <g f'> <g a>16 <g e'> |
  <g a>16 <g e'> <e a> <e cs'> <f a> <f d'>
    <f a> <f d'> <f a> <f d'> <f af> <f d'> |
  <f g>16 <f d'> <f g> <f d'> <f g> <f d'>
    <f g> <f d'> <f g> <f e'> <f g> <f d'> |
  <f g>16 <f d'> <d g> <d b'> <e g> <e c'>
    <e g> <e c'> <e g> <e c'> <d g> <d b'> |
  <c d>16 <c a'> <c d> <c a'> <c d> <c a'> 
    <c d> <c a'> <c d> <c b'> <c d> <c a'> |
  <b d>16 <b ef> <b d> <b e> <b d> <b f'>
    <b d> <b fs'> <b d> <b g'> <b d> <b gs'> |
  <c d>16 <c a'> <c d> <c a'> <c d> <c a'>
    <c d> <c a'> <c d> <c b'> <c d> <c a'> |
  <b d>16 <b g'> <c ef> <c af'> <af c> <af f'>
    <f af> <f d'> <f af> <f d'> <ef a> <ef c'> |
    
  \barNumberCheck 25
  <d g>16 <d b'> <c ef>-> <c af'> <af c> <af f'>
    \staffDown \voiceOne <f af> <f d'> <f af> <f d'> <ef a> <ef c'> |
  <d g>16 <d b'> <f a> <f d'> <e g> <e c'>
    <g b> <g e'> <f a> <f d'> <a c> <a f'> |
  \staffUp \oneVoice <g b>16 <g e'> <b d> <b g'> <a c> <a f'>
    <c e> <c a'> <b d> <b f'> <d f> <d b'> |
  <c e>16 <c a'> <d f> <d b'> <e g> <e c'>
    <f a> <f d'> <g b> <g e'> <a c> <a f'> |
  <b d>16( <b g'> <c d> <c a'> <c d> <c a'>
    <c d> <c a'> <c d> <c a'> <c d> <c a'> |
  <b d>16 <b g'> <b d> <b g'> <b d> <b g'> 
    <bf d> <bf g'> <bf d> <bf g'> <bf c> <bf g'>) |
  <a c>16( <a f'> <a c> <a f'> <a c> <a f'>
    <a c> <a f'> <a c> <a f'> <a b> <a f'>) |
  <gs b>16->( <gs e'> <g b> <g e'> <g a> <g e'>
    <fs a>-> <fs d'> <f a> <f d'> <f g> <f d'>) |
    
  \barNumberCheck 33
  <e g>16 <e c'> <ef af-4> <ef c'-5> <ds_2 a'-4> <ds_1 c'-5> 
    <e_2 g-3> <e_1 c'-5> <ef_2 fs> <ef_1 c'> <d f> <d b'>
  <e g>16 <e c'> <f af> <f d'> <d f> <d b'> 
    <b d> <b g'> <c ef> <c a'> <d af'> <d b'> |
  <e g>16 <e c'> <f af> <f d'> <d f> <d b'> 
    <b d> <b g'> <c ef> <c a'> <d af'> <d b'> |
  <e g>16 <e c'> <f b> <f d'> <g bf> <g e'>
    <bf e> <bf g'> <a d> <a f'> <g a> <g e'> |
  <g a> <g e'> <f a> <f d'> <ef a> <ef c'> 
    <e g> <e c'> <ef fs> <ef c'> <d f> <d b'> |
  <e g>16 <e c'> <f af> <f d'> <d f> <d b'> 
    <b d> <b g'> <c ef> <c a'> <d af'> <d b'> |
  <e g>16 <e c'> <f af> <f d'> <d f> <d b'> 
    <b d> <b g'> <c ef> <c a'> <d af'> <d b'> |
  <e g>16 <e c'> <g a>-> <g e'> <f a> <f d'>
    <bf c>-> <bf g'> <a c> <a f'> <c d>-> <c a'> |
    
  \barNumberCheck 41
  <b d>16 <b g'> <d e> <d b'> <c e> <c a'>
    <f g> <f d'> <e g> <e c'> <g a> <g e'> |
  <g a>16 <g e'> <g a> <g e'> <g a> <g e'> 
    <g a> <g e'> <f a>-2-3 <f d'>-1-5 <f a>-2-4 <f c'>-1-5 |
  <f a>16-2-4 <f b>-1-5 <f a> <f b> <f a> <f b> 
    <f a> <f b> <e g>-2-4 <e b'>-1-5 <d f>-2-3 <d b'>-1-5 |
  <e g>16( <e c'> <f a> <f d'> <g b> <g e'>
    <a c> <a f'> <g b> <g e'> <f a> <f d'> |
  <f g>16 <f d'> <f g> <f d'> <f a> <f d'> 
    <f g> <f d'> <f g> <f e'> <f g> <f d'>) |
  <e g>16( <e c'> <f a> <f d'> <g b> <g e'>
    <a c> <a f'> <g b> <g e'> <f a> <f d'> |
  <f g>16 <f d'> <f g> <f d'> <f a> <f d'> 
    <f g> <f d'> <f g> <f e'> <f g> <f d'>) |
  <e g>16( <e c'> <ef a> <ef c'> <d g> <d b'> 
    <df g> <df bf'> <c ef> <c af'> <bf e> <bf g'> |
    
  \barNumberCheck 49
  <a d>16 <a fs'> <af d> <af f'> <g c> <g e'>
    <af c> <af ef'> <a c> <a d> <f g> <f b> |
  <e g>16 <e c'> <ef a> <ef c'> <d g> <d b'>
    <df g> <df bf'> <c ef> <c af'> <bf e> <bf g'> |
  \voiceOne <a d>16 <a fs'> <af d> <af f'> \staffDown <g c> <g e'>
    <af c> <af ef'> <a c> <a d> <f g> <f b>) |
  <e g>16( <e c'>\< <f a> <f d'> <g b> <g e'>\!
    <a c>->\> <a f'> <f a> <f d'>\! <g b> <g e'> |
  <e g>16 <e c'> <f a> <f d'> <g b> <g e'>
    <a c>-> <a f'> <f a> <f d'> <g b> <g e'>) |
  <e g>-> <e c'> <f g> <f d'> <e g> <e c'> 
    <f g>-> <f d'> <e g> <e c'> <f g> <f d'> |
  <e g>-> <e c'> <f g> <f d'> <e g> <e c'> 
    <f g>-> <f d'> <e g> <e c'> <f g> <f d'>-> |
  <e c'>8 <e c'>16[-2-5 e-1 <g e'>-2-5 g]-1 
    \staffUp \oneVoice <c g'> c <e c'> e <g e'> g |
    
  \barNumberCheck 57
  <c g'>16 c <e c'> e <g e'> g
    \ottava 1 <c g'>[ c <e c'> e <g e'> r32 <g e'>] |
  \ottava 0 c,4 r8 <e, g c e>4 r8 |
  c,2.\fermata
  \bar "|."
}

leftHandUpper = \relative {
  \partial 8 s8
  s2. |
  \mergeDifferentlyHeadedOn
  s8 c2 s8 |
  s2. * 2 |
  r8 af'4->( g8 fs f) |
  s8 c2 s8 |
  s2. * 2 |
  
  \barNumberCheck 9
  s2. |
  s8 c'2 s8 |
  s2. * 2 |
  r8 \clef treble af'4 g8_( fs f) |
  \clef bass s8 c2 s8 |
  s2. * 2 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. |
  r8 af4->( g8 fs f) |
  s8 c2 s8 |
  s2. * 2 |
  r8 af'4->( g8 fs f) |
  s8 c2 s8 |
  s2. |
  
  \barNumberCheck 41
  s8 \clef treble s4 s4. |
  cs''4.( d4.) |
  s2. |
  r8 <a c>( <g b> <f a> <g b> <a c>) |
  <b d>4( <a c>8) <b d>4->( <g b>8) |
  r8 <a c>( <g b> <f a> <g b> <a c>) |
  <b d>4( <a c>8) <b d>4->( <g b>8) |
  s2. |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 3 |
}

leftHandLower = \relative {
  \partial 8 \oneVoice r8
  <c, c'>8-. r af''-> g( fs f) |
  c,8-. c'[_( af'->] g fs f |
  e8 d cs_~ <cs cs'>)( <d d'> <e cs'> |
  <e cs'>8 <f d'> fs) g g, g' |
  \voiceFour c,2. |
  \oneVoice c,8 c'[ af'->]( g fs f) |
  e8( c b as b b' |
  e,8-.) r r \clef treble e'( f g) |
  
  \barNumberCheck 9
  c,8 af'4-> g8( fs f) |
  \clef bass \voiceFour c,8 c' \clef treble \oneVoice af' g( fs f) |
  e8 d cs~ <cs g' bf cs> <d f a d> <e g a cs> |
  <e g a cs>8 <f a d> <fs a> g g, g' |
  \clef bass \grace { c,,8 } c'2. |
  \voiceFour c,8 c' \clef treble af' \oneVoice g( fs f) |
  e8( c b \clef bass as b b,) |
  e,8-. g'( e g'4) d8 |
  
  \barNumberCheck 17
  a,8-. cs'16[( e, a,8]) a,8-. cs''16[( e, a,8]) |
  d,8-. a'''16[( a, d,8]) f'4-> c8 |
  g,8-. b'16[( d, g,8]) g,8-. b''16[( d, g,8]) |
  c,8-. g'''16[( g, c,8]) e'4( a,8) |
  d,,8-. fs''16[( a, d,8]) d,8-. fs''16[( a, d,8]) |
  g,8. d'16(\<-2 g-1 a\!-2 b8.-1 a16\> g d)\! |
  d,8-. fs''16[( a, d,8]) d,-. fs''16[( a, d,8]) |
  \autoBeamOff <g b g'>8 <f c' ef af>->\sf r r 
    \autoBeamOn <f, f'>[( <fs fs'>) |
  
  \barNumberCheck 25
  <g g'>8-.] <f c' ef af>->_\sf \voiceFour r r <f, f'>\< <fs fs'>\! |
  <g g'>2.~ |
  <g g'>2.~ |
  <g g'>2.~ |
  <g g'>8 \oneVoice
  <<
    { fs'''4(~ fs8 e fs | g4.) }
    { s4 s4.\< | s16 s\! s }
  >>
  g8( d e |
  f4.) f8( c d |
  e8 b cs d a b |
  
  \barNumberCheck 33
  c8 af fs g) g, g' |
  \grace { c,,8 } \voiceFour c'2. \oneVoice |
  c,8-. c'[ af'->]( g fs f) |
  e8 d cs~ <cs cs'> <d d'> <e cs'> |
  <e cs'>8\< <f d'> fs\! g g, g' |
  \grace { c,,8 } \voiceFour c'2. \oneVoice |
  c,8-. c'[ af'->]( g fs f) |
  e <cs a' cs>( <d a' d>) <e c' e>( <f c' f>) <fs d' fs>( |
  
  \barNumberCheck 41
  <g d' g>8) \clef treble <gs e' gs>->[ <a e' a>] <b g' b> <c g' c> 
    <cs a' cs> |
  \voiceFour <d a'>2. |
  \clef bass \oneVoice g,,8 g'[( <d' f>] \clef treble b') r r |
  \voiceFour c,2.~ |
  c8 c4. c4 |
  c2.~ |
  c8 c4. c4 |
  \oneVoice <c c'>8-^ \clef bass <fs, fs'>[_( <g g'>] <ef ef'> <af af'> 
    <cs, cs'> |
    
  \barNumberCheck 49
  <d d'>8 <b b'> <c c'> <af af'> <fs fs'> <g g'> |
  <c, c'>8 <fs fs'> <g g'> <ef ef'> <af af'> <cs, cs'> |
  \voiceFour <d d'>8 <b b'> <c c'> <af af'> <fs fs'> <g g'> |
  <c g'>4) r8 r4 <g g'>8\sf |
  <c g'>4 r8 r4 <g g'>8\sf |
  <c g'>8 <b g'> <c g'> <b g'> <c g'> <b g'> |
  <c g'>8 <b g'> <c g'> <b g'> <c g'> <b g'> |
  <c g'>2. |
  
  \barNumberCheck 57
  \oneVoice <c' g' e'>2\arpeggio r4 |
  \clef treble <c' g' e'>4\arpeggio r8 <c g' c>4 r8 |
  \clef bass <c,, c'>2. |
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
  \time 6/8
  
  \partial 8 s8
  s4\p\< s8\> s4\< s16 s\! |
  s2. |
  s4\< s16 s\! s4. |
  s4\> s16 s\! s4\> s16 s\! | 
  s4.\p s4\< s16 s\! |
  s4\< s8\> s4.\! |
  s2.\cresc |
  s4. s4\> s16 s\! |
  
  \barNumberCheck 9
  s8\< s16\> s8 s16\! s4\< s16 s\! |
  s4. s4\< s16 s\! |
  s4. s4\> s16 s\! |
  s4\> s16 s\! s4\> s16 s\! | 
  s4. s4\< s16 s\! |
  s4. s4\< s16 s\! |
  s4.\< s4 s16 s\! |
  s4.\> s4 s16 s\! |
  
  \barNumberCheck 17
  s4.^\delicato s4\< s16\> s \! |
  s2. * 4 |
  s4 s8\< s4 s16 s\! |
  s4. s4\< s16\> s\! |
  s4. s4\< s16 s\! |
  
  \barNumberCheck 25
  s4. s4\< s16 s\! |
  s2. |
  s8. s\cresc s4. |
  s2. |
  s8 s\> s16 s\! s4. |
  s2. * 3 |
  
  \barNumberCheck 33
  s4\< s16 s\! s8 s8.\> s16\! |
  s4. s4\< s16 s\! |
  s4. s4\< s16 s\! |
  s4. s4\> s16 s\! |
  s4\> s16 s\! s4. |
  s4. s4\> s16 s\! |
  s4. s4\< s16 s\! |
  s8. s8.\cresc s4. |
  
  \barNumberCheck 41
  s4. s4\< s16 s\! |
  s2. * 2 |
  s4\p\< s16 s\! s4\> s16 s\! |
  s4\< s16 s\! s8 s8.\> s16\! |
  s4\< s16 s\! s8 s8.\> s16\! |
  s2. |
  s2.\f |
  
  \barNumberCheck 49
  s2. * 7 |
  s4. s4 s8\cresc |
  
  \barNumberCheck 57
  s4 s8\< s4 s16 s32 s\! |
  s2. |
  s2.\ff |
}

pedal = {
  \time 6/8
  
  \partial 8 s8
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 7 |
  s4.\sustainOn s4 s16 s\sustainOff |
  
  \barNumberCheck 17
  \repeat unfold 5 { s4.\sustainOn s4 s16 s\sustainOff | }
  s2. |
  s4.\sustainOn s4 s16 s\sustainOff |
  s2. |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 2 |
  s4.\sustainOn s4 s16 s\sustainOff |
  s2. * 5 |
  
  \barNumberCheck 49
  s2. * 7 |
  s2.\sustainOn |
  
  \barNumberCheck 57
  s2. * 2 |
  s2 s8. s16\sustainOff |
}

% The music has a decrescendo on top of a crescendo, which causes these 
% warnings.  They can be ignored.
#(ly:expect-warning "conflict with event: `crescendo-event'")
#(ly:expect-warning "discarding event: `decrescendo-event'")

etude-seven-header = \header { }

etude-seven-music = {
  \new PianoStaff \with { instrumentName = \markup \huge "No. 7" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal
  >>
}

etude-seven-midi = \book {
  \bookOutputName "Fredric-Chopin-Etudes-Op10-No7"
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