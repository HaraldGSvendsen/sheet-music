\header {
	copyright = ""
	title = "Musevisa"
	subtitle = "F-dur"
	composer = "Melodi: trad."
	arranger = ""
	instrument = ""
	opus = ""
	piece = ""
	poet = "Tekst: Alf Prøysen"
}

fkeyNotes = 
\relative c' {
	\key f \major
	\time 4/4
	\clef treble
	\context Voice = intro {
	% forspell
	 \skip2 r4 r8 
	} 
	\context Voice = vers { 
	c8
	c8 f8 a8 g8 f4 f8 f8
	f8 a8 c8 bes8 a4. a8
	g8 a8 bes8 g8 e8 c8 d8 e8
	f8 f8 e8 d8 c4. c8
	%
	c8 f8 a8 g8 f4 f8 f8
	f8 a8 c8 bes8 a4. a8
	g8 a8 bes8 g8 e8 c8 d8 e8
	f4 f4 f4 r4
	% hei san hop san
	d'4 bes8 bes8 d4 bes8 bes8
	c8 a8 f8 a8 c4. c8
	bes8 a8 g8 f8 e8 c8 d8 e8
	f8 g8 a8 bes8 c2
	%hei san hop san..
	d4 bes8 bes8 d4 bes8 bes8
	c8 a8 f8 a8 c4. c8
	bes8 a8 g8 f8 e8 c8 d8 e8
	f8 f8 f8 f8 f2
	}
}

sangVersEin = \lyricmode
{
	 \set stanza = #"1. "
	 Når net -- te -- ne blir lan -- ge
	 og kul -- da set -- ter inn
	 så si -- er ves -- le mu -- se -- mor
	 til un -- ge -- flok -- ken sin:
	 hvis ing -- en går i fel -- la, men
	 pas -- ser seg for den,
	  skal al -- le sam -- men snart få fei -- re jul i -- gjen.
	  Hei -- san, \skip8 hop -- san, og fal -- le -- ral -- le -- ra
	  om ju -- le -- kveld -- en da skal al -- le sam -- men væ -- re glad
	  Hei -- san, \skip8 hop -- san, og fal -- le -- ral -- le -- ra
	  om ju -- le -- kveld -- en da skal al -- le sam -- men væ -- re glad
	 %\set stanza = #"2. "
	 %Ja
}
sangVersTo = \lyricmode
{
	 \set stanza = #"2. "
}
chordNames = \chords{
	\skip2 \skip2 f1 \skip2 d2:7/fis g2:min c2 f4 g4:7 c2 
	f1 \skip4 c4:min/ees d2:7
	g2:min c2 f4 bes4/f f2
	bes2 c2:7 f2 d2:min7 g2:min7 c2:7 f2 f2:7
	bes2 c2:7 f2 d2:min7 g2:min7 c2:7 f4 bes4/f f2
}
fkeyChords = \relative c,, {
	\key f \major
	\time 4/4
	%\clef bass
	\chordmode{
		\skip2 \skip2 f,2 c,:7 f, c,:7 %intro
		f, c,:7 f, f,:7
		bes, c,:7 f, f,:7 bes, c,:7 
		f, d,:min g,:min7 c,:7
		f, \skip1
		% not sure how to enter c7 inverted
	}
	
}

\score {
%\transpose f g

\new PianoStaff
	<<
	%\set PianoStaff.instrumentName = #"Piano"
	\new ChordNames {\chordNames}
	\new Staff =upper {\clef treble \fkeyNotes}
	%\new Staff =lower {\fkeyChordsHgs}
	%\new ChordNames { \fkeyChords }
	\new Lyrics \lyricsto "vers" \sangVersEin
	%\new Lyrics \lyricsto "vers" \sangVersTo
	>>

  \layout {}
  \midi {}
}
