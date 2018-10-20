\version "2.18.2"

timeKey = {
  \key g \minor
  \time 6/8
  \tempo 4 = 160
}

firstPart = {
  \repeat volta 2 {
    d''4 bes'' ees'' |
    ees'' d''2 |
    cis''4 bes'' e''8 f'' |
    fis''8 d'' bes' d'' fis' g' |
    r8 ees''16 d'' ees''8 c''16 b' c''8 d' |
    e'8 fis' g'4 f'' |
    ees''4 bes'' cis''8 d'' |
    ees''4 c'' a' |
    bes'4 d' b' |
    c''4 g' g'' |
    <a' ees''~>4 <fis' gis' ees''> <cis'' e''>8 <d'' f''>|
    <c'' ees''~ ges''~>4 <b' ees'' ges''> <b' f''> |
    <a' des'' ges''>2 r4 |
    <f' aes' des''~>4 <e' g' des''> <g' bes' ees''>8 <gis' b' e''>|
    <a' c'' f''>2. |
    <bes' fis''>4 <e' c''> <g' ees''> |
    <fis' d''>4 <c'' fis''> <ees'' ges'' c'''>|
    <ees'' ges'' c'''>4 <ees'' ges'' bes''> <bes' ees'' ges''>|
    <f' aes' des''>8 <fis' a' d''> <g'~ bes'~ ees''>4 <g' bes' d''>|
  }
  \alternative{
    { <fis' a' d''>4 <d' g' bes' d''>2 | }
    { <fis' a' d''>4 <d' g' bes' d''>2 | }
  }
  \bar "|."
}

secondPart = {
  \repeat volta 2 {
    g8 bes d' fis a c' |
    bes8 c' a bes fis f |
    e8 bes fis' cis' c' b |
    bes4 d' ees' |
    c'4 a fis |
    bes4 ees8 b d' c' |
    g8 bes c ees bes b |
    c'8 bes a g f ees |
    d8 f bes aes g f |
    ees8 g c' d' ees' f'|
    g'8 ees' d' cis' c' b|
    bes8 a aes d des g, |
    ges,8 des ges aes a b |
    d'8 c' b fis8 f e |
    ees b, g, b, d, ees, |
    e, b, fis gis a b|
    c' bes a g fis a,|
    bes, a c' bes c ees|
    b8 c' d' bes g ees |
  }
  \alternative{
    { d8 bes, g, bes, d fis | }
    { d8 bes, <g, g,,>2 | }
  }

  \bar "|."
}

\header {
  title = "(Composition)"
  composer = "J. M. Sterling"
  tagline = ##f
}

\score {
  \new PianoStaff = Keyboard <<
    \new Staff = "upper" <<
      \timeKey
      \clef treble
      \new Voice = "first" { \firstPart }
    >>

    \new Staff = "lower" <<
      \timeKey
      \clef bass
      \new Voice = "second" { \secondPart }
    >>
  >>
  \layout {
    \context {
      \Score
    }
  }
}


\score {
  \unfoldRepeats
  \new PianoStaff = Keyboard <<
    \new Staff = "upper" <<
      \timeKey
      \clef treble
      \new Voice = "first" { \firstPart }
    >>

    \new Staff = "lower" <<
      \timeKey
      \clef bass
      \new Voice = "second" { \secondPart }
    >>
  >>
  \midi {}
}
