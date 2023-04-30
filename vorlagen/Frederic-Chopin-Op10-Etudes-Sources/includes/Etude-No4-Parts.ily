%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.1"
\language "english"

\include "Global.ily"

fConFuoco = \markup { \dynamic f \larger \italic "con fuoco" }
conForza = \markup \larger \italic "con forza"
ffConFuoco = \markup { \dynamic ff \larger \italic "con più fuoco possibile" }

adjustConFuoco = \tweak X-offset -5.5 \etc
adjustSustainOff = 
  \tweak X-offset 2
  \tweak Y-offset -8
  \etc
slurPositionA = \once \override Slur.positions = #'(4 . 3)
slurShapeA = \shape #'(
                        ((0 . 5) (0 . 5) (0 . 5) (0 . 5))
                        ((0 . 5) (0 . 5) (0 . 5) (0 . 5))
                      ) Slur 
slurShapeB = \shape #'((-0.65 . 0) (-0.5 . 0) (-1.5 . 0) (0 . 0.5)) Slur
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -1.5) (0 . -1) (0 . -1) (0 . -1))
                      ) Slur
slurShapeD = \shape #'((0 . 2) (0 . -2) (0 . -5) (0 . 0)) Slur
slurShapeE = \shape #'((0 . 0) (0 . 1.5) (0 . -2) (0 . 0)) Slur
dynamicPositionA = \once \override DynamicText.X-offset = 0
dynamicPositionB = \once \override DynamicText.X-offset = -2

global = {
  \time 4/4
  \key cs \minor
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \partial 4 gs''16 fs e ds
  \oneVoice
  <cs cs'>16-^ ds( bs cs  ds e cs ds  e fs ds e  fs gs e fs |
  gs16 a gs cs  fs, gs fs cs'  e, fs e cs'  ds, e ds cs') |
  \voiceOne s16 gs8 s16 s fs8 s16 s e8 s16 s ds8 s16 |
  \oneVoice <cs cs'>8^^ a16[( a']) gs,[( gs']) \slurShapeB fss,[( fss']) 
    gs,[( gs']) cs,,[( cs']) <cs, ds fss as ds>4->
  <b ds gs b>8-. r <cs ds fss>-. r <b ds gs>-. r <cs e gs>-. r |
  <b ds gs>8-. r <cs e gs>-. r <ds gs>-. r <cs ds as'>-. r |
  <b ds gs b>8 r <ds' as' ds>4_~ <ds gs b>8 r <ds, as' ds>4->~ |
  <ds gs b>8 \voiceOne e16([ fss] ds[ gs] g[ as] fs[ b] a[ bs] gs[ cs] 
    bs[ ds]) |
  
  \barNumberCheck 9
  \oneVoice cs16( ds bs cs  ds e cs ds  e fs ds e  fs gs e fs |
  gs16 a gs cs) fs,( gs fs cs')  e,( fs e cs')  ds,( e ds cs') |
  \voiceOne s16 gs8 s16 s fs8 s16 s ds8 s16 s cs8 s16 |
  \oneVoice a16( cs a' fs-4  a-1 cs a' fs  cs a fs cs  a fs d a) |
  \voiceOne gs'4( fs es fs)-> |
  gs4( fs es fs) |
  ds'( cs bs) cs~( |
  <a cs>4 <gs bs> <e gs cs>8) \oneVoice r <cs' cs'>4 |
  
  \barNumberCheck 17
  fss,16( gs es fss  gs as fss gs  as b gs as  b cs as b) |
  cs16( ds cs as')  b,( cs b gs')  as,( b as fss')  gs,( as gs gs') |
  <e, as cs>8-. r <ds gs b>-. r <cs fss as>-. r <b ds gs>-. r |
  <as e' fss>8-. r <b ds gs>-. r <cs ds as'>-. r <ef' ef'>4 |
  \key f \minor
  a,16( bf gs a  bf c a bf  c df bf c  df ef c df) |
  ef16( f ef c')  df,( ef df bf')  c,( df c a')  bf,( c bf bf') |
  <gf, c ef>8-. r <f bf df>-. r <ef a c>-. r <df f bf>-. r |
  <cf f af>8-. r <bf ef gf>-. r <bf df f>-. r <bf c e>-. r |
  
  \barNumberCheck 25
  \voiceOne f'16(-2 gf-4 e-2 f-3  gf-4 af-5 f-2 gf-3  g-4 af-5 fs-2 g)-3
    \oneVoice <af af'>^^-5 bf-4 g-2 af^~-3 |
  \voiceOne af16( bf g af  a bf gs a  as b gss as) \oneVoice <b b'>-^ c as b~ |
  \key cs \minor
  \voiceOne b16( c as b  c-> df b c  cs-> d bs cs  d-> ef cs d |
  ds16-> e css ds  e-> f ds e  f-> gf e f  fs-> g fs e) |
  ds16->( e css ds  e-> fs ds e  a-> b gs a  d,-> e cs d) |
  g16->( a fs g  c,-> d b c  fs-> g es fs  b,-> c as b) |
  e4-> d-> c-> b-> |
  a4-> g-> fs-> e-> |
  
  \barNumberCheck 33
  \oneVoice <gs,! b d gs>8 r <b gs' b>2 \accidentalStyle PianoStaff.default 
    <gs' b gs'>4~ |
  q4 <b gs' b>-. <gs' b gs'>4.->( <fs b fs'>8 \accidentalStyle piano |
  <es b' es>8-^) r b'16( cs b gs')  gs,( as gs es')  es,( fs es d') |
  d,16( e d b')  b,( cs b gs')  gs,( as gs es')  es,( fs es d') |
  <e,! as cs>8 r <cs as' cs>2-> \accidentalStyle PianoStaff.default 
    <as' cs as'>4->~ |
  q4 <cs as'! cs>-. <as' cs as'>4.->( <gs cs gs'>8 \accidentalStyle piano |
  <fss cs' fss>8-^) r cs'16->( ds cs as')  as,->( bs as fss')
    fss,->( gs fss e') |
  e,16( fs e cs')  cs,( ds cs as')  as,( bs as fss')  fss,( gs fss e') |
  
  \barNumberCheck 41
  ds,16( ds' e ds  cs b as gs)  fss( gs fss e')  e,( fs e cs') |
  ds,16( ds' e ds)  cs( b as gs)  gss( as gss fs')  fs,( gs fs ds') |
  \slurShapeD es,16( es' fs es  ds cs bs as)  b( cs b gs')  gs,( as gs es') |
  bs16( cs bs a')  gss,( as gss fs')  cs( ds cs as')  as,( bs as fss') |
  \slurShapeE bs,16( ds fs a  bs ds fs a  bs ds, e gs  fs bs, cs e |
  ds16 fs, gs b  a bs, cs e  ds fs, gs b  a fs d cs) |
  <gs ds' fs gs>8-^ ds'16[( e]  es fs es fs  fss gs fs g  gs a ds, e |
  es16 fs e f  fs g es fs  fss gs fs g  gs a ds, e) |
  
  \barNumberCheck 49
  es16( fs e f  fs g es fs  fss gs fs g  gs a fss gs |
  a16 as gs a  as b a as  b c as b  bs cs b bs |
  cs16 ds bs cs  ds e cs ds  e fs ds e  fs gs e fs |
  gs16-> a gs cs)  fs,->( gs fs cs')  e,->( fs e cs')  ds,->( e ds cs') |
  \voiceOne s16 gs8 s16 s fs8 s16 s e8 s16 s ds8 s16 |
  \oneVoice <cs cs'>8-^ a16[( a']) gs,[( gs']) \slurShapeB fss,[( fss']) 
    gs,[( gs']) cs,,[( cs']) <cs, ds fss as ds>4->
  <b ds gs b>8-. r <cs ds fss>-. r <b ds gs>-. r <cs e gs>-. r |
  <b ds gs>8-. r <cs e gs>-. r <ds gs>-. r <cs ds as'>-. r |
  
  \barNumberCheck 57
  <b ds gs b>8-. r <ds'_~ as' ds>4-> <ds gs b>8 r <ds,~ as' ds>4-> |
  <ds gs b>8 \voiceOne e16([ fss] ds[ gs] g[ as] fs[ b] a[ bs] gs[ cs] 
    bs[ ds]) |
  \oneVoice cs16( ds bs cs  ds e cs ds  e fs ds e  fs gs e fs) |
  gs16( a gs cs)  fs,( gs fs cs')  e,( fs e cs')  ds,( e ds cs') |
  \voiceOne s16 gs8 s16 s fs8 s16 s ds8 s16 s cs8 s16 |
  \oneVoice a16( cs a' fs  a cs a' fs  cs a fs cs  a fs d a) |
  \voiceOne gs'4(^\> fs\! es) fs-> |
  gs4(^\> fs\! es) fs-> |
  
  \barNumberCheck 65
  ds'4^( cs bs) cs-> |
  ds4^( cs bs) <b cs>->( |
  <cs, fs a cs>4 <es b' cs> <fs a cs> <fs a ds>) |
  <e gs e'>4( <gs bs fs'> <gs cs gs'> <cs ds a'> |
  <cs e gs>2) \oneVoice <cs e gs cs>4 <e gs cs e> |
  <gs cs e gs>4 <cs e gs cs> <a cs ds a'> <bs,, fs' gs bs>-> |
  <cs e gs cs>8 r  gs''16( a gs e')  fss,( gs fss e')  fs,( gs fs ds') |
  es,16( fs es d')  e,( fs e cs')  ds,( e ds cs')  ds,( e ds bs') |
  
  \barNumberCheck 73
  cs,16( ds cs cs')  gs( a gs e')  fss,( gs fss e')  fs,( gs fs ds') |
  es,16( fs es d')  e,( fs e cs')  ds,( e ds cs')  ds,( e ds bs') |
  cs,16( ds cs cs')  gs( a gs e')  g,( af g e')  fs,( gs fs ds') |
  es,16( fs es d')  e,( fs e cs')  ds,( e ds bs')  d,( ef d b') |
  cs,16( d cs as')  bs,( cs bs a')  b,( c b gs')  as,( b as g') |
  a,16( bf a fs')  gs,( a gs es')  g,( af g e')  fs,( gs fs ds') |
  <e, cs'>8 gs,16-2[( e'-5]  cs-4 cs-1 gs'-2 e'-5  cs-4 cs-1 gs' e'
    \ottava 1 cs cs gs' cs |
  e16-5 gs,-2 cs,-1 cs-4  \ottava 0 e-5 gs, cs, cs  e gs, cs, cs  
    e \staffDown gs, cs, cs_3) |
    
  \barNumberCheck 81
  \staffUp r2 <cs'' e gs cs >8 r r r16 \staffDown \voiceOne <cs,, cs'> |
  q1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \partial 4 gs'4
  s1 * 2 |
  cs16^>^( gs' e' a,)  bs,^>^( fs' ds' gs,)  \insideSlur gs,^>^( e' cs' fs,)  
    \insideSlur gs,^>^( ds' bs' e,) |
  s1 * 4 |
  s8 e, ds g fs a gs bs |
  
  \barNumberCheck 9
  s1 * 2 |
  cs16 gs' e' a,  bs, fs' ds' gs,  a, ds cs' e,  gs, cs b' d, |
  s1 |
  <b, d>2. <a d>4 |
  <b d>2. cs4 |
  <fs a>2. <e gs>4 |
  ds2 s |
  
  \barNumberCheck 17
  s1 * 4 |
  \key f \minor
  s1 * 4 |
  
  \barNumberCheck 25
  c4 df df s |
  ef4 e e s |
  \key cs \minor
  fs4 g gs a |
  as4 b c cs |
  s4 b e a, |
  d4 g, c fs, |
  \slurShapeA b16^( c a b  a b g a  g a fs g  fs g e fs |
  e16 fs d e  d e c d  c d b c  b c a b) |
  
  \barNumberCheck 33
  s1 * 8 |
  
  \barNumberCheck 41
  s1 * 8 |
  
  \barNumberCheck 49
  s1 * 4 |
  cs'16^( gs' e' a,)  bs,^( fs' ds' gs,)  gs,^( e' cs' fs,)
    gs,^( ds' bs' e,) |
  s1 * 3 |
  
  \barNumberCheck 57
  s1
  s8 e, ds g fs a gs bs |
  s1 * 2 |
  cs16^( gs' e' a,)  bs,^( fs' ds' gs,)  a,^( ds cs' e,)  gs,^( cs b' d,) |
  s1 |
  <b, d>2. \omitOneAccidental <a d>4 |
  <b d>2. cs4 |
  
  \barNumberCheck 65
  <fs a>2. <e a>4 |
  <fs a>2. <cs gs'>4 |
  s1 * 6 |
  
  \barNumberCheck 73
  s1 * 8 |
  
  \barNumberCheck 81
  s1 * 2 |
}

rightHand = {
  \global
  \markLengthOn
  \tempo "Presto" 2 = 88
  << { \rightHandUpper } \\ { \rightHandLower } >>
}

leftHand = \relative {
  \global
  \clef bass
  
  \partial 4 <gs, gs'>4
  <cs, cs'>8 r \clef treble <fs'' a>-. r <e gs>-. r <ds fs>-. r |
  <cs e>8-. r <a cs fs>-. r \clef bass <gs cs e>-. r <fs cs' ds>-. r |
  <cs gs' e'>8-.\arpeggio r <gs fs' bs>-. r <cs e cs'>-. r <gs gs'>-. r |
  <cs, cs'>8 <a' a'>[ <gs gs'> <fss fss'> <gs gs'> <cs, cs'>]
    <ds ds'>16 cs'\> b as\! |
  gs16 as fss gs  as b gs fss  b cs as b  cs ds b cs |
  ds16( e ds gs  cs, ds cs gs'  b, cs b gs'  \voiceTwo as, b as fss') |
  <<
    { s16 e8 s16 s e8 s16 s e8 s16 s e8 s16 }
    \\
    { gs,16 e' b' ds,  fss, e' as ds,  gs, e' b' ds,  fss, e' as ds, }
  >> |
  \oneVoice <gs, gs'>8-. cs'->[( b]) e->[( ds]) fs->[( e]) <gs, ds' fs>-> |
  
  \barNumberCheck 9 
  <cs e>8 r \clef treble <fs a>-. r <e gs>-. r <ds fs>-. r |
  <cs e>8-. r \clef bass <a cs fs>-. r <gs cs e>-. r <fs cs' ds>-. r |
  <cs gs' e'>8-. r <gs fs' bs>-. r <a e' cs'>-. r <es' b' d es>4 |
  <fs a cs fs>8-. <d d'>-. <cs cs'>-. <a a'>-. <fs fs'>-. <cs cs'>-. 
    <d d'>4-> |
  es16->( fs dss es  fs-> gs es fs  gs-> a fs gs  a-> b a b)
  es,16( fs dss es  fs gs es fs  gs a fs gs  a b a b)
  bs16( cs as bs  cs ds bs cs  ds e cs ds   e fs ds e |
  fs16 gs e fs  gs a gs fs  e ds cs b  a-> gs fs e) |

  \barNumberCheck 17
  ds8-. r <b'' ds>-. r <a cs>-. r <gs b>-. r |
  <ds fss as>8-. r <ds gs b>-. r <ds as' cs>-. r <e e'>4\sf |
  fss,16( gs es fss  gs as fss gs  as b gs as  b cs as b) |
  cs16( ds cs as')  b,( cs b gs')  as,( b as fss') a,( bf a gf') |
  \key f \minor
  <f, f'>8-. r <df'' f>-. r < c ef>-. r <bf df>-. r |
  <f a c>8-. r <f bf df>-. r <f c' ef>-. r <gf gf'>4 |
  a,16( bf gs a  bf c a bf  c df bf c  df ef c df |
  d16 ef cs d  ef f d ef  f gf e f  gf af f gf) |
  
  \barNumberCheck 25
  <f a>8-. r <ff bf>-. r <ef bf'>-. r <af, af'>4-> |
  <af' c>8-. r <g cs>-. r <fs cs'>-. r <b, b'>4-> |
  \key cs \minor
  <b' ds>4 <b e> <b es> <b fs'> |
  \clef treble <b fss'>4 <b gs'> <b a'> <b as'> |
  <b b'>4 g'16( fs g b,) c4 fs16( es fs a,) |
  b4 \clef bass e16 ds e g, a4 ds16( css ds fs,) |
  \slurShapeC g16->-2_( a-1 fs-3 g-1  fs->-2 g-1 e-3 fs-1  e-> fs d e  
    d-> e c d |
  c16-> d b c  b-> c a b  a-> b g a  g-> a fs g) |
  
  \barNumberCheck 33
  es8 r cs'16->-2 d-1 bs-4 cs-3  cs->-2 d-1 bs-4 cs-3  cs->-2 d-1 bs cs |
  cs16 d bs cs  cs d bs cs  cs d bs cs  cs d bs cs |
  d8 r \clef treble gs''16( d b es,)  es'( b gs d)  d'( gs, es b) |
  b'( es, d gs,) \clef bass gs'( d b es,)  es'( b gs d)  d'( gs, es b) |
  fss8 r ds'16->_2 e_1 css_4 ds_3  ds->_2 e_1 css_4 ds_3 ds->_2 e css ds |
  ds16-> e css ds  ds-> e css ds  ds-> e css ds  ds-> e css ds |
  e8 r \clef treble fss''16( cs as e)  e'( as, fss cs)  cs'( fss, e as,) |
  as'16( e cs fss,)  \clef bass fss'( cs as e)  e'( as, fss cs)
    cs'( fss, e as,) |
    
  \barNumberCheck 41
  b16( ds fss gs  as b cs ds)  e( as, fss cs)  cs'( fss, e as,) |
  b16( ds fss gs  as b cs ds)  fs( bs, gss ds)  ds'( gss, fs bs,) |
  cs16( es gss as  bs cs-4 ds es)  gs( d b es,)  es'( b gs d) |
  a''16( ds, bs fs)  fs'( bs, gss ds)  as''( e cs fss,)  fss'( cs as e) |
  \clef treble << { a'4->( gs8) } \\ { <gs, ds' fs>4~ q8 } >> r8 r4
    r16 bs'( cs e |
  ds16 fs, gs b  a bs, cs e  \clef bass ds fs, gs b  a fs d cs) |
  <bs, bs'>8-^ r r4 r2 |
  <gs' ds' fs bs>4-.\sf r r2 | 
  
  \barNumberCheck 49
  <gs ds' fs bs>4-.\sf r r2 | 
  r2 r4 gs16( fs e ds) |
  cs8-. r \clef treble <fs'' a>-. r <e gs>-. r <ds fs>-. r |
  <cs e>8 r \clef bass <a cs fs>-. r <gs cs e>-. r <fs cs' ds>-. r |
  <cs gs' e'>8-. r <gs fs' bs>-. r <cs e cs'>-. r <gs gs'>4 |
  <cs, cs'>8 <a'a'>[ <gs gs'> <fss fss'>] <gs gs'> <cs, cs'> 
    <ds ds'>16 cs'( b as |
  gs16 as fss gs  as b gs as  b cs as b  cs ds b cs) |
  ds16( e ds gs)  cs,( ds cs gs')  b,( cs b gs')  as,( b as fss') |
  
  \barNumberCheck 57
  <<
    { s16 e8 s16 s e8 s16 s e8 s16 s e8 s16 }
    \\
    { \slurPositionA gs,16^( e' b' ds,  fss, e' as ds,  gs, e' b' ds,  fss, e' as ds,) }
  >> |
  <gs, gs'>8-. cs'[(-> b]) e[(-> ds]) fs[(-> e]) <gs, ds' fs>-> |
  <cs e>8-. r \clef treble <fs a>-. r <e gs>-. r <ds fs>-. r |
  <cs e>8-. r <a cs fs>-. r \clef bass <gs cs e>-. r <fs cs' ds>-. r |
  <cs gs' e'>8-. r <gs fs' bs>-. r <a e' cs'>-. r <es' b' d es>4-> |
  <fs a cs fs>8-. <d d'>-. <cs cs'>-. <a a'>-. <fs fs'>-. <cs cs'>-.
    <d d'>4-> |
  es16( fs dss es  fs gs es fs  gs a fs gs  a b a b) |
  es,16( fs dss es  fs gs es fs  gs a fs gs  a b a b) |
  
  \barNumberCheck 65
  bs16( cs ass bs  cs ds bs cs  ds e cs ds  e fs e fs) |
  bs,16( cs ass bs  cs ds bs cs  ds e cs ds  es fs dss es |
  fs16 gs es fs  gs a fs gs  a b gs a  bs cs ass bs) |
  cs16_( ds bs cs  \voiceTwo \staffUp ds e cs ds  e fs ds e  fs gs e fs |
  gs16 a gs fs  e ds cs b  \oneVoice \staffDown a gs fs e  ds cs b a |
  gs16 fs e ds  cs b a gs  <fs fs'>4) <gs gs'> |
  <cs, cs'>8 r <gs'' gs'>->[ cs,] <as' as'>->[ cs,] <a' a'>->[ cs,] |
  <gs' gs'>8->[ cs,] <gs'! g'>->[ cs,] <gs' fs'>->[ cs,] <gs' ds'>->[ cs,] |
  
  \barNumberCheck 73
  <gs' e'>8->[ cs,] <gs' gs'>-> cs,] <as' as'>->[ cs,] <a' a'>->[ cs,] |
  <gs' gs'>8->[ cs,] <gs'! g'>->[ cs,] <gs' fs'>->[ cs,] <gs' ds'>->[ cs,] |
  <cs gs' e'>8 r  gs'''16 fss gs gs,  g' fs g gs,  fs' es fs gs, |
  es'16 e es gs,  e' ds e gs,  ds' css ds gs,  d' cs d gs, |
  cs16 bs cs gs,  bs' b bs gs,  b' as b gs,  as' gss as gs, |
  a'16 gs a gs,  gs' fss gs gs,  g' fs g gs,  fs' es fs gs, |
  <cs, gs' e'>8-.\arpeggio\sustainOn r r4 r2 |
  <cs' gs' e'>8-.\arpeggio r r4 r2 |
  
  \barNumberCheck 81
  cs,8 r r4 <cs' gs' e'>8 r r r16 \voiceFour <cs,, cs'> |
  q1\fermata\adjustSustainOff\sustainOff |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5

  \partial 4 s4\adjustConFuoco -\fConFuoco  s4\fp s\cresc s2 |
  s1 * 2 |
  s1\f |
  s1 * 3 |
  s8\fp s4.\< s8\! s4\> s8\! |
  
  \barNumberCheck 9
  s8 s4.\< s4. s16 s\! |
  s1 * 2 |
  s2. s4\f |
  s2.\< s4\! |
  s2.\< s4\! |
  s4\cresc s2\< s4\! |
  s2.\f s4\sf |
  
  \barNumberCheck 17
  s1 * 3 |
  s2. s4\sf |
  % key f minor
  s4 s2\< s8. s16\! |
  s1 |
  s2.\< s8. s16\! |
  s4\< s8. s16\! s2 |
  
  \barNumberCheck 25
  s4\< s8. s16\! s4 s\sf |
  s4\< s8. s16\! s4 s\f |
  % key cs minor
  \revert DynamicTextSpanner.style
  s2 s\cresc |
  s8. s16\! s2. |
  s1 * 4 |
  
  \barNumberCheck 33
  \override DynamicTextSpanner.style = #'none
  s2.\sf s4\cresc |
  s2 \tag #'layout { s4\fp\> s8. s16\! }
     \tag #'midi   { s2\f } |
  s4\f s8.\> s16\! s8.\> s16\! s8.\> s16\! |
  s8.\> s16\! s8.\> s16\! s8.\> s16\! s8.\> s16\! |
  \tag #'layout { s1 }
  \tag #'midi   { s4\sf s2.\f } |
  s2 s4\f\> s8. s16\! |
  s4 s8.\> s16\! s8.\> s16\! s8.\> s16\! |
  s8.\> s16\! s8.\> s16\! s8.\> s16\! s8.\> s16\! |
  
  \barNumberCheck 41
  \repeat unfold 3 { s8.\< s16\! s4\cresc s8.\> s16\! s8.\> s16\! | }
  s1\cresc |
  s1\ff |
  s2-\conForza s8.\< s16\! s4 |
  s8\sf s\p\< s2 s8. s16\! |
  s2.\< s8. s16\! |
  
  \barNumberCheck 49
  \revert DynamicTextSpanner.style
  s2. s4\cresc |
  s2. s4\! |
  \tag #'layout { s1 }
  \tag #'midi   { s1\f } |
  s1 * 2 |
  s2. s8.\f\> s16\! |
  s1\f |
  s1 |
  
  \barNumberCheck 57
  s1 * 2 |
  s2.\< s8. s16\! |
  s1 * 2 |
  s2\ff s4.\> s16 s\! |
  s2.\< s4\! |
  s2.\< s4\! |
  
  \barNumberCheck 65
  s2.\< s8. s16\! |
  \override DynamicTextSpanner.style = #'none
  s4 s2.\cresc |
  s1 |
  s4 s2\< s8. s16\! |
  s2 s2\ff\< |
  \dynamicPositionA s1\fff |
  s4\sf s2.-\ffConFuoco |
  s1 |
  
  \barNumberCheck 73
  s1 * 2 |
  s4 s8.\> s16\! s8.\> s16\! s8.\> s16\! |
  \repeat unfold 3 { s8.\> s16\! s8.\> s16\! s8.\> s16\! s8.\> s16\! | }
  s2 s\ff |
  s1 |
  
  \barNumberCheck 81
  s2. s8. \dynamicPositionB s16\ff |
  s1 |
}

% The music has two decrescendi on top of crescendi, which causes these 
% warnings.  They can be ignored.
#(ly:expect-warning "conflict with event: `decrescendo-event'")
#(ly:expect-warning "discarding event: `crescendo-event'")
#(ly:expect-warning "conflict with event: `decrescendo-event'")
#(ly:expect-warning "discarding event: `crescendo-event'")

etude-four-header = \header { }

etude-four-music = {
  \keepWithTag #'layout
  \new PianoStaff \with { instrumentName = \markup \huge "No. 4" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
  >>
}

etude-four-midi = \book {
  \bookOutputName "Fredric-Chopin-Etudes-Op10-No4"
  \score { 
    \keepWithTag #'midi
    << 
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
