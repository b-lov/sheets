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
  bes1 bes2 bes bes1 ges as ges4 f es des ges2 bes as2. as4
}

rightVoiceII = \relative c' \new Voice {
  \voiceTwo
}

leftVoiceI = \relative c \new Voice {
  % 1-4
  <ges des'>1 <ges des'>2 <ges des'> <es es'>1~ <es es'>
  <ces ces'> <des des'>2. <ces' des>4 <bes des>2 <ges es'> <des f'>1
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