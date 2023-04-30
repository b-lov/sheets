%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.1"
\language "english"

\include "Global.ily"
\include "articulate.ly"

legatoMark = {
  \once \override Score.RehearsalMark.outside-staff-priority = 900
  \once \override Score.RehearsalMark.X-offset = 10
  \mark \markup \small \italic "legato"
}

global = {
  \time 4/4
  \key c \major
  \accidentalStyle piano
}

rightHand = \relative c {
  \clef treble
  \global
  \tempo "Allegro" 4 = 176
  
  \staffDown \stemUp \legatoMark r16 c-1 g'-2 c-4 \staffUp \stemNeutral e->-5
    c-1 g'-2 c-4  e->-5 c g' c  \ottava 1 e-> c g' c |
  e16-> c g c,  \ottava 0 e-> c g c,  e-> c g c,  e-> c \staffDown g c, |
  \stemUp r16 c-1 a'-2 c-3  \staffUp \stemNeutral f-5 c-1 a'-2 c-3  f c a' c 
    \ottava 1 f c a' c |
  e16-5 c-4 a-2 c,-1  \ottava 0 e-5 c a c,  e c a c,  e c \staffDown a c, |
  \stemUp r16 b g' b-4 \staffUp \stemNeutral d-5 b g' b  d b g' b
    \ottava 1 d b g' a |
  d16-5 a-3 fs-2 c-1  \ottava 0 d-5 a-3 fs-2 c-1  d a fs c
    \staffDown \stemUp d a fs c |
  r16 c-1 f-2 af-3  \staffUp \stemNeutral d-5 c-1 f af  d c f af  
    \ottava 1 d c f af |
  d16-5 g,-3 f-2 b,-1  \ottava 0 d-5 g, f b,  d g, f b,  
    \staffDown \stemUp ds^> g, f b, | 
    
  \barNumberCheck 9
  r16 c g' c  \staffUp \stemNeutral e c g' c  e c g' c  \ottava 1 e c g' c |
  e16 c g c,  \ottava 0 e c g c,  e c g c,  e c \staffDown g c, |
  \stemUp r16 c-1 f-2 c'-4  \staffUp \stemNeutral f-5 c-1 f-2 c'-4  f-5 c f c'
    \ottava 1 f c f c' |
  e16-5 c-4 fs,-2 c-1  \ottava 0 e-5 c fs, c  e c fs, c  
    e c \staffDown fs, c |
  \stemUp r16 c-1 g'-2 c-4  \staffUp \stemNeutral d-5 c g' c  d c g' c
    \ottava 1 d c g' c |
  d16 b g b,  \ottava 0 d b g b,  d b g b,  d b \staffDown g b, |
  \stemUp r16 d-1 g-2 d'-4  \staffUp \stemNeutral e-5 d g d'  e d g d'
    \ottava 1 e d g d' |
  e16-5 c-4 g-2 c,-1  \ottava 0 e-5 c g c,  e c g c,  e c \staffDown g c, |
  
  \barNumberCheck 17
  \stemUp r16 e-1 c'-2 e-4  \staffUp \stemNeutral f-5 e c' e  f e c' e
    \ottava 1 f e c' e |
  f16-5 d-4 b-2 d,-1  \ottava 0 f-5 d b d,  f d b d,  f d b \staffDown d,
  \stemUp r16 d-1 b'-2 d-4  \staffUp \stemNeutral e-5 d-1 b' d  e d b' d
    \ottava 1 e d b' d |
  e16-5 c-2 a-2 c,-1  \ottava 0 e-5 c a c, e c a c,  e c \staffDown a c, |
  \stemUp r16 c-1 a'-2 c-4  \staffUp \stemNeutral e-5 c-1 a' c  e c a' c
    \ottava 1 e c a' c |
  ds16-5 b-3 a-2 b,-1  \ottava 0 ds-5 b-3 a-2 b,-1  ds b a b,
    \staffDown \stemUp ds b a b,
  r16 b16-1 a'-2 b-3  \staffUp \stemNeutral e-5 b-1 a'-2 b-3  e-5 b a' b  
    \ottava 1 e b a' b |
  e16-5 b-3 gs-2 b,-1  \ottava 0 e-5 b-3 gs b,  e b gs b,  
    e b \staffDown gs b, |
    
  \barNumberCheck 25
  \stemUp r16 e-1 a-2 cs-3  \staffUp \stemNeutral g'-1 e a cs  g' e a cs  
    g' cs, a e |
  g'16-5 c,-3 a-2 e-1  g c, a e  g c, \staffDown a e
    \staffUp fs' c \staffDown a d,
  \stemUp r16 d-1 g-2 c-3  \staffUp \stemNeutral f-5 d-1 g-2 c-4  f-5 d g c 
    \ottava 1 f d g c |
  f16-5 b,-3 g-2 d-1  \ottava 0 f-5 b, g d  f b, g d  
    \staffDown \stemUp f b, g d |
  r16 c-1 g'-2 bf-3  \staffUp \stemNeutral e-5 c-1 g'-2 bf-3  e-5 c g' bf  
    \ottava 1 e c g' c |
  ef-1 bf-4 ef,-2 c-1  \ottava 0 ef-5 bf ef, c  ef bf ef, c
    ef bf \staffDown ef, c |
  \stemUp r16 c-1 ef-2 a-4  \staffUp \stemNeutral ef'-5 c ef a  ef' c ef a
    \ottava 1 ef' c ef a |
  ef'-5 af,-3 ef-2 cf-1  \ottava 0 ef-5 af, ef cf  ef af, ef cf
    \staffDown \stemUp ef af, ef cf |
    
  \barNumberCheck 33
  r16 bf-1 f'-2 af-3  \staffUp \stemNeutral d-5 bf-1 f' af  d bf f' af
    \ottava 1 d bf f' af
  d16-5 gs,-3 e-2 bf-1  \ottava 0 d-5 gs, e bf  d gs, e bf
    \staffDown \stemUp d gs, e bf |
  r16 a-1 e'-2 a-4  \staffUp \stemNeutral cs-5 a e' a  cs a e' a  
    \ottava 1 cs a e' a |
  cs16 a e a,  \ottava 0 cs a e a,  cs a e a,  \staffDown \stemUp cs a e a, |
  r16 a-1 d-2 fs-3  \staffUp \stemNeutral c'-5 a d fs  c' a d fs  c' a d fs |
  \ottava 1 c'-5 f,-3 d-2 g,-1  \ottava 0 c-5 f, d g,  
    c f, d g,  \staffDown  \stemUp b^> f d g, |
  \stemUp r16 g-1 c-2 e-3  \staffUp \stemNeutral b'-5 g c e  b' g c e  
    b' g c e |
  \ottava 1 b'16-5 e,-3 c-2 f,-1  \ottava 0 b-5 e, c f,  b e, c f,
    \staffDown \stemUp a^> e c f, |
    
  \barNumberCheck 41
  r16 f-1 b-2 d-3  a'-5 f b d  \staffUp \stemNeutral a' f b d  a' f b d |
  g16 d b e,  g d b e,-1  a-2 c-3 g'-5 e-1  a c g' e-4 |
  f16-5 c-3 a-2 d,-1  f-5 c a d,-1  g-2 b-3 f'-5 d-1  g b f' d-4 |
  e16-5 b-3 g-2 c,-1  e-5 c g c,  f a e' c  f a e' c-4 |
  d16-5 a-3 f-2 b,-1  d a f b,  \stemUp \staffDown d a f b,  \staffUp r4 |
  \stemNeutral ds'''16 a fs b,  ds a fs b,  \stemUp \staffDown ds a fs b,
    \staffUp r4 |
  \staffDown \stemUp r16 b-1 e-2 gs-3  \staffUp \stemNeutral e'-1 b-1 e gs
    e' b e gs  \ottava 1 e' b e gs |
  e'-5 gs,-3 e-2 b-1  \ottava 0 e-5 gs, e b  e gs, e b  
    f'-> b, \staffDown g d |
    
  \barNumberCheck 49
  \stemUp r16 c-1 g'-2 c-4  \staffUp \stemNeutral e-5 c g' c  e c g' c
    \ottava 1 e c g' c |
  e16 c g c,  \ottava 0 e c g c,  e c g c,  e c \staffDown g c, |
  \stemUp r16 c a' c  \staffUp \stemNeutral f c a' c  f c a' c
    \ottava 1 f c a' c |
  e16 c a c,  \ottava 0 e c a c,  e c a c,  d-> c \staffDown a c,
  \stemUp r16 b g' b  \staffUp \stemNeutral d b g' b  d b g' b  
    \ottava 1 d b g' a |
  d16 a fs c  \ottava 0 d a fs c  d a fs c  \staffDown \stemUp d a fs c |
  r16 c f af  \staffUp \stemNeutral d c f af  d c f af  \ottava 1 d c f af |
  d16 g, f b,  \ottava 0 d g, f b,  d g, f b,  
    \staffDown \stemUp ds^> g, f b, |
  
  \barNumberCheck 57
  r16 c g' c  \staffUp \stemNeutral e c g' c  e c g' c  \ottava 1 e c g' c |
  e16 c g c,  \ottava 0 e c g c,  e c g c,  e c \staffDown g c, |
  \stemUp r16 c-1 f-2 c'-4  \staffUp \stemNeutral f-5 c-1 f c'  f c f c'
    \ottava 1 f c f c' |
  e16 c fs, c  \ottava 0 e c fs, c  ef c fs, c  ef c \staffDown fs, c |
  \stemUp r16 c-1 g'-2 c-4  \staffUp \stemNeutral d-5 c g' c  d c g' c
    \ottava 1 d c g' c |
  d16 b g b,  \ottava 0 d b g b,  d b g b,  d b \staffDown g b, |
  \stemUp r16 c-1 a'-2 c-4  \staffUp \stemNeutral d-5 c-1 a' c  d c a' c
    \ottava 1 d c a' c |
  ef16-5 c-4 a-2 c,-1  \ottava 0 ef-5 c-4 a c,  ds->-5 b-3 a-2 b,-1
    ds->-5 b-3 \staffDown a b, |
    
  \barNumberCheck 65
  \stemUp r16 b-1 gs'-2 b-3  \staffUp \stemNeutral e-5 b-1 gs'-2 b-3  
    e-5 b gs' b  \ottava 1 \omitOneAccidental e b gs' b |
  e16-5 b-3 gs-2 b,-1  \ottava 0 e b gs b,  e b gs b,  e b \staffDown gs b, |
  \stemUp r16 d-1 a'-2 c-5  \staffUp \stemNeutral f-5 d a' c  f d a' c
    \ottava 1 f d a' c |
  f16-5 b,-3 g-2 d-1  \ottava 0 f b, g d  f b, g d  f b, \staffDown g d |
  \stemUp r16 c-1 g'-2 c-4  \staffUp \stemNeutral e-5 c-1 g' c 
    e c-1 bf'-2 c-3  g'-5 c, bf g |
  fs'16 c a ef  fs c a ef  f' b, gs d  f b, \staffDown gs d |
  \stemUp r16 c-1 g'-2 c-4  \staffUp \stemNeutral e-5 c g' c  e c g' c  
    e c g c, |
  ef'16-5 a,-3 fs-2 c-1  ef-5 a, fs c  d' af f b,
    \staffDown \stemUp d af f b, |
  
  \barNumberCheck 73
  r16 bf-1 e-2 g-3  \staffUp \stemNeutral df'-5 bf-1 e g  df' bf e g
    \ottava 1 df' bf e g |
  df'16-5 fs,-3 ef-2 a,-1  \ottava 0 df fs, ef a,  df fs, ef a,
    c' fs, ef a, |
  r16 af-1 d-2 f-3  c'-1 af d f  c' af d f  \ottava 1 c' f, d af |
  b'16-5 f-3 d-2 g,-1  \ottava 0 b-5 f d g,  b f d g,
    \staffDown \stemUp b f d g, |
  \stemUp r16 g e' g  \staffUp \stemNeutral c g e' g  c g e' g 
    \ottava 1 c g e' g |
  c16 g e g,  \ottava 0 c g e g,  c g e g,  \staffDown \stemUp c g e g, |
  \staffUp R1\fermata |
  \bar "|."
}

leftHand = \relative c, {
  \clef bass
  \global
  
  <c c'>1~ |
  q1 |
  <f, f'>1 |
  <fs fs'>1 |
  \voiceFour <g g'>2 \oneVoice <fs fs'>4 <e e'> |
  <d d'>1 |
  <g g'>1~ |
  q1 |
  
  \barNumberCheck 9
  <c c'>1~ |
  q1 |
  <a a'>1~ |
  q1 |
  <g g'>1~ |
  q1 |
  <c c'>1~ |
  q1 |
  
  \barNumberCheck 17
  <a a'>1 |
  <b b'>2 <a a'> |
  <gs gs'>1 |
  <a a'>2 <g g'> |
  <f f'>1~ |
  q1 |
  <e e'>1~ |
  q1 |
  
  \barNumberCheck 25
  <a a'>1 |
  <d d'>1 |
  <g, g'>1~ |
  q1 |
  <c c'>1 |
  <gf gf'>1 |
  <f f'>1 |
  <cf' cf'>1 |
  
  \barNumberCheck 33
  bf1~ |
  <bf bf'>1 |
  <a a'>1~ |
  q1 |
  d1 |
  <g, g'>1 |
  c1 |
  <f, f'>1 |
  
  \barNumberCheck 41
  b1 |
  <e, e'>2 <a a'> |
  <d, d'>2 <g g'> |
  <c, c'>2 <f f'> |
  <b b'>2. \voiceFour b4~ |
  \oneVoice <b b'>2. \voiceFour b4 |
  \oneVoice <e, e'>1~ |
  q2. <d d'>4 |
  
  \barNumberCheck 49
  <c c'>1~ |
  <c' c'>1 |
  <f, f'>1 |
  <fs fs'>1 |
  \voiceFour <g g'>2 \oneVoice <fs fs'>4 <e e'> |
  <d d'>1 |
  <g g'>1~ |
  q1 |
  
  \barNumberCheck 57
  <c c'>1~ |
  q1 |
  <a a'>1~ |
  q2. \voiceFour <af af'>4 |
  \oneVoice <g g'>1~ |
  q1 |
  <fs fs'>1 |
  <f f'>1 |
  
  \barNumberCheck 65
  <e e'>1~ |
  <e' e'>1 |
  d1 |
  <g, g'>1 |
  c1~ |
  <c c'>1 |
  c1 |
  <g g'>1 |
  
  \barNumberCheck 73
  <g g'>1~ |
  q1 |
  <g g'>1~ |
  q1 |
  <c, c'>1~ |
  q1 |
  \override NoteColumn.X-offset = 4 q1\fermata |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  
  s1\f |
  s1 * 7 |
  
  \barNumberCheck 9
  s1 * 8
  
  \barNumberCheck 17
  s1 * 8
  
  \barNumberCheck 25
  s1 * 8
  
  \barNumberCheck 33
  s2 s\cresc |
  s1 |
  s1\f |
  s4 s2.\dim |
  s1 * 4 |
  
  \barNumberCheck 41
  s1 |
  s2 s\cresc |
  s1 * 2 |
  s1\f |
  s1 * 2 |
  s4 s8\dim s\> s8. s16\! s4 |
  
  \barNumberCheck 49
  s1 * 8
  
  \barNumberCheck 57
  s1 * 8
  
  \barNumberCheck 65
  s1 * 4
  s2 s4\cresc s8.\> s16\! |
  s8.\> s16\! s8.\> s16\! s8.\> s16\! s4 |
  s4 s2\< s8. s16\! |
  s4\> s8. s16\! s2 |
  
  \barNumberCheck 73
  s4 s8 s\< s4 s8. s16\! |
  s4 s\> s8. s16\! s4|
  s4 s\< s s8. s16\! |
  s4 s8\dim s\> s s16\! s s4 | 
  s2 s4\< s8. s16\! |
  s2\> s8. s16\! s4 |
  s1 |
}

pedal = {
  s1\sustainOn |
  s2 s4. s16 s\sustainOff |
  \repeat unfold 6 { s2\sustainOn s4. s16 s\sustainOff | }
  
  \barNumberCheck 9
  s1\sustainOn |
  s2 s4. s16 s\sustainOff |
  \repeat unfold 6 { s2\sustainOn s4. s16 s\sustainOff | }
  
  \barNumberCheck 17
  \repeat unfold 8 { s2\sustainOn s4. s16 s\sustainOff | }
  
  \barNumberCheck 25
  \repeat unfold 8 { s2\sustainOn s4. s16 s\sustainOff | }
  
  \barNumberCheck 33
  \repeat unfold 2 { s2\sustainOn s4. s16 s\sustainOff | }
  s1\sustainOn |
  s2 s4. s16 s\sustainOff |
  \repeat unfold 4 { s2\sustainOn s4. s16 s\sustainOff | }
  
  \barNumberCheck 41
  s2\sustainOn s4. s16 s\sustainOff |
  \repeat unfold 3 { s4\sustainOn s8. s16\sustainOff s4\sustainOn s8. 
                     s16\sustainOff | }
  \repeat unfold 2 { s2\sustainOn s4. s16 s\sustainOff | }
  s1\sustainOn |
  s2 s8. s16\sustainOff s8.\sustainOn s16\sustainOff |
  
  \barNumberCheck 49
  s1\sustainOn |
  s2 s4. s16 s\sustainOff |
  \repeat unfold 6 { s2\sustainOn s4. s16 s\sustainOff | }
  
  \barNumberCheck 57
  s1\sustainOn |
  s2 s4. s16 s\sustainOff |
  s2\sustainOn s4. s16 s\sustainOff |
  s4.\sustainOn s16 s\sustainOff s4.\sustainOn s16 s\sustainOff
  \repeat unfold 3 { s2\sustainOn s4. s16 s\sustainOff | }
  s4.\sustainOn s16 s\sustainOff s4.\sustainOn s16 s\sustainOff
  
  \barNumberCheck 65
  s1\sustainOn |
  s2 s4. s16 s\sustainOff |
  \repeat unfold 3 { s2\sustainOn s4. s16 s\sustainOff | }
  s4\sustainOn s8. s16\sustainOff s4\sustainOn s8. s16\sustainOff |
  s2\sustainOn s4. s16 s\sustainOff |
  s4\sustainOn s8. s16\sustainOff s4\sustainOn s8. s16\sustainOff |
  
  \barNumberCheck 73
  \repeat unfold 4 { s2\sustainOn s4. s16 s\sustainOff | }
  s1\sustainOn |
  s1 |
  s2. s8. s16\sustainOff |
}

breaks = {
  \repeat unfold 11 { s1 \noPageBreak }
  s1 \pageBreak
  \repeat unfold 11 { s1 \noPageBreak }
  s1 \pageBreak
  \repeat unfold 9 { s1 \noPageBreak }
  s1 \pageBreak
  \repeat unfold 11 { s1 \noPageBreak }
  s1 \pageBreak
  \repeat unfold 11 { s1 \noPageBreak }
  s1 \pageBreak
  \repeat unfold 11 { s1 \noPageBreak }
  s1 \pageBreak
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
}

etude-one-header = \header {
  title = "Etudes"
  composer = "Frédéric Chopin (1810-1849)"
  opus = "Opus 10"
  copyright = \markup { 
    "This work is licensed under a" 
    \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
    "Creative Commons Attribution-ShareAlike 4.0 License" 
  }
}

etude-one-music = {
  \new PianoStaff \with { instrumentName = \markup \huge "No. 1" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal
    \new Dynamics = "breaks" \breaks
  >>
}

etude-one-midi = \book {
  \bookOutputName "Fredric-Chopin-Etudes-Op10-No1"
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
