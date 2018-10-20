timeKey = {
  \key g \minor
  \time 6/8
  \tempo 4 = 160
}

firstPart = {
  d''4 bes'' ees'' |
  ees'' d''2 |
  cis''4 bes'' e''8 f'' |
  fis''8 d'' bes' d'' fis' g' |
  r8 ees''16 d'' ees''8 c''16 b' c''8 d' |
  e'8 fis' g'4 f'' |
  ees''4 bes'' cis''8 d'' |
  ees''4 c'' a' |
  bes'4 d' b' |
  c''4 g' g''

}

secondPart = {
  g8 bes d' fis a c' |
  bes8 c' a bes fis f |
  e8 bes fis' cis' c' b |
  bes4 d' ees' |
  c'4 a fis |
  bes4 ees8 b d' c' |
  g8 bes c ees bes b |
  c'8 bes a g f ees |
  d8 f bes aes g f |
  ees8 g c' d' ees' f'
}


\score {
  \new PianoStaff = Keyboard <<
    \new Staff = "upper" <<
      \timeKey
      \clef treble
      \new Voice = "first" { \firstPart \bar "|." }
    >>

    \new Staff = "lower" <<
      \timeKey
      \clef bass
      \new Voice = "second" { \secondPart \bar "|." }
    >>
  >>
  \layout {
    \context {
      \Score
    }
  }
  \midi {}
}

