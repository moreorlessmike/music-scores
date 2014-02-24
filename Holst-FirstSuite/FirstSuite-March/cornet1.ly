%Last updated 2014-02-23 21:34 Pacific time
%Created 2014-02-23 21:34 PST
%
%Released under the terms of the Creative Commons Attribution-ShareAlike 4.0 International license.
%This means you can freely use this work and derive from it so long as you give me attribution
%and you share under the same license.
%The details of the license are at http://creativecommons.org/licenses/by-sa/4.0/deed.en_US
%
%Contact me at mikemoral at live dot com.

\version "2.14.2"

\header {
  title = "First Suite in E-flat"
  subtitle = "III. March"
  composer = "Gustav Holst"
  copyright = "©2014 M. Morales under the terms of the Creative Commons ShareAlike Attribution 4.0 license"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key f \major
  \time 2/2
}

trumpetBb = \relative c'' {
  \global
  \transposition bes
  % Music follows here.
  \compressFullBarRests
  r4 f4-.-\ff e-. a,-.
  R1*2
  r2 a->-\mf
}

\score {
  \new Staff \with {
    instrumentName = "Trumpet in Bb"
    midiInstrument = "trumpet"
  } \trumpetBb
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}