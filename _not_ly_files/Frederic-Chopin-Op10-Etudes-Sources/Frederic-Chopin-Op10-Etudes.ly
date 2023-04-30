\version "2.22.1"

%%% ------
%%% Pieces
%%% ------

\include "includes/Header-paper-layout.ily"
\include "includes/Title-Page.ily"
\include "includes/Etude-No1-Parts.ily"
\include "includes/Etude-No2-Parts.ily"
\include "includes/Etude-No3-Parts.ily"
\include "includes/Etude-No4-Parts.ily"
\include "includes/Etude-No5-Parts.ily"
\include "includes/Etude-No6-Parts.ily"
\include "includes/Etude-No7-Parts.ily"
\include "includes/Etude-No8-Parts.ily"
\include "includes/Etude-No9-Parts.ily"
\include "includes/Etude-No10-Parts.ily"
\include "includes/Etude-No11-Parts.ily"
\include "includes/Etude-No12-Parts.ily"

etude-one = \bookpart {
  \tocItem \markup "Etude No. 1 in C major"
  \etude-one-header
  \score {
    \etude-one-music
  }
}

etude-two = \bookpart {
  \tocItem \markup "Etude No. 2 in A minor"
  \etude-two-header
  \score {
    \etude-two-music
  }
}

etude-three = \bookpart {
  \tocItem \markup "Etude No. 3 in E major"
  \etude-three-header
  \score {
    \etude-three-music
  }
}

etude-four = \bookpart {
  \tocItem \markup { 
    \concat { "Etude No. 4 in C" \raise #1 \teeny \sharp " minor" } 
  }
  \etude-four-header
  \score {
    \etude-four-music
  }
}

etude-five = \bookpart {
  \tocItem \markup { 
    \concat { "Etude No. 5 in G" \raise #0.5 \teeny \flat " major" } 
  }
  \etude-five-header
  \score {
    \etude-five-music
  }
}

etude-six = \bookpart {
  \tocItem \markup {
    \concat { "Etude No. 6 in E" \raise #0.5 \teeny \flat " minor" }
  }
  \etude-six-header
  \score {
    \etude-six-music
  }
}

etude-seven = \bookpart {
  \tocItem \markup "Etude No. 7 in C major"
  \etude-seven-header
  \score {
    \etude-seven-music
  }
}

etude-eight = \bookpart {
  \tocItem \markup "Etude No. 8 in F major"
  \etude-eight-header
  \score {
    \etude-eight-music
  }
}

etude-nine = \bookpart {
  \tocItem \markup "Etude No. 9 in F minor"
  \etude-nine-header
  \score {
    \etude-nine-music
  }
}

etude-ten = \bookpart {
  \tocItem \markup {
    \concat { "Etude No. 10 in A" \raise #0.5 \teeny \flat " major" }
  }
  \etude-ten-header
  \score {
    \etude-ten-music
  }
}

etude-eleven = \bookpart {
  \tocItem \markup {
    \concat { "Etude No. 11 in E" \raise #0.5 \teeny \flat " major" }
  }
  \etude-eleven-header
  \score {
    \etude-eleven-music
  }
}

etude-twelve = \bookpart {
  \tocItem \markup {
    \concat { "Etude No. 12 in C minor" }
  }
  \etude-twelve-header
  \score {
    \etude-twelve-music
  }
}

%%% ------------------
%%% Construct the book
%%% ------------------

\title-page
\pageBreak

\markuplist \table-of-contents
\pageBreak

\etude-one
\etude-two
\etude-three
\etude-four
\etude-five
\etude-six
\etude-seven
\etude-eight
\etude-nine
\etude-ten
\etude-eleven
\etude-twelve

%%% ----
%%% MIDI
%%% ----

\etude-one-midi
\etude-two-midi
\etude-three-midi
\etude-four-midi
\etude-five-midi
\etude-six-midi
\etude-seven-midi
\etude-eight-midi
\etude-nine-midi
\etude-ten-midi
\etude-eleven-midi
\etude-twelve-midi
