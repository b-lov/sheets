%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.1"
\language "english"

\include "Global.ily"
\include "articulate.ly"

staffUpTwo =
#(define-music-function (music) (ly:music?)
  #{
    \change Staff = "upper" \voiceTwo 
    #music 
    \change Staff = "lower" \voiceThree
  #})

staffDownThree =
#(define-music-function (music) (ly:music?)
  #{
    \change Staff = "lower" \voiceThree
    #music 
    \change Staff = "upper" \voiceTwo
  #})

conMolto = \markup \larger \italic "con molto espressione"
sempreLegatissimo = \markup \larger \italic "sempre legatissimo"
sempreLegato = \markup \larger \italic "sempre legato"
pesante = \markup \larger \italic "pesante"
legato = \markup \larger \italic "legato"
strettoCresc = \markup \larger \italic "stretto e cresc."
pocoRiten = \markup \larger \italic "poco riten."
smorz = \markup \larger \italic "smorz"
sostenuto = \markup \larger \italic "sostenuto"
rall = \markup \larger \italic "rall."

adjustDynA = \tweak X-offset 0.5 \etc
adjustDynB = \tweak Y-offset -9 \etc
adjustDynC = \tweak Y-offset -1 \etc
adjustFingerA = \tweak Y-offset 6.5 \etc
adjustFingerB = \tweak Y-offset -10.5 \etc
adjustFingerC = 
  \tweak X-offset 0.75 
  \tweak Y-offset -9.1
  \etc
adjustFingerD = \tweak Y-offset 2.25 \etc % 4 \etc
adjustFingerE = \tweak Y-offset 2.2 \etc % 4 \etc

slurShapeA = \shape #'((0 . 0.5) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0.9) (0 . -0.5) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0.5) (0 . 0) (0 . 0) (0 . 0)) \etc

global = {
  \time 6/8
  \key ef \minor
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \override NoteColumn.ignore-collision = ##t
  \partial 8 gf'8^\conMolto
  gf4._~ gf4 f16 ef |
  bf'4. af |
  cf4.~ cf4 bf16 f-2 |
  bf2. |
  ef4.~ ef8 df16 cf af ef |
  gf4->~ gf16 f ef4. |
  <cf ff>4.-> <cf ef> |
  \grace { ef8 } d4. <cf ef>8 <c e> f |
  
  \barNumberCheck 9 
  gf4.->~ gf4 f16 ef |
  bf'4.-> af |
  cf4.~ cf4 bf16 f |
  bf2. |
  ef4.~ ef8 df16 cf af ef |
  gf4~ gf16 f ef4. |
  <cf ff>4. d4~ d16 ef |
  ef4. \oneVoice r4 r8 |
  
  \barNumberCheck 17
  \voiceOne <ef f>4.^\<-4-5 <d f>4-4-5 <df g>8\!-2-5 |
  <af cf g' af>4. <af d f af> |
  <f' g>4.^\< <e g>4 <ef a>8\! |
  <bf d a' bf>4. <bf e~ g bf>4( <as e' as>8)
  \key cs \minor
  b'4.( a4 gs8 |
  <e gs>4. <e fs>) |
  <e a>4. <ds gs>4 <ds fs>8 |
  <ds fs>4 <e gs>8 q4.^\< <>\! |
  
  \barNumberCheck 25
  <fs gs>4.->( <e gs>4^\< q8\! |
  <gs cs>4.^\> <gs bs>4)\! ds'8\rest |
  <fs, gs>4. <e gs>4^\< q8\! |
  <bs' e>4. <b ds> |
  \key ef \minor
  <gf af>4.( <af cf>4^\> q8\! |
  <af cf>4 <af bf>8) <bf df>4( q8 |
  <bf df>4 <bf c>8) <c ef>4( q8 |
  <c gf'>4. <c f> |
  
  \barNumberCheck 33
  <af bf>4.) q4 <g bf>8 |
  <g bf>4. <gf a> |
  <gf a>4.( <f af>4-> q8 |
  <ff af>4. <ff g>) |
  <e g>4.( q4 q8 |
  <ds g>4.->^\pocoRiten <ds fs>) |
  <d gf>4.->(^\smorz <d f>4 q8 |
  <c f>4.) <d f> |
  
  \barNumberCheck 41
  gf4.~ gf4 f16 ef |
  bf'4. af |
  cf4.->~ cf4 bf16 f |
  bf2. |
  ef4.~ ef8 df16 cf af ef |
  gf4->~ gf16 f ef4. |
  <cf ff>4.( d4~ d16. ef32) |
  <cf ff>4.( d4~ d16. ef32) |
  
  \barNumberCheck 49
  <cf ff>4.( <cs e cs'>8^\sostenuto <e gs> <e a>) |
  \override DynamicTextSpanner.style = #'none
  af16 gf ff4-> ef^\dim d8\! |
  <<
    \new Voice {
      \voiceOne
      ef2.~ |
      ef2.~ |
      ef2.\fermata |
    }
    \new Voice {
      s4. s^\rall |
      s2. |
      s2. |
    }
  >>
  \bar "|."
}

rightHandLower = \relative {
  \partial 8 s8
  s4. s4 s16 \hideNotes ef'~ \unHideNotes |
  ef2~ ef8. f16~ |
  f2. |
  ff2 ~ \voiceOne ff8. ef16~ |
  \voiceTwo ef2. |
  d4. \once \omit Dots ef |
  s2. |
  bf4. s8 s df16 d |
  
  \barNumberCheck 9
  ef4. s4 s16 \hideNotes ef~ \unHideNotes |
  ef2~ ef8. f16~ |
  f2. |
  ff2~ \voiceOne ff8. ef16_~ |
  \voiceTwo ef2. |
  d4. \once \omit Dots ef |
  s4. af, |
  gf4. s4. |
  
  \barNumberCheck 17
  bf16-2 cf-3 a-1 cf-3 bf-2 f-1  bf cf a cf bf \staffDownThree { f-1~ |
  \onlyNoteHead f16 } s16 s s8. s4. |
  d'16 ef cs ef d g,  c df b df c \staffDownThree g |
  s2. |
  \key cs \minor
  <b e>16 fs' ds fs e b  e fs ds fs e b |
  cs16 ds bs ds cs a  cs ds bs ds cs fs, |
  cs'16 ds bs ds cs fs,  b cs a cs b fs |
  b16 cs a cs b gs  b cs a cs b gs |
  
  \barNumberCheck 25
  ds'16 e css e ds gs,  cs ds bs ds cs gs |
  ds'16 e css e ds \staffDownThree gs,  ds' e css e ds gs, |
  ds'16 e css e ds gs,  cs ds bs ds cs gs |
  gs'16 a fss a gs ds  gs a fss a gs d |
  \key ef \minor
  df16 ff d ff ef af,  f' gf e gf f cf |
  f16 gf e gf f bf,  g' af fs af g df |
  g16 af fs af g c,  a' bf gs bf a ef |
  a16 bf gs bf a gf  a bf gs bf a f | 
  
  \barNumberCheck 33
  f16 gf e gf f bf,  ff' gf ef gf e bf |
  e16 f d f e bf  ef f d f ef a, |
  ef'16 f d f ef a,  d ef cs ef d af |
  df16 ef c ef df af  df ef c ef df g, |
  cs16 ds bs ds cs g  c d b d c g |
  b16 c as c b fs  b c as c b fs |
  bf16 cf a cf bf f  bf cf a cf bf f |
  a16 bf gs bf a f  bf cf a cf bf f |
  
  \barNumberCheck 41
  s4. s4 s16 \hideNotes ef'~ \unHideNotes |
  ef2~ ef8. f16~ |
  f2. |
  ff2~ \voiceOne ff8. ef16~ |
  \voiceTwo ef2. |
  d4. \once \omit Dots ef |
  s4. bf |
  s4. bf |
  
  \barNumberCheck 49
  s2. |
  cf4. 
  <<
    \new Voice {
      \voiceTwo
      cf16 bf a bf8. |
      gf4 
    }
    \new Voice {
      \voiceTwo
      s8. s8 \omit Stem \omit Flag gf16 ~ |
      gf4
    }
  >>
  s16 [(f gf]) s4 f16[( |
  gf16]) s4 f16[( gf]) s4 f16 |
  g2. |
}

rightHand = <<
  \global
  \tempo "Andante" 8. = 69 
  \new Voice { \voiceOne \rightHandUpper }
  \new Voice { \voiceTwo \rightHandLower }
>>

leftHandUpper = \relative {
  \partial 8 d8\rest
  bf'16-2 cf-1 a-3 cf-1 bf-2 gf-4  bf cf a cf bf \staffUpTwo ef |
  cf16-\slurShapeA_( df bf df cf af  cf df bf df cf af)~-3 |
  af16-\slurShapeB_( bf-2 g-4 bf-2 af-3 f-4  af-3 bf-2 g-4 bf-2 af-3 
    \staffUpTwo f') |
  g,16-1 af-2 fs-3 af-1 g-2 e-4  g-\adjustFingerA-2 af-1 fs af g 
    \staffUpTwo ef' |
  \omitOneAccidental g,16 af fs af g ef  af bf g bf af \staffUpTwo ef' |
  af,16 bf g bf af f  gf af f af gf ef |
  \staffUpTwo { af16-1 bf-2 g-1 bf-2 af-\adjustFingerB-1 } ff-3  
    gf-2 af-1 f-2 af-1 gf-2 \staffUpTwo cf |
  f,16-1 gf-2 e-3 gf-1 f-2 af-1  gf[ bff] g[ bf] af[ cf] |
  
  \barNumberCheck 9
  bf16 cf a cf bf gf  bf cf a cf bf \staffUpTwo ef |
  cf16-\slurShapeC _( df bf df cf af  cf df bf df cf af)~ |
  af16 bf g bf af f  af bf g bf af \staffUpTwo f' |
  g,16 af fs af g e  g af fs af g \staffUpTwo ef' |
  g,16 af fs af g ef  af bf g bf af \staffUpTwo ef' |
  af,16 bf g bf af f  gf af f af gf ef |
  \staffUpTwo { af16-1 bf-2 g-1 bf-2 af-\adjustFingerC-1 } ff  
    f gf e gf f bf,~ |
  bf16( cf a cf bf gf  ef-\adjustFingerD-4 f-\adjustFingerE-1 d-3 f-1 ef-2 
    cf)-4 |
  
  \barNumberCheck 17
  s2. |
  f'16 g-1 e-2 g-1 f-2 c-3  b-4 c-1 as-3 c-1 b-2 b,-5 |
  s2. |
  \omitOneAccidental g''16 a fs a g d  cs d bs d cs fss,_( |
  \key cs \minor
  gs4._\legato) s |
  s2. |
  gs4. gs4 gs8 |
  s2. |
  
  \barNumberCheck 25
  s2. * 4 |
  \key ef \minor
  s2. * 4 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  bf'16 cf a cf bf gf  bf cf a cf bf \staffUpTwo ef |
  cf16 df bf df cf af  cf df bf df cf af~ |
  af16 bf g bf af f  af bf g bf af \staffUpTwo f' |
  g,16 af fs af g e  g af fs af g \staffUpTwo ef' |
  \omitOneAccidental g,16 af fs af g ef  af bf g bf af \staffUpTwo ef' |
  af,16 bf g bf af f  gf af f af gf ef |
  \staffUpTwo { af16 bf g bf af } ff  f gf e gf f bf, |
  \staffUpTwo { af'16 bf g bf af } ff  f gf e gf f bf, |
  
  \barNumberCheck 49
  \staffUpTwo { af'16 bf g bf af } ff  a[ e] b'[ e,] cs'[ e,]( |
  ff16) ff ef ff gf af s4 f16 \staffUpTwo gf |
  bf,16[ cf bf d ef] s s cf[ bf d ef] s |
  s16 cf[ bf d ef] s 
  <<
    \new Voice {
      \override NoteColumn.ignore-collision = ##t
      \voiceThree s16 cf[ bf d ef] s |
      bf2. |
    }
    \new Voice {
      \voiceFour s8 bf4~ |
      \hideNotes bf2. |
    }
  >>
}

leftHandLower = \relative {
  \partial 8 s8
  ef2._\sempreLegatissimo |
  f2. |
  d2. |
  <<
    \new Voice { 
      \override NoteColumn.ignore-collision = ##t
      \voiceFour df2. |
      cf2. |
      bf4. cf |
    }
    \new Voice { 
      \voiceFour s2 s8 g'~ |
      \hideNotes g16 \unHideNotes s8 s8. s8 s af~ |
      \hideNotes af16 s8 s8. s4. |
    }
  >>
  af,4. a4.*2/3 gf'8 |
  bf,2._\sempreLegato |
  
  \barNumberCheck 9
  ef2. |
  f2. |
  d2. |
  <<
    \new Voice { 
      \override NoteColumn.ignore-collision = ##t
      \voiceFour df2. |
      cf2. |
      bf4.
    }
    \new Voice { 
      \voiceFour s2 s8 g'~ |
      \hideNotes g16 \unHideNotes s8 s8. s8 s af~ |
      \hideNotes af16 s s8.
    }
  >>
  cf,4. |
  af4. bf |
  ef,4._\pesante s4. |
  
  \barNumberCheck 17
  \oneVoice <bf bf'>4. bf'4.*2/3 s16 \voiceFour f'16 |
  f,4. s |
  \voiceThree c4.-4
  <<
    \new Voice {
      \override NoteColumn.ignore-collision = ##t
      c'4._\finger \markup \undertie "13" | 
      \voiceFour g4.
    }
    \new Voice {
      s4 s16 g'~ |
      \hideNotes g16 s s4
    }
  >>
  s4. |
  \key cs \minor
  s4. \oneVoice <cs,, cs'>_( |
  <fs, fs'>4. <gs gs'>4 <a a'>8) |
  \voiceFour gs2. |
  \oneVoice <e' b'>2. |
  
  \barNumberCheck 25
  <bs bs'>4.( <cs cs'> |
  gs'2.*1/4) s8 gs'16 s4. |
  <bs,, bs'>4. <cs cs'> |
  <gs gs'>2. |
  \key ef \minor
  <c c'>4. <ef ef'> |
  <d d'>4. <f f'> |
  <e e'>4. <g g'>4 <gf gf'>8 |
  <ef ef'>2. |
  
  \barNumberCheck 33
  <d d'>4. <df df'> |
  <c c'>2. |
  <cf cf'>2. |
  <bf bf'>2. |
  <a a'>2.~ |
  q2. |
  <bf bf'>2.~ |
  q2. |
  
  \barNumberCheck 41
  \voiceFour ef'2. |
  f2. |
  d2. |
  <<
    \new Voice { 
      \override NoteColumn.ignore-collision = ##t
      \voiceFour df2. |
      cf2. |
      bf4. cf |
    }
    \new Voice { 
      \voiceFour s2 s8 g'~ |
      \hideNotes g16 \unHideNotes s8 s8. s8 s af~ |
      \hideNotes af16 s8 s8. s4. |
    }
  >>
  af,4. bf |
  af4. bf |
  
  \barNumberCheck 49
  af4. a8 b cs |
  af4. 
  <<
    \new Voice {
      \override NoteColumn.ignore-collision = ##t
      \voiceFour bf4.-> |
      ef,2.~ |
      ef2.~ |
      ef2.\fermata |
    }
    \new Voice {
      \voiceFour \hideNotes bf'4.~ |
      bf16 s8 s8. s4. | 
      s2. |
      s2. |
    }
  >>
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
  
  \partial 8 s8\p |
  s4. s8.\< s16 s\! s |
  s2. |
  s16 s8\> s8 s16\! s4. |
  s2. |
  s4-\adjustDynA\f\> s16 s\! s4. |
  s2. * 2 |
  s16 s16\< s16 s8 s16\! s4.\cresc |
  
  \barNumberCheck 9
  s2.\! |
  s2. * 3 |
  s16 s16\> s16 s8 s16\! s4. |
  s2. * 3 |
  
  \barNumberCheck 17
  s4. s-\adjustDynB\cresc |
  s2. |
  s4. s-\adjustDynC\cresc
  s4. s\cresc |
  % key cs minor
  s2.\fp |
  s2. * 2 |
  s2.\p |
  
  \barNumberCheck 25
  s2. * 3 |
  s4.\> s8. s8 s16\! |
  % key ef minor
  s16 s\cresc s s8. s4.\! |
  s8. s^\strettoCresc s4. |
  s2. |
  s4.\f\> s\! |
  
  \barNumberCheck 33
  s2. * 3 |
  s8.\> s8 s16\! s4. |
  s2. * 3 |
  s4. s8.\< s8 s16\! |
  
  \barNumberCheck 41
  s2. * 6 |
  s4. s16 s\< s s8 s16\! |
  s4. s16 s\< s s8 s16\! |
  
  \barNumberCheck 49
  s4. s8.\< s8 s16\! |
  s2. |
  s2.^\smorz
}

etude-six-header = \header { }

etude-six-music = {
  \new PianoStaff \with { instrumentName = \markup \huge "No. 6" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
  >>
}

etude-six-midi = \book {
  \bookOutputName "Fredric-Chopin-Etudes-Op10-No6"
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