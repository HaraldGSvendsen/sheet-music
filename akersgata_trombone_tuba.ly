
% use \transposition key to get correct midi output
% for transposing instruments
% use \transpose k1 k2 to get correct printed music

\paper { 
	#(set-default-paper-size "a4" )
%	system-system-spacing #'padding = #6
}
\header {
	copyright = ""
	title = "Akersgata - trombone/tuba duett"
	subtitle = "Eb-dur" %etter transponering
	composer = "Johan Svendsen"
	arranger = ""
	poet = "Pegasus"
	opus = ""
	piece = ""
}
melTromboneC = \relative  {	
	\key c \major \time 2/4
	\tempo 4 = 110
%L1: 1.stemme
%L2: endre til 2.stemme (tuba 2)
%L3: 1.stemme
%L4: 2.stemme (tuba 1)
	r4 c8 d8 e4 e8 e8 e4 d8 c8 e2
	r4 d8 e8 f4 f8 f8 f4 e8 d8 f2 \break %L1 1
    r4 a,8 b8 c4 c8 c8 a4 a8 a8 g2 
	b4-. b4-.  a4 a8 a8 b4 b8 b8 g2 \break %L2 2

	r4 c8 d8 e4 e8 e8 e4 d8 c8 e2
	r4 d8 e8 f4 f8 f8 f4 e8 d8 f2 \break %L3 1
    r4 a,8 b8 c4 c8 c8 a4 a8 a8 g2
	b4-. b4-.  a4 a8 a8 b4 b8 b8 g2 \break %L4 2
	r2
	r4 c8 b8   a4. a8    a4 b8 c8  b4 b8 r8 
	r4 g8 g8   a4 a8 a8  a4 g8 f8  e4 r4 \break %L5 1
	r4 c'8 b8  a4 a4    a4 b8 c8  b4 b8 r8 
	r4 r8 g8   a4 c8 c8  c4 a8 c8  f2 %L6 1
    r4 d8 f8   a2 
}

melTubaC = \relative c' {
	\key c \major \time 2/4
    r4 a8 b8 c4 c8 c8 a4 a8 a8 g2 
    d'4-. d4-. c4 c8 c8 a4 a8 a8 a2 \break %L1 2       
	r4 c'8 d8 e4 e8 e8 e4 d8 c8 e2
	r4 b8 c8 d4 d8 d8 d4 c8 b8 c2 \break %L2 1
	
    r4 a,8 b8 c4 c8 c8 a4 a8 a8 g2  
    d'4-. d4-. c4 c8 c8 a4 a8 a8 a2 \break %L3 2
	r4 c'8 d8 e4 e8 e8 e4 d8 c8 e2
	r4 b8 c8 d4 d8 d8 d4 c8 b8 c2 \break %L4 1
	f,4-. f4-. %r2 %fyllinnpause r4 
	c4   c8 c8   a4. a8    a4 a8 a8  b4 b8 r8 %fylinnpause
	b4-. b4-.    a4 a8 a8  a4 a8 a8  g4 g4-. \break %L5 2
	g4-. b8 b8  c4 c4    a4 a8 a8  b4 b8 r8 % fyllinnpause
	b4-. b4-.   c4 c8 c8  c4 a8 a8  a2 %L6 2
    a4-. d4-. f,2 
	}

melodiC = \relative c' {
	\key c \major \time 2/4
	\tempo 4 = 110
	\context Voice=vers{
	r4 c8 d8 e4 e8 e8 e4 d8 c8 e2
	r4 d8 e8 f4 f8 f8 f4 e8 d8 f2 \break
	r4 c8 d8 e4 e8 e8 e4 d8 c8 e2
	r4 b8 c8 d4 d8 d8 d4 c8 b8 c2 \break
	
	r4 c8 d8 e4 e8 e8 e4 d8 c8 e2
	r4 d8 e8 f4 f8 f8 f4 e8 d8 f2 \break
	r4 c8 d8 e4 e8 e8 e4 d8 c8 e2
	r4 b8 c8 d4 d8 d8 d4 c8 b8 c2 \break
	}
	r2
	\context Voice=refr {
	% men i akersgata der skriv dem
	% du har krav p?? ?? bli informert
	% men det e ingen som tr??ng ?? vesta
	% n??r kronprinsen e deprimert
	r4 c8 b8   a4. a8    a4 b8 c8  b4 b8 r8
	r4 g8 g8   a4 a8 a8  a4 g8 f8  e4 r4
	r4 c'8 b8  a4 a4    a4 b8 c8  b4 b8 r8
	r4 r8 g8   a4 c8 c8  c4 a8 c8  f2
    r4 d8 f8   a2 
%mel2:
%	r4 c8 c8   a4. a8    a4 a8 a8  b4 b8 r8
%	r4 b8 b8   a4 a8 a8  a4 a8 a8  e4 g4 \break
%	r4 b'8 b8  c4 c4    a4 a8 a8  b4 b8 r8
%	r4 r8 b8   c4 c8 c8  c4 a8 a8  a2
	}
}


melodiToC = \relative c' {
	\key c \major \time 2/4
    r4 a8 b8 c4 c8 c8 a4 a8 a8 g2 %eller siste p?? c?   
    r4 d'8 d8 c4 c8 c8 a4 a8 a8 a2        
    r4 a8 b8 c4 c8 c8 a4 a8 a8 g2 % som f??rste
	r4 b8 b8 a4 a8 a8 b4 b8 b8 g2 
	
    r4 a8 b8 c4 c8 c8 a4 a8 a8 g2  
    r4 d'8 d8 c4 c8 c8 a4 a8 a8 a2        
    r4 a8 b8 c4 c8 c8 a4 a8 a8 g2
	r4 b8 b8 a4 a8 a8 b4 b8 b8 g2 
    %ref:
	r2
	r4 c8 c8   a4. a8    a4 a8 a8  b4 b8 r8
	r4 b8 b8   a4 a8 a8  a4 a8 a8  g2
	r4 b8 b8  c4 c4    a4 a8 a8  b4 b8 r8
	r4 r8 b8   c4 c8 c8  c4 a8 a8  a2
    r2 r2 
%refr mel1:
%	r4 c8 b8   a4. a8    a4 b8 c8  b4 b8 r8
%	r4 g8 g8   a4 a8 a8  a4 g8 f8  e4 r4
%	r4 c'8 b8  a4 a4    a4 b8 c8  b4 b8 r8
%	r4 r8 g8   a4 c8 c8  c4 a8 c8  f2
	}
   
besifringCsimpel = \chords {
	\skip2 c2 a:m c~ d:m f d:m f
	a:m c a:m c g d:m g c
	a:m c a:m c d:m f d:m f
	a:m c a:m c g d:m g c
	a:m 
	%refr:
	f a:m f g g d:m f e:m 
	a:m f f g g d:m f d:m 
    d:m g 
}
% for Trombone - Freya:
bassC = \relative c' { \key c \major \time 2/4
%bytt ut F med A (ters)
    r2 c a c  d c d c \break
	a c a c  g d' g, c \break
	a c a c  d c d c \break
	a c a c  g d' g, c \break
	a
	f a f g g d' a g \break
	a f f g g d' a d 
    d c8 c4. 
}

harmLCutenF = \relative c' { \key c \major \time 2/4
%bytt ut F med A (ters)
    r2 c c c  a a a a \break
	a c c c  c d d c \break
	c c c c  c a a a \break
	a c c c  c d d c \break
	c
	a a a g g a a e \break
	a a a g g a a d 
    d g, g4 c4 c2
%	r4 d8 f8 a2 r2 r2 % og ferfert!
}
harmLC = \relative c' { \key c \major \time 2/4
    r2 c c c  c f, f f
	f c' c c  c d d c
	c c c c  c f, f f
	f c' c c  c d d c
	c
	f, f f g g f f e
	f f f g g f f d 
%    d g g4 c4, c2
	r4 d8 f8 a2 r2 r2 % og ferfert!
}
harmMC = \relative c {\key c \major \time 2/4
    r2 e e e e a, a a
	a e' e e e f f e
	e e e e e a, a a
	a e' e e e f f e
	e
	a, a a b b a a g
	a a a b b a a f' 
    % og ferfert
	r4 d8 f8 a2 r2 r2
    

}
harmHC = \relative c' {\key c \major \time 2/4
    r2 g g g g c, c c 
	c g' g g g a a g 
	g g g g g c, c c
	c g' g g g a a g
	g
	c, c c d d c c b
	c c c d d c c a' 
    a r2 r2 r2
}
akkorderC = \relative c{\key c \major \time 2/4
%C = ceg
%F = cfa
	r2 <c e g>2 <c e g> <c e g>
	<c e g> <c f a> <c f a> <c f a>
	<c f a> <c e g> <c e g> <c e g>
	<c e g> <d f a> <d f a> <c e g>
	<c e g> <c e g> <c e g> <c e g>
	<c e g> <c f a> <c f a> <c f a>
	<c f a> <c e g> <c e g> <c e g>
	<c e g> <d f a> <d f a> <c e g>
	
	<c e g>
	
	<a c f> <a c f> <a c f> %acf=F
	<b d g> <b d g> <a c f> <a c f> <e g b>
	<a c f> <a c f> <a c f>	<b d g> <b d g>
	<a c f> <a c f> <d f a> <d f a>
}
akkHC = \relative c {
	r2 g2 g g g a a a
	a g g g g a a g
	g g g g g a a a 
	a g g g g a a g 
	g
	f f f
	g g f f b
	f f f g g
	f f a a
}
akkMC = \relative c {
	r2 e2 e e e f f f
	f e e e e f f e
	e e e e e f f f 
	f e e e e f f e
	e
	c c c
	d d c c g
	c c c d d
	c c f f
}
akkLC = \relative c {
	r2 c2 c c c c c c
	c c c c c d d c
	c c c c c c c c
	c c c c c d d c
	c
	a a a
	b b a a e
	a a a b b
	a a d d
}

sang = \lyricmode
{
	\set associatedVoice = "melodi"
	\set stanza = #"1."
	Det e langt i fr?? bak -- kar og berg
	ut -- med ha -- vet og heilt inn te by???n.
	Der e grev -- ling og slag -- bj??nn og verg,
	kan -- skje sn?? -- fokk, \skip4 tord -- v??r og lyn.
	I eit land som e lang -- strakt og smalt
	blir det langt i fra nord og te s??r.
	Om ein syns det e fuk -- tig og kaldt
	e det tryg -- gast ?? ha det som f??r.
}
sangRef = \lyricmode
{
	\set stanza = #"Ref:"
	Men i A -- kers -- ga -- ta der skriv d??m:
	du har krav p?? ?? bli in -- for -- mert.
	Men det-e in -- gen som tr??ng ?? ves -- ta
	N??r kron -- prin -- sen e dep -- ri -- mert, 
	(og fer -- fert)
}

\score {
% Baryton: Eb eller F er ok (Bb for h??g eller lav)
%\transpose c ees % Eb-dur
\transpose c ees % Eb-dur
<<
	\new ChordNames 
%		\with {midiInstrument = #"acoustic grand"} 
%		{\besifringCsimpel}

%	\new Staff=melodi 
%		\with {midiInstrument = #"acousti grand"
%			midiMinimumVolume = #0.0
%			midiMaximumVolume = #0.0
%            instrumentName=#"Piano 1" 
%            shortInstrumentName=#"Pno.1"
%		} \melodiC

%	\new Staff
%		\with {midiInstrument = #"acoustic grand"
%			%midiMinimumVolume = #0.0
%			%midiMaximumVolume = #0.0 
%            instrumentName=#"Piano 2" 
%            shortInstrumentName=#"Pno.2"
%		} {\melodiToC }

%	\new ChordNames 
%		\with {midiInstrument = #"acoustic grand"} 
%		{\transpose ees c \besifringC}
%	\new Staff {\transpose ees c \besifringC }




	\new Staff=trombone
		\with {instrumentName=#"Trombone" 
            shortInstrumentName=#"Tro"	
            midiMinimumVolume = #0.5 
            midiMaximumVolume = #0.7 
            midiInstrument = #"trombone"} 
      {\clef F \transpose c c  \melTromboneC}
	\new Staff=tuba
		\with {instrumentName=#"Tuba" 
            shortInstrumentName=#"Tub"	
			midiMinimumVolume = #0.7
			midiMaximumVolume = #1.0 
			midiInstrument = #"tuba"} 
		{\clef F %\transposition ees \transpose ees, c 
    \transpose c' c,  \melTubaC}
%	\new Staff=trombone
%		\with {instrumentName=#"Trombone 1" 
%            shortInstrumentName=#"Tbn 1"	
%            midiMinimumVolume = #0.5 
%            midiMaximumVolume = #1.0 
%            midiInstrument = #"trombone"} 
%      {\clef F \transpose c' c  \melodiC}
%	\new Staff=tubaA
%		\with {instrumentName=#"Tuba 1" 
%            shortInstrumentName=#"Tba 1"	
%			midiMinimumVolume = #0.5
%			midiMaximumVolume = #1.0 
%			midiInstrument = #"tuba"} 
%		{\clef F \transpose c'' c  \melodiC}
%	\new Staff=tuba
%		\with {instrumentName=#"Tuba 2" 
%            shortInstrumentName=#"Tba 2"	
%			midiMinimumVolume = #0.5
%			midiMaximumVolume = #1.0 
%			midiInstrument = #"tuba"} 
%		{\clef F %\transposition ees \transpose ees, c 
%    \transpose c' c,  \melodiToC}
%\new Lyrics \lyricsto "vers" \sang 
%\new Lyrics \lyricsto "refr" \sangRef
>>
\layout {}
\midi { }
}
