%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.1"
\language "english"

\include "Global.ily"
\include "articulate.ly"

legato = \markup \larger \italic "legato"
stretto = \markup \larger "stretto"
ten = \markup \italic "ten."
riten = \markup \larger "riten."
conForza = \markup \larger \italic "con forza"
sempreLegato = \markup \larger \italic "sempre legato"
rall = \markup \larger "rall."
animato = \markup \larger "poco più animato"
cres = \markup \larger \italic \whiteout "cresc."
conFuoco = \markup \larger \italic "con fuoca"
conBravura = \markup \larger \italic "con bravura"
legatissimo = \markup \larger \italic "legatissimo"
sempreP = \markup { \larger \italic "sempre" \dynamic p }
smorz = \markup \larger \italic "smorz."
pocoRall = \markup \larger "poco rall."
aTempo = \markup \larger "a tempo"
pocoCresc = \markup \larger \italic "poco cresc."
ritenTen = \markup \column { \larger "riten." \italic "ten" }

beamPositionShort = \override Beam.positions = #'(0.25 . 0)
beamPositionDefault = \revert Beam.positions

adjustDynA = \tweak Y-offset -4 \etc 
adjustDynB = \tweak Y-offset -4 \etc
adjustDynC = \tweak Y-offset -4 \etc
adjustDynD = \tweak Y-offset -3.5 \etc
adjustDynF = \tweak Y-offset -3.5 \etc
adjustDynG = \tweak Y-offset 4 \etc
adjustDynH = \tweak Y-offset 4 \etc
adjustDynI = \tweak Y-offset 5 \etc
adjustDynJ = \tweak Y-offset 6 \etc
adjustDynK = \tweak Y-offset 5.5 \etc
adjustDynL = \tweak Y-offset 5 \etc
adjustDynM = \tweak Y-offset 6.25 \etc
adjustDynN = \tweak Y-offset 3 \etc
adjustDynO = \tweak Y-offset -5.75 \etc 
adjustDynP = \tweak Y-offset -4.25 \etc
adjustDynQ = \tweak Y-offset -6 \etc
adjustDynR = \tweak Y-offset 2 \etc
adjustDynS = \tweak Y-offset 2 \etc
adjustDynT = \tweak Y-offset -4.5 \etc

global = {
  \time 2/4
  \key e \major
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \partial 8 b8^\legato\p
  e8\< ds16 e\! <ds fs>4~( |
  fs16[^\< gs]\! gs[^\> fs])\! gs4->~( |
  gs16[^\< a]\! a[^\> gs])\! cs8.->( b16 |
  a16 gs ds e) fs4->~( |
  fs16[ gs] gs[ fs]) e4-> |
  gs16( a fs gs a b gs a) |
  cs8 fs,4->^\stretto \slashedGrace as8 \slurUp gs16(^\> fs)\!~ | 
  fs8 \slashedGrace as8 gs16 fs <ds b'>4_>^\ritenTen |
  
  \barNumberCheck 9
  <e gs>8\< ds16 e\! <ds fs>4~( |
  fs16[^\< gs]\! gs[^\> fs])\! gs4->~( |
  gs16[^\< a]\! a[^\> gs])\! cs8.^\>( b16\! |
  a16 gs ds e) fs4->~( |
  fs16[^\< gs]\! gs[^\> fs])\! e4-> |
  b'16[( cs]) cs[( b]) a( b gs a) |
  ds16[(^\stretto e]) e[( ds]) cs( ds bs cs) |
  s2 | 
  
  \barNumberCheck 17
  <e gs>4~^\ten gs16 fs e cs |
  ds4^(^\ten e16) ds cs gs |
  b4^(^\ten cs16) b a e |
  gs2^>(^\rall |
  \grace { gs16 fs } e4)^\animato \tag #'midi { \tempo 8 = 100 }
    \oneVoice <gs e'>16^( <fs ds'> <gs e'> <ds b'> |
  <fs ds'>16 <e cs'> <fs ds'> <ds gs> \voiceOne b' as cs8 |
  \oneVoice \slashedGrace as8 <e gs>16 <ds fs> \slashedGrace as'8 <e gs>16
    <ds fs>) <gs e'>^( <fs ds'> <gs e'> <ds b'> |
  <fs ds'>16 <e cs'> <fs ds'> <ds gs> \voiceOne b' as cs8 |
  
  \barNumberCheck 25
  \oneVoice \slashedGrace as8 <e gs>16 <ds fs> \slashedGrace as'8 <e gs>16
    <ds fs>) <a' fs'>16( \adjustDynA \> <gs e'> <a fs'> <e cs'>\! |
  <gs e'>16 <fs ds'> <gs e'> <e as> \voiceOne cs' bs ds8 |
  \oneVoice \slashedGrace b8 <fs a>16 \adjustDynB \< <e gs> \slashedGrace b'8 
    <fs a>16 <e gs>)\! <a fs'>16( \adjustDynC \> <gs e'> <a fs'> <e cs'>\! |
  <gs e'>16 <fs ds'> <gs e'> <e as> \voiceOne cs' bs ds8 |
  \oneVoice \slashedGrace b8 <fs a>16 \adjustDynD \> <e gs> \slashedGrace b'8 
    <fs a>16 <e gs>\! \slashedGrace b'8 <fs a>16 \adjustDynF \< <e gs> <fs a> 
    <gs b>)\! |
  \voiceOne <a cs>8.( q16 <gs b>8. q16) | 
  <a c>8.( q16 <gs b>8. q16) |
  \oneVoice <cs, e b' cs>16-^ <cs' e>[( <g b>]) <b cs>[( <e g>]) <g b>[( 
    <cs, e>]) <e g>[( |
  
  \barNumberCheck 33
  <b' cs>]) <cs e>[( <g b>]) <b cs>[( <e g>]) <as,, g'>-.( <as fs'>-. 
    <as e'>-.) |
  \voiceOne <b ds>8.( q16 <as cs>8. q16) |
  <b d>8.( q16 <as cs>8. q16) | 
  \oneVoice <ds, fs cs' ds>16-^ <ds' fs>[( <a cs>]) <cs ds>[( <fs a>]) <a cs>[(
    <ds, fs>]) <fs a>[( |
  <cs' ds>16]) <ds fs>[( <a cs>]) <cs ds>[( <fs a>]) <bs,, a'>-.( <bs gs'>-.
    <bs fs'>-.) |
  \override Fingering.avoid-slur = #'inside
  <b es>16-. <gs d'>-2-5[( <g cs>-1-4 <c fs>-2-5] <b es>-1-4 <e as>-2-5 
    <ds a'>-1-4 <gs d'>-2-5 |
  <g cs>16-1-4) <g, cs>[( <fs c'> <b f'>] <as e'> <ds a'> <d gs> <g cs> |
  <fs c'>16) <fs, c'>[( <f b> <as e'>] <a ds> <d gs> <cs g'> <fs c'> |
  
  \barNumberCheck 41
  <f b>16 <as e'> <a ds> \ottava 1 <d gs> <cs g'> <fs c'> <es b'> <as e'> |
  <b ds>16-.) <ds, b'>[( <a fs'>]) \ottava 0 r r <ds,, b'>[( <a fs'>]) r |
  r16 <a e' fs a> <b e fs b> <c e fs c'> <b e fs b> <a e' fs a> <b e fs b>
    <c e fs c'> |
  <b ds fs b>16-^ \ottava 1 <a''' ds>[( <ds, b'>]) \ottava 0 r r <a, ds>[( 
    <ds, b'>]) r |
  r16 <a e' fs a> <b e fs b> <c e fs c'> <b e fs b> <a e' fs a> <b e fs b>
    <fs' c' e fs> |
  \override Beam.breakable = ##t
  <fs b ds fs>16 \tag #'midi { \tempo 8 = 120 }
    <d'' b'>[(_\conBravura <gs, f'>]) <f d'>[( <b gs'>]) <c a'>[(
    <fs,ds'>]) <ds c'>[( |
  <a' fs'>16]) <c a'>[( <fs, ds'>]) <f d'>[( <b gs'>]) <as g'>[( <e cs'>]) 
    <ds c'>[( |
  <a' fs'>16]) <c a'>[( <fs, ds'>]) <ds cs'>[( <a' fs'>]) <b gs'>[( <f d'>])
    <d b'>[( | 
  
  \barNumberCheck 49
  <gs f'>16]) <b gs'>[( <f d'>]) <e cs'>[( <as g'>]) <a fs'>[( <ds, c'>])
    <d b'>[( |
  <gs f'>16]) <b gs'>[( <f d'>]) <d b'>[( <gs f'>]) <a fs'>[( <ds, c'>])
    <c a'>[( |
  <fs ds'>16]) <a fs'>[( <ds, c'>]) <d b'>[(^\stretto <gs f'>]) <g e'>[( 
    <cs, as'>]) <c a'>[( |
  <fs ds'>16]) <f d'>[( <b, gs'>]) <as g'>[( <e' cs'>]) <as, g'>[( <e' cs'>])
    <a, g'>[( |
  <e' c'>16]) <as, fs'>[(^\riten <e' c'>]) <as, fs'>[( <e' c'>]) <a, fs'>[( 
    <e' c'>]) <a, fs'>[( |
  <ds b'>16]) \tag #'midi { \tempo 8 = 100 } r \voiceOne b16(^\legatissimo 
    gs b a fs8^>~ |
  fs8) b16( gs b a fs8^>~ |
  fs8) gs16( fs fs e cs8_>) |
  
  \barNumberCheck 57
  e16 ds gs_> fs fs e cs8_> |
  e16 ds8_> cs16 e ds8_> cs16 |
  e16 ds8_> cs16 e ds8_> cs16 |
  e16(^\smorz ds e ds e ds e ds |
  \tag #'midi { \tempo 8 = 85 }
  e16^\pocoRall ds e ds e ds cs ds) |
  \tag #'midi { \tempo 8 = 70 }
  e8^\aTempo ds16 e <ds fs>4~ |
  fs16[ gs] gs[ fs] gs4~( |
  gs16[ a]) a[( gs]) cs8. b16 |
  
  \barNumberCheck 65
  a16( gs ds e) fs4~ |
  fs16[ gs] gs[ fs] e4 |
  b'16[( cs]) cs[( b]) a b gs a |
  ds16[ e] e[ ds] cs^\stretto ds bs cs |
  s2 |
  <e gs>4~ gs16 fs e cs |
  ds4^> e16( ds cs gs) |
  b4^> cs16( b a e) |
  
  \barNumberCheck 73
  gs4_~( gs16 fs e c) |
  gs'4_~( gs16 fs e c) |
  \oneVoice
    <<
      { gs'2~ }
      { s4 \tag #'midi { \tempo 8 = 60 } s^\rall }
    >> |
  gs4~ gs16 fs^.^( e^. b^.) |
  e2\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \partial 8 s8
  s4 \hideNotes ds'~ \unHideNotes |
  ds8 ds e4 |
  gs,16 e' b e ds \adjustDynQ \> a' b, ds\! |
  b16\> e gs, b\! s4 |
  s2 |
  d16 e d e cs e cs e |
  cs16 e cs e b e b e |
  as,16 e' as, e' s4 |
  
  \barNumberCheck 9
  s4 \hideNotes ds~ \unHideNotes |
  ds8 ds e4 |
  gs,16\< e' b e\! ds a' b, ds |
  b16 e gs, b s4 |
  s2 |
  <d fs>16 <e gs> <d fs> <e gs> cs e cs e |
  <fs bs>16 gs <fs as> <gs bs> e gs e gs |
  <e as e'>^.^(^\riten <fs as fs'>^. <ds as' ds>^. <e as e'>^.
    <fs as fs'>^. <gs as gs'>^. <e as e'>^. <fs as fs'>^.) |
  
  \barNumberCheck 17
  gs16 b gs b gs \adjustDynT _\> b gs b\! |
  ds,16 fs ds fs e gs e gs |
  b,16 ds b ds cs e cs e |
  s2 * 2 |
  s4 e8 gs16 fs |
  s2 |
  s4 e8 gs16 fs |
  
  \barNumberCheck 25
  s2 |
  s4 fs8 a16 gs |
  s2 |
  s4 fs8 a16 gs |
  s2 |
  r16 <cs, e> <d fs>8~ q16 q <d e>8~ |
  q16 <c e> <d f>8~ q16 q <d e>8 |
  s2 |
  
  \barNumberCheck 33
  s2 |
  r16 <ds fs> <e gs>8~ q16 q <e fs>8~ |
  q16 <d fs> <e g>8~ q16 q <e fs>8 |
  s2 * 5 |
  
  \barNumberCheck 41
  s2 * 8 |
  
  \barNumberCheck 49
  s2 * 5 |
  s8 d16 e cs e a, e' |
  a,16 ds d e cs e a, e' |
  s2 |
  
  \barNumberCheck 57
  s2 * 5 |
  s4 \hideNotes ds~ \unHideNotes |
  ds8 ds e4 |
  gs,16\< e' b e\! ds \adjustDynO \> a' b, ds\! |
  
  \barNumberCheck 65
  b16 e gs, b s4 |
  s2 |
  <d fs>16 <e gs> <d fs> <e gs> cs e cs e |
  <fs bs>16 <gs bs> <fs as> <gs bs> e gs e gs |
  <e as e'>^.^( <fs as fs'>^. <ds as' ds>^. <e as e'>^.
    <fs as fs'>^. <gs as gs'>^. <e as e'>^. <fs as fs'>^.) |
  gs16 b gs b gs \adjustDynP _\> b gs b\! |
  ds,16 fs ds fs e\dim gs\! e gs |
  b,16 ds b ds cs e cs e |
  
  \barNumberCheck 73
  s2 * 5 |
}

rightHand = {
  \global
  \tag #'layout { \tempo "Lento ma non troppo" 8 = 100 }
  \tag #'midi { \tempo 8 = 72 }
  << { \rightHandUpper } \\ { \rightHandLower } >>
}

leftHandUpper = \relative {
  \override NoteColumn.ignore-collision = ##t
  \partial 8 d8\rest
  gs16 b gs b a b a b |
  a16 b a b gs b gs b |
  s2 |
  s4 <a cs>16 <b ds> <a cs> <b ds> |
  <a cs>16 <b ds> <a cs> <b ds> gs b gs b |
  s2 * 3 |
  
  \barNumberCheck 9
  gs16 b gs b a b a b |
  a16 b a b gs b gs b |
  s2 |
  s4 <a cs>16( <b ds> <a cs> <b ds> |
  <a cs>16 <b ds> <a cs> <b ds>) gs b gs b |
  s2 * 3 |
  
  \barNumberCheck 17
  s2 * 3 |
  gs16 b gs^\pp b gs b gs b |
  \crossStaff { gs4 } s4 |
  s2 * 3 |
  
  \barNumberCheck 25
  s2 * 5 |
  r16^\f e^\< e8~\! e16^\> e e8~\! |
  e16^\p e^\< e8~\! e16^\> e e8\! |
  s2 |
  
  \barNumberCheck 33
  s2 |
  s16 fs fs8~ fs16 fs fs8~ |
  fs16 fs fs8~ fs16 fs fs8 |
  s2 * 5 |
  
  \barNumberCheck 41
  s2 * 8 |
  
  \barNumberCheck 49
  s2 * 7 |
  a16^\sempreP ds a b gs b g^> b |
  
  \barNumberCheck 57
  fs16 b a b gs b g^> b |
  fs16 b g^> b fs^\dim b\! g^> b |
  fs16 b g^> b fs b g^> b |
  \autoBeamOff \crossStaff { fs16 b fs b fs cs' fs, cs' 
  fs,16 a fs a fs b fs b } |
  \autoBeamOn gs16 b gs b a b a b |
  a16 b a b gs b gs b |
  s2 |
  
  \barNumberCheck 65
  s4 <a cs>16 <b ds> <a cs> <b ds> |
  <a cs>16 <b ds> <a cs> <b ds> gs b gs b |
  s2 * 6 |
  
  \barNumberCheck 73
  gs16^\pp b gs b a c a \staffUp \stemDown c | \staffDown \stemUp
  gs16 b gs b a c a \staffUp \stemDown c | \staffDown \stemUp
  gs16 b gs b gs b gs b |
  gs16^\smorz b gs b gs b gs \staffUp \stemDown b | \staffDown \stemUp
  \crossStaff { gs2 } |
}

leftHandMiddle = \relative {
  \partial 8 s8
  e,4 b |
  b4 e |
  e4 b |
  e4 b |
  b4 e |
  e4 a |
  a4 b |
  cs4 a'16-1 b-1 a-1 b-1 |
  
  \barNumberCheck 9
  e,,4 b |
  b4 e |
  e4 b |
  e4 b |
  b4 e |
  e4 a |
  gs4 cs |
  s2 |
  
  \barNumberCheck 17
  s2 * 8 |
  
  \barNumberCheck 25
  s2 * 8 |
  
  \barNumberCheck 33
  s2 * 8 |
  
  \barNumberCheck 41
  s2 * 8 |
  
  \barNumberCheck 49
  s2 * 7 |
  s4. \voiceFour \beamPositionShort g'8[ |
  
  \barNumberCheck 57
  fs8] s s g[ |
  fs8] \beamPositionDefault g[ fs] \beamPositionShort g[ |
  fs8] g[ fs] \beamPositionDefault g[ |
  fs8] s s4 |
  s2 |
  \voiceThree e,4 b |
  b4 e |
  e4 b |
  
  \barNumberCheck 65
  e4 b |
  b4 e |
  e4 a |
  gs4 cs |
  s2 * 4 |
  
  \barNumberCheck 73
  s2 * 5 |
}

leftHandLower = \relative {
  \partial 8 s8
  e,16 b'8-> b16 b, b'8-> b16 |
  b,16 b'8-> b16 e, b'8-> b16 |
  e,16 b'8 b16 b, b'8 b16 |
  e,16 b'8 b16 b, b'8 b16 |
  b,16 b'8 b16 e, b'8 b16 |
  e,16 \adjustDynR ^\< e'8 e16 a, \adjustDynS ^\cresc e'8\! e16 |
  a,16 fs'8-> fs16 b, fs'8-> fs16 |
  cs16 fs8 fs16 b,-3 fs'8-1 fs16 |
  
  \barNumberCheck 9
  e,16 b'8 b16 b, b'8 b16 |
  b,16 b'8 b16 e, b'8 b16 |
  e,16 b'8 b16 b, b'8 b16 |
  e,16 b'8 b16 b, b'8 b16 |
  b,16 b'8 b16 e, b'8 b16 |
  e,16^\cresc e'8->\! e16 a, e'8 e16 |
  gs,16 gs'8 gs16 cs,^\cresc gs'8\! gs16 |
  <cs, e fs as>16^\conForza q q q <c e fs as> q q q |
  
  \barNumberCheck 17
  <b e gs b>2^\ff |
  fs'16^\sempreLegato b b, b' cs, gs' gs, gs' |
  ds16 gs gs, gs' a,^\dim e'\! e, e' |
  b16 e e, e' b e \set tieWaitForNote = ##t e,~ b'~ |
  <e, b' e>4 \oneVoice r |
  fs16-. as'-. fs,-. b'-. fs,-. cs''( b as) |
  b,16( fs' b) r r4 |
  fs,16-. as'-. fs,-. b'-. fs,-. cs''( b as) |
  
  \barNumberCheck 25
  b,16( fs' b) r r4 |
  gs,16-. bs' gs,-. cs'-. gs,-. ds''( cs bs) |
  cs,16( gs' cs) r r4 |
  gs,16-. bs' gs,-. cs'-. gs,-. ds''( cs bs) |
  cs,16-. gs' cs cs,-. b-. d'-. e,-. b-. |
  \voiceFour a8. e16 b'8. e,16 |
  a8. e16 b'8. e,16 |
  \oneVoice <g g'>16-^ <g' b>[( <cs e>]) \clef treble <e g>[( <cs ds>])
    <cs e>[( \adjustDynG ^\cresc <g' b>])\! <b cs>[( |
  
  \barNumberCheck 33
  <e, g>16]) <g b>[( <cs e>]) <e g>[( <b cs>]) \clef bass <fs, cs' e>-.( q-. 
    q-.) |
  b16^\f \voiceFour r fs16 fs, cs'8. fs,16 |
  b8.^\p fs16 cs'8. fs,16 |
  \oneVoice <a a'>16-^ \adjustDynH ^\f <a' cs>[( <ds fs>]) \clef treble 
    <fs a>[( <cs ds>]) <ds fs>[( \adjustDynI ^\cresc <a' cs>])\! <cs ds>[( |
  <fs, a>16]) <a cs>[( <ds fs>]) <fs a>[( <cs ds>]) \clef bass <gs, ds' fs>-.(
    q-. q-.) |
  <gs d' es>16 <f b>-1-4[^(^\< <e as>-2-5 <ds a'>-1-3]\! <d gs>-2-4^\cresc
    <cs g'>-1-3\! <c fs>-2-4 <b f'>-1-5 |
  <as e'>16-1-5-.) <e' as>-2-4[^(^\< <ds a'>-1-3 <d gs>-2-4] <cs g'>-1-3 
    <c fs>-2-4^\cresc <b f'>-1-5\! <as e'>-1-3 |
  <a ds>16-2-4) <ds a'>-1-3[(^\< <d gs>-2-4 <cs g'>-1-3] <c fs>-2-4 <b f'>-1-5
    <as e'>-1-3^\cresc <a ds>-2-4\! |
  
  \barNumberCheck 41
  <gs d'>16 \adjustDynJ ^\< <g cs> <fs c'> <f b> <e as> <ds a'> <d gs> 
    <cs fs>^\! |
  <b fs'>16-.) \adjustDynK ^\ff\sustainOn r r \clef treble <ds''' b'>[( 
    <a fs'>]) r r \clef bass <ds,, b'>[( |
  <a fs'>16]) \adjustDynL ^\<\sustainOff <c, c'>\! <b b'> \adjustDynM 
    ^\conForza <a a'> <b b'> <c c'> <b b'> <a a'> |
  <b b'>16-^\sustainOn r r \clef treble <fs'''' ds'>[( <b, a'>]) r r \clef bass 
    <fs, ds'>[( |
  <b, a'>16])\sustainOff <c, c'>^\conFuoco <b b'> <a a'> <b b'> <c c'> <b b'>
    <a a'> |
  \override Beam.breakable = ##t
  <b b'>16^\f \clef treble <d'' b'>[( <gs f'>]) <f d'>[( <b, gs'>]) <c a'>[( 
    <fs ds'>]) <ds c'>[( |
  <a fs'>16]) <c a'>[( <fs ds'>]) <f d'>[( <b,gs'>]) <as g'>[( <e' cs'>]) 
    <ds c'>[( |
  <a fs'>16]) <c a'>[( <fs ds'>]) <ds c'>[( <a fs'>]) <b gs'>[( <f' d'>]) 
    <d b'>[( |
  
  \barNumberCheck 49
  <gs, f'>16]) <b gs'>[( <f' d'>]) <e cs'>[( <as, g'>]) <a fs'>[( <ds c'>]) 
    <d b'>[( |
  <gs, f'>16]) <b gs'>[( <f' d'>]) <d b'>[( <gs, f'>]) <a fs'>[( <ds c'>])
    <c a'>[( |
  <fs, ds'>16])^\cresc <a fs'>[(\! <ds c'>]) <d b'>[( <gs, f'>]) <g e'>[( 
    <cs as'>]) <c a'>[( |
  <fs, ds'>16]) <f d'>[( <b gs'>]) <cs g'>[( \clef bass <e, cs'>]) <as g'>[(
    <e cs'>]) <as g'>[( |
  <e c'>16]) <as fs'>[( <e c'>]) <as fs'>[( <e c'>]) <a fs'>[(^\cresc 
    <e c'>])\! <a fs'>[( |
  <b, b'>16])^\sf r \voiceFour e8[^( \adjustDynN ^\p a,]) c^>[^( |
  b8]) \omit TupletBracket \tuplet 3/2 { e16[^( fs e) } a,8^^] c->[^( |
  b8]) b,[( e]) b'->[~ |
  
  \barNumberCheck 57
  b8] \tuplet 3/2 { b,16[( cs b } e8])-^ b'->[~ |
  b8] \tuplet 3/2 { e,16[( fs e } b8])-^ b'->[~ |
  b8] \tuplet 3/2 { e,16[( fs e } b'8])-^ r |
  r4 r8 \tuplet 3/2 { fs16( gs fs } |
  b,4) r |
  e16 b'8 b16 b, b'8 b16 |
  b,16 b'8 b16 e, b'8 b16 |
  e,16 b'8 b16 b, b'8 b16 |
  
  \barNumberCheck 65
  e,16 b'8 b16 b, b'8 b16 |
  b,16 b'8 b16 e, b'8 b16 |
  e,16^\pocoCresc e'8-> e16 a, e'8 e16 |
  gs,16^\cresc gs'8\! gs16 cs, gs'8 gs16 |
  <cs, e fs as>16^\< q q q\! <c e fs as>^\cresc q\! q q |
  <b e gs b>2^\f |
  fs'16 b b, b' cs, gs' gs, gs' |
  ds16 gs gs, gs' a, e' e, e' |
  
  \barNumberCheck 73
  b16 e e, e' c e e, e' |
  b16 e e, e' c e e, e' |
  b16 e e, e' b e e, e' |
  b16 e e, e' b e e, b'~ |
  <e, b'>2\fermata |
}

leftHand = <<
  \clef bass
  \global
  \new Voice { \voiceThree \leftHandUpper }
  \new Voice { \voiceThree \leftHandMiddle }
  \new Voice { \voiceFour \leftHandLower }
>>

% The music has a crescendo on top of a crescendo, which causes these warnings.
% They can be ignored.
#(ly:expect-warning "conflict with event: `crescendo-event'")
#(ly:expect-warning "discarding event: `crescendo-event'")

etude-three-header = \header { }

etude-three-music = {
  \keepWithTag #'layout
  \new PianoStaff \with { instrumentName = \markup \huge "No. 3" } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
}

etude-three-midi = \book {
  \bookOutputName "Fredric-Chopin-Etudes-Op10-No3"
  \score { 
    \articulate \keepWithTag #'midi
    << 
      \new Staff = "upper" \rightHand
      \new Staff = "lower" \leftHand
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