% ragged-last-bottom = ##f
#(set-global-staff-size 16)

\paper {
  #(set-paper-size "a4")
}

\markup { \vspace #1 }

\header {
  title = \markup {
    \override #'(font-family . sans) "Impromptu Ges-Dur"
  }
  composer = \markup {
    \override #'(font-family . sans) "F. Schubert"
  }
  tagline = ##f
}

KEYTIME = {
  \key ges \major
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = \markup { \musicglyph #"timesig.C22" \musicglyph #"timesig.C22" }
  \time 4/2
}

rightVoiceI = \relative c'' \new Voice {
  \voiceOne
  % 1-4
  bes1 bes2 bes bes1 ges as ges4 f es des ges2 bes as2. a4
  % 5-8
  bes1 bes2 bes bes1 ges2 f es as ges4 f es f as1 ges
  % 9-12
  as bes des2. ces4 ces1 ces ces2 des fes2. es4 es1
  % 13-16
  es es4 ces bes as des1 des4 ces as es ges1 ges4 f bes as ges1 ges2 g
  % 17-20
}

rightVoiceII = \relative c' \new Voice {
  \voiceTwo
  \override TupletNumber.transparent = ##t
  \override TupletBracket.transparent = ##t
  \override NoteHead.color = #grey
  \override Stem.color = #grey
  \override Rest.color = #grey
  \override Beam.color = #grey
  \override Accidental.color = #grey
  \magnifyMusic 0.75 { 
    % 1-4
    \tuplet 6/4 {r8 bes des ges des bes} \tuplet 6/4 {des bes des ges des bes}
    \tuplet 6/4 {r bes des ges des bes} \tuplet 6/4 {r bes des ges des bes}
    \tuplet 6/4 {r bes es ges es bes} \tuplet 6/4 {es bes es ges es bes}
    \tuplet 6/4 {r ges bes es bes ges} \tuplet 6/4 {bes ges bes es bes ges}
    \tuplet 6/4 {r as ces es ces as} \tuplet 6/4 {ces as ces es ces as}
    \tuplet 3/2 {r as ces} \tuplet 3/2 {r as ces} \tuplet 3/2 {r as ces} \tuplet 3/2 {r f, as}
    \tuplet 6/4 {r ges bes des bes ges} \tuplet 6/4 {r c es ges es c}
    \tuplet 6/4 {r as des f des as} \tuplet 6/4 {des as des f des a}
    % 5-8
    \tuplet 6/4 {r8 bes des ges des bes} \tuplet 6/4 {des bes des ges des bes}
    \tuplet 6/4 {r bes des ges des bes} \tuplet 6/4 {r bes des ges des bes}
    \tuplet 6/4 {r bes es ges es bes} \tuplet 6/4 {es bes es ges es bes}
    \tuplet 6/4 {r ges bes es bes ges}
    \change Staff = "leftHand" \voiceOne
    \tuplet 6/4 {r f as d as f} \tuplet 6/4 {r es ges ces ges es}
    \change Staff = "rightHand" \voiceTwo
    \tuplet 6/4 {r as ces es ces as}
    \tuplet 3/2 {r ces as} \tuplet 3/2 {r ces as} \tuplet 3/2 {r ces as} \tuplet 3/2 {r ces as}
    \tuplet 6/4 {r ces des f des ces} \tuplet 6/4 {des ces des f des ces}
    \tuplet 6/4 {r ges bes des bes ges} \tuplet 6/4 {bes ges bes des bes ges}
    % 9-12
    \tuplet 6/4 {r as des f des as} \tuplet 6/4 {des as des f des as}
    \tuplet 6/4 {r des es g es des} \tuplet 6/4 {es des es g es des}
    \tuplet 6/4 {r des es as es des} \tuplet 6/4 {es des es as es ces}
    \tuplet 6/4 {r ces es as es ces} \tuplet 6/4 {es ces es as es ces}
    \tuplet 6/4 {r ces fes as fes ces} \tuplet 6/4 {fes ces fes as fes ces}
    \tuplet 6/4 {r ces es ges es ces} \tuplet 6/4 {r fes ges bes ges fes}
    \tuplet 6/4 {r fes ges ces ges fes} \tuplet 6/4 {ges fes ges ces ges es}
    \tuplet 6/4 {r es ges ces ges es} \tuplet 6/4 {ges es ges ces ges es}
    % 13-16
    \tuplet 6/4 {r es ges ces ges es} \tuplet 6/4 {ges es ges ces ges es}
    \tuplet 3/2 {r as f} \tuplet 3/2 {r as f} \tuplet 3/2 {r f des} \tuplet 3/2 {r f des}
    \tuplet 6/4 {r des ges bes ges des} \tuplet 6/4 {ges des ges bes ges des}
    \tuplet 3/2 {\once \hide NoteHead des' ges, es} \tuplet 3/2 {\once \hide NoteHead ces' [ges es]}
    \tuplet 3/2 {\once \hide NoteHead as es ces} \tuplet 3/2 {\once \hide NoteHead es [ces as]}
    \tuplet 6/4 {r ges bes des bes ges} \tuplet 6/4 {bes ges bes des bes ges}
    \tuplet 3/2 {\once \hide NoteHead ges' ces, as} \tuplet 3/2 {\once \hide NoteHead f' [ces as]}
    \tuplet 3/2 {\once \hide NoteHead bes' des, ces} \tuplet 3/2 {\once \hide NoteHead as' [des, ces]}
    \tuplet 6/4 {r ges bes des bes ges} \tuplet 6/4 {bes ges bes des bes ges}
    \tuplet 6/4 {r ges bes des bes ges} \tuplet 6/4 {r g bes des bes g}
 }
}

leftVoiceI = \relative c \new Voice {
  % 1-4
  <ges des'>1 <ges des'>2 <ges des'> <es es'>1~ <es es'>
  <ces ces'> <des des'>2. <ces' des>4 <bes des>2 <ges es'> <des f'>1
  % 5-8
  <ges des'> <ges des'>2 <ges des'> <es es'>1~
  \voiceTwo
  <es es'>2 <bes bes'> <ces ces'> <as as'>
  \oneVoice
  <des des'>1 <ges des'>~ <ges des'>
  % 9-12
  <des' f> <bes es g> <as es' as> <as es' as>
  <fes' as> <es ges>2 <des ges bes> <ces ges' ces>1 <ces ges' ces>
  % 13-16
  <ces ges'> << { as'2 f } \\ { ces1 } >> <bes ges'> << { ges'2 as } \\ { ces,1 } >>
  des1 << { \grace des,16 des'2 ges4 f } \\ { des1 } >> <ges, des'>1 <bes des>2 <bes des>2
}

theChords = \chords {
  % 1-4
  ges1 s es:m s as:m des:7 ges2 es:m6 des2. des4:aug
}

rightHand = {
 \clef treble
 \KEYTIME
 << \rightVoiceI \rightVoiceII >>
}

leftHand = {
 \clef bass
 \KEYTIME
 << \leftVoiceI >>
}

\score {
  \new PianoStaff << 
    \theChords
    \new Staff = "rightHand" << \rightHand >>
    \new Staff = "leftHand" << \leftHand >>
  >>

  \layout {
    \context {
      % \Score
      % \override SpacingSpanner.spacing-increment = #1.0
      % \override SpacingSpanner.shortest-duration-space = #1.4
  	  % \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
    }
  }
}