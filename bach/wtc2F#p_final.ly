% LilyBin
\version "2.18.2"

#(set-global-staff-size 16)

\paper {
  print-page-number = false
  ragged-last-bottom = ##f
}

\markup { \vspace #1 }

\header {
  title = "Praeludium XIII"
  opus = "BWV 882"
  tagline = ##f
}

upper = \relative c'' {
  \clef treble
  \key fis \major
  \time 3/4
  cis8.*5/6 b32 ais gis \appoggiatura gis16 fis4. r16 fis'
  eis8. fis32 gis cis,4. r16 fis
  b,8.[ dis16 gis,8. b16 eis,8. cis'16]
  ais16 cis fis, gis ais fis cis' ais fis ais gis fis
  gis cis eis, fis gis eis cis'gis eis gis fis eis
  fis ais dis, eis fis dis ais' fis dis fis eis dis
  eis gis cis, dis eis cis gis' eis cis b' ais gis
  ais cis fis, gis ais fis cis' ais fis gis fis eis
  dis ais' dis, eis fisis dis ais' fisis dis cis' bis ais
  bis dis gis, ais bis gis dis' bis gis ais gis fis
  eis bis' eis, fisis gisis eis bis' gisis eis dis' cis bis
  cis8. ais16 fis'4~ fis8.*5/6 eis32 dis cis
  dis8. bis16 gis'4~ gis8.*5/6 fis32 eis dis
  eis8. cis16 ais'8.*5/6 gis32 fis eis dis8. fis16
  \appoggiatura cis bis8.*5/6 dis32 eis fis gis8.[ bis,16 cis8. gis16]
  ais8.*5/6 gis32 fis eis dis8.[ cis'16 gis8. bis16]
  cis gis cis dis eis cis gis' eis cis eis dis cis
  dis gis gis, ais bis gis dis' bis gis fis' eis dis
  cis gis cis dis eis cis gis' eis cis b' ais gis
  fis8.*5/6 b,32 ais gis fis4. r16 fis'
  eis8. fis32 gis cis,4~ cis16 dis cis b
  ais8.\prall gis32 fis e'8.[ cis16 ais8. e'16]
  dis fis b, cis dis b fis' dis b dis cis b
  cis fis ais, b cis ais fis' cis ais cis b ais
  b dis gis, ais b gis dis' b gis b ais gis
  ais8. cis16 cis8.\prall bis32 cis cis8.\prall bis32 cis
  gis8. cis16 cis8.\prall bis32 cis cis8.\prall bis32 cis
  fis,8.[ cis'16 ais'8. cis,16 bis8.\prall cis16]
  cis4. r32 cis dis eis eis8.\prall dis32 eis
  fis16 cis fis, gis ais fis cis' ais e gis fis e
  dis4. r32 dis'32 cisis dis dis8.\prall cisis32 dis
  eis16 b eis, fis gis eis b' gis dis fis eis dis
  cisis8. dis32 eis ais,4~ ais16 gis'fis eis
  dis fis ais fis dis' ais fis' dis ais dis cisis bis
  cisis eis ais, bis cisis ais gis' eis cisis b'! ais gis
  fis ais dis, eis fis dis ais' fis dis fis eis dis
  eis ais ais, bis cisis ais eis' cisis ais gis' fis eis
  fis8. cisis16 dis8.*5/6 fis,32 eis dis gisis8.\prall fisis32 gisis
  ais16 eis ais bis cis ais eis' cis ais' gis fis eis
  dis cisis dis8 r r32 dis eis fisis gis8. gis16
  gis eis cisis dis eis cisis gis b! \appoggiatura dis, cisis8. b'16
  ais8.*5/6 gis32 fis eis dis4. r16 dis'
  \appoggiatura dis8 cisis8.*5/6 dis32 eis fis gis4. r16 ais
  \appoggiatura gis8 fis8. eis16 \appoggiatura dis8 cisis4.\downprall dis8
  dis16 ais fis gis ais fis dis' ais fis gis fis eis
  fisis dis' fisis, gis ais fisis dis' ais fisis ais gis fisis
  gis dis' gis, ais b gis dis' b gis b ais gis
  ais16 dis ais b cis ais e' cis ais cis b ais
  b8. fisis16 gis8. b 16 dis8.*5/6 gis32 fis! eis
  fis8. fisis,16 gis8. bis16 dis8.*5/6 fis!32 eis dis
  \set Staff.extraNatural = ##f
  eis8. fisis,16 gis8. cis16 eis8.*5/6 gis,32 fis eis
  fis8.[ ais16 dis,8. cis'16] bis8.\prall ais32 bis
  cis16 gis eis fis gis eis cis' gis eis fis eis dis
  cis gis' eis fis gis eis cis'gis eis gis fis eis
  fis cis' fis, gis ais fis cis' ais fis ais gis fis
  gis cis gis ais b gis dis' b gis b ais gis
  ais cis32 b ais gis fis eis fis4. r16 fis'
  eis8. fis32 gis cis,4. r16 fis
  b,8.[ dis16 gis,8. b16 eis,8. cis'16]
  ais cis fis, gis ais fis cis' ais fis e' dis cis
  dis fis b, cis dis b fis' dis ais cis b ais
  gis dis' gis, ais bis gis dis' bis gis fis' eis dis
  eis gis cis, dis eis cis gis' eis b! dis cis b
  ais eis' ais, bis cisis ais eis' cisis ais gis'fis eis
  fis8. dis16 b'4~ b8.*5/6 ais32 gis fis
  gis8. b16 cis,4~ cis8.*5/6 dis64 eis fis32 gis
  ais8. gis16 \appoggiatura fis8 eis4.\prallprall fis8
  fis16 ais cis, eis fis cis ais' fis cis gis'fis eis
  fis cis ais b cis ais fis' cis ais b ais gis
  fis a bis, eis fis bis, a' fis bis, gis' fis eis
  fis a cis b a cis fis, a cis a cis eis
  fis a dis, eis fis dis a' fis dis fis eis dis
  << {<eis gis>4 r8 r16 eis16 fis16. eis64 dis cis32 b ais gis} \\ 
     {<gis cis>4 r8 r16 <gis cis>16 <fis cis'> r r8} >>
  << {fis8. dis'16 fis,4( eis8.\prall) fis16} \\ 
     {r8 r16 fis cis2} >>
  <ais cis fis>2.
 }

lower = \relative c {
  \clef bass
  \key fis \major
  \time 3/4
  fis8.[ gis16 ais8. gis16 ais8. fis16]
  cis'8.[ b16 ais8. dis16 cis8. dis16]
  gis,8.[ ais16 b8. gis16 cis8. cis,16]
  fis8.[ cis'16 cis8. cis16 ais8. cis16]
  eis,8.[ cis'16 cis8. cis16 gis8. cis16]
  dis,8.[ cis'16 cis8. cis16 fis,8. bis16]
  cis,8. gis'32 ais b!8.[ gis16 eis8. cis16]
  fis8. cis16 fis,4 r
  fisis'8. ais32 bis cis8.[ ais16 fisis8. dis16]
  gis8. dis16 gis,4 r
  gisis'8. bis32 cis dis8.[ bis16 gisis8. eis16]
  ais4~ ais8.*5/6 ais32 bis cis dis8. fis16
  bis,4~ bis8.*5/6 cis32 bis ais bis8. gis16
  cis cis, dis eis fis fis, fis' eis fis fis, fis' eis
  fis4~ fis8.*5/6 dis32 eis fis eis8.*5/6 cis32 dis eis
  fis8. dis16 gis8.*5/6 ais32 gis fis gis8. gis,16
  cis8.*5/6 eis32 dis cis gis'4. r16 cis
  bis8. cis32 dis gis,4~ gis16 ais gis fis
  eis8. dis32 cis b'!8.[ gis16 eis8. b'16]
  ais cis fis, gis ais fis cis' ais fis ais gis fis
  gis cis cis, dis eis cis gis' eis cis b' ais gis
  fis cis fis gis ais fis cis' ais fis e' dis cis
  b8.[ fis16 fis8. b16 dis8. fis,16]
  ais8.[ fis16 fis8. ais16 cis8. fis,16]
  gis8.[ fis16 fis8. gis16 b8. eis,16]
  fis cis' fis, gis ais fis cis' ais fis ais gis fis
  eis cis' eis, fis gis eis cis' gis eis gis fis eis
  dis cis' dis, eis fis dis cis' fis, dis fis eis dis
  cis cis' cis, dis eis cis gis' eis b dis cis b
  ais4. r32 fis' gis ais ais8.\prall gis32 ais
  b16 fis b, cis dis b fis' dis ais cis b ais
  gis4. r32 gis' fisis gis gisis8.\prall fisis32 gisis
  ais16 eis ais, bis cisis ais eis' cisis gis b ais gis
  fis8.[ ais'16 ais8. fis16 fis8. dis16]
  eis,8.[ ais'16 ais8. eis16 eis8. cisis16]
  dis,8.[ ais''16 ais8. dis,16 dis8. bis16]
  cisis,8.[ ais''16 ais8. cisis,16 cisis8. ais16]
  dis ais' dis, eis fis dis ais' fis dis fis eis dis
  cis ais' cis, dis eis cis ais' eis cis eis dis cis
  b ais' b, cis dis b gis' dis b dis cis b
  ais ais' ais, bis cisis ais eis' cisis gis b ais gis
  fis ais dis eis fis dis fis gis ais fis b b 
  b4~ b8.*5/6 ais32 gis fis eis8. cisis'16
  dis8. gis,16 ais8.*5/6 b32 ais gis ais8. ais,16
  dis8.[ dis'16 dis8. dis16 ais8. dis16]
  cis,8.[ dis'16 dis8. dis16 ais8. dis16]
  b,8.[ dis'16 dis8. dis16 b8. dis16]
  fisis,8.[ dis'16 dis8. dis16 cis8. dis16]
  gis, dis gis, ais b gis dis' b gis' cis, bis ais
  bis gis' bis, cis dis bis gis' dis bis dis cis bis
  cis gis' cis, dis eis cis gis' eis cis eis dis cis
  dis gis dis eis fis dis ais' fis dis fis eis dis
  eis gis cis gis eis gis cis, eis gis cis, gis' ais
  b8.*5/6 cis32 b ais b4~ b8.*5/6 gis32 ais b
  ais16 fis ais gis fis ais cis, fis ais fis gis ais
  eis8. cis'16 cis,8.*5/6 cis32 dis eis eis8.\prall dis32 eis
  fis8.[ gis16 ais8. gis16 ais8. fis16]
  cis'8.[ b16 ais8. dis16 cis8. dis16]
  gis,8.[ ais16 b8. gis16 cis8. cis,16]
  fis8. e32 dis e8.[ cis16 ais8. fis16]
  b8. fis'16 b4 r
  bis,8. dis32 eis fis8.[ dis16 bis8. gis16]
  cis8. gis'16 cis4 r
  cisis,8. eis32 fis gis8.[ eis16 cisis8. ais16]
  dis4~ dis8.*5/6 dis32 eis fis gis8. b16
  eis,4~ eis8.*5/6 fis32 eis dis eis8. cis16
  fis8. b16 cis8.*5/6 gis32( ais b) << {\mergeDifferentlyDottedOn cis,8. b'16} \\ {cis,4} >>
  << {ais'8.} \\ {fis8.[ cis'16 cis8. cis16 ais8. cis16]} >>
  e,8.[ cis'16 ais8. e16 e8. dis16]
  dis8.[ a'16 a8. a16 fis8. a16]
  cis,8.[ eis16 fis8. cis16 cis8. bis16]
  bis8.[ bis'16 bis8. dis16 gis,8. fis16]
  << {eis4} \\ {b!4 } >> r8 r16 b'16 ais8 r
  << {r r16 ais gis8. ais16 b!4} \\ {r8 r16 bis, cis2} >>
  fis,2.
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    \context {
      \Score
	  \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16)
    }
  }
  % \midi { }
}
