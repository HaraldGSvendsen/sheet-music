% LilyBin

% use \transposition key to get correct midi output
% for transposing instruments
% use \transpose k1 k2 to get correct printed music

\version "2.18.2"
\paper { 
	#(set-default-paper-size "a4" )
%	system-system-spacing #'padding = #6
}
\header {
	copyright = ""
	title = "Akersgata"
	subtitle = "Eb-dur" %etter transponering
%	instrument = "euphonium"
%	instrument = "piano"
	composer = "Johan Svendsen"
	arranger = ""
	poet = "Pegasus"
	opus = ""
	piece = ""
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
	% du har krav på å bli informert
	% men det e ingen som trøng å vesta
	% når kronprinsen e deprimert
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
    r4 a8 b8 c4 c8 c8 a4 a8 a8 g2 %eller siste på c?   
    r4 d'8 d8 c4 c8 c8 a4 a8 a8 a2        
    r4 a8 b8 c4 c8 c8 a4 a8 a8 g2 % som første
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

besifringC = {\chordmode { 
    %\clef treble 
	\key c \major \time 2/4
	\skip2 
       c2 a:m/c c d:m f/c d:m f/c
	a:m/c c a:m/c c g/b d:m g/b c
	a:m/c c a:m/c c d:m f/c d:m f/c
	a:m/c c a:m/c c g/b d:m g/b c
	a:m/c 
	%refr:
	f/c a:m/c f/c g/b g/b d:m f/c e:m/b 
	a:m/c f/c f/c g/b g/b d:m f/c d:m 
    d:m g/b g4/b c4 c2
}}
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
	Det e langt i frå bak -- kar og berg
	ut -- med ha -- vet og heilt inn te by’n.
	Der e grev -- ling og slag -- bjønn og verg,
	kan -- skje snø -- fokk, \skip4 tord -- vær og lyn.
	I eit land som e lang -- strakt og smalt
	blir det langt i fra nord og te sør.
	Om ein syns det e fuk -- tig og kaldt
	e det tryg -- gast å ha det som før.
}
sangRef = \lyricmode
{
	\set stanza = #"Ref:"
	Men i A -- kers -- ga -- ta der skriv dæm:
	du har krav på å bli in -- for -- mert.
	Men det-e in -- gen som trøng å ves -- ta
	Når kron -- prin -- sen e dep -- ri -- mert, 
	(og fer -- fert)
}

\score {
% Baryton: Eb eller F er ok (Bb for høg eller lav)
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
		\with {instrumentName=#"Trombone 1" 
            shortInstrumentName=#"Tbn 1"	
            midiMinimumVolume = #0.5 
            midiMaximumVolume = #1.0 
            midiInstrument = #"trombone"} 
      {\clef F \transpose c' c  \melodiC}
	\new Staff=tubaA
		\with {instrumentName=#"Tuba 1" 
            shortInstrumentName=#"Tba 1"	
			midiMinimumVolume = #0.5
			midiMaximumVolume = #1.0 
			midiInstrument = #"tuba"} 
		{\clef F \transpose c'' c  \melodiC}
	\new Staff=tuba
		\with {instrumentName=#"Tuba 2" 
            shortInstrumentName=#"Tba 2"	
			midiMinimumVolume = #0.5
			midiMaximumVolume = #1.0 
			midiInstrument = #"tuba"} 
		{\clef F %\transposition ees \transpose ees, c 
    \transpose c' c,  \melodiToC}
\new Lyrics \lyricsto "vers" \sang 
\new Lyrics \lyricsto "refr" \sangRef
%
%	\new Staff=saxA
%		\with {instrumentName=#"Saxofon 1" 
%			shortInstrumentName=#"Sax.1"
%			midiInstrument=#"alto sax"
%            midiMinimumVolume = #0.0
%			midiMaximumVolume = #0.7 
%            } 
%		{\transposition ees \transpose ees, c \melodiC}
%	\new Staff=saxB
%		\with {instrumentName=#"Saxofon 2" 
%			shortInstrumentName=#"Sax.2"
%			midiInstrument=#"alto sax" 
%			midiMinimumVolume = #0.0
%			midiMaximumVolume = #0.6 
%			}
%		{\transposition ees \transpose ees, c \melodiToC }%\harmMC}
%
%	\new Staff=trombone
%		\with {instrumentName=#"Trombone" 
%        shortInstrumentName=#"Tromb."
%		midiInstrument=#"trombone"} 
%		{\clef F \transpose c' c \bassC}
>>
\layout {}
\midi { }
}
