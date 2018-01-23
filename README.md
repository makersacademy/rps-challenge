[Scenario](#scenario) | [Approach](#approach) | [Extention](#extention) | [Setup](#Setup)| [Play](#Play) | [Technologies](#Technologies)


[![Build Status](https://travis-ci.org/Tagrand/rps-challenge.svg?branch=master)](https://travis-ci.org/Tagrand/rps-challenge)



# Rock Paper Scissors


## Scenario <a name= "scenario"></a>

You are one spec in what feels like a large infinitely large universe, inhabiting a mere fraction of the Earths history, which in itself is only a tiny segment of the lifespan of the Universe. It can feel pretty daunting can't it?

Well take your mind off it by playing a game that is essentially a game of chance (especially if you play the computer...)

## Approach <a name= "approach"></a>

I set myself 4 targets starting this challenge 
  
   - *Never* use a global variable 
   - Build one feature at a time 
   - After passing tests, make sure they also fail for the **right reasons** 
   - Focus on extendability in design.
   
I've focused alot on TDD and BDD over the past few weeks, and this week I found it much more natural. I've started seeing the benefits - debugging is easier as I'm working in smaller cycles, theres less issues to spot and naming tests carefully indicates clearly whats gone wrong. I also found doing one feature at a time helped structure my appraoch and keep my focus tight. I started with a site that could hold your name, then a site where you could pick rock, then one with three options, then one which told you win or lose. I found this helped structure my thoughts, and focus on just passing my tests. 

Keeping the design extendable was the biggest challenge. Over the weekend the more I worked, the more useful I found it though. For example, you can do some pretty fun solutions to deciding who wins rps which are heavily tied to those specific 3 inputs, but its much harder to debug. I found extendable functions/programmes are much easier to debug (as responsibilities are clearer so faults can be found more easily) and push you minimise over dependency between classes. 

## Extention <a name= "extention"></a>

If I'd have had more time, then I would have done 4 things 
1) Created a game pack class (which works out winners with its rule book) to make it more extendable as you could just bolt in different game packs into the programme and have lots of variations of RPS.
2) Added a second page for player 2 to input choices in. As, it seems silly to have the same page. 
3) Refactor more, and make sure there's no gaps in my testing
4) Make a class that builds a question page (so you could give it the name of 5 or 3 or 6 attacks and it would make that many buttons) so you could add loads of different game packs and not have to build special pages for each.

I would also be interested to see if there are better ways of structing my classes e.g. adding a printer class for my results.


## Setup <a name= "Setup"></a>
-------
 
1) Clone this repo [https://github.com/Tagrand/rps-challenge.git](https://github.com/Tagrand/rps-challenge.git)
2) Run bundle
3) Run rackup 
4) Go to [localhost:9292](localhost:9292)
5) Enoy!

## How to play <a name= "Play"></a>

### Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## Technologies used  <a name= "Technologies"></a>
  - Ruby 
  - RSpec
  - HTML
  - CSS
  - Sinatra
  - Capybara 
  
## Acknowledgements

 Thanks to @MakersAcademy for providing the challenge, and as always, google, for continuing to listen to all my many questions. 
