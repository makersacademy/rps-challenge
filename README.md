# RPS Challenge

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## User Stories ##

As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

Functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Domain Model ##


/homepage(get) 
                   | Player enters name /
                   | 

/output(post)      | Starts session /
                   | Redirects to play /

/play(get)         | Prints out user_name on screen /
                   | Player inputs rock / paper / scissors /

/move_output(post) | Stores input /
                   | redirects to outcome /

/outcome(get)      | Shows who won
                   | Play again button  

/again(post)       | Stores if they won or not? 
                   | Redirects to /play


----

rand(1..3) returning nil issues:

2.6.5 :001 > def example
2.6.5 :002?>   return "rock" if rand(1..3) === 1
2.6.5 :003?>   return "paper" if rand(1..3) === 2
2.6.5 :004?>   return "scissors" if rand(1..3) === 3
2.6.5 :005?>   end
 => :example 
2.6.5 :006 > example
 => "rock" 
2.6.5 :007 > example
 => "scissors" 
2.6.5 :008 > example
 => nil 
2.6.5 :009 > example
 => "rock" 



2.6.5 :010 > def example2
2.6.5 :011?>   return "rock" if rand(1..3) == 1
2.6.5 :012?>   return "paper" if rand(1..3) == 2
2.6.5 :013?>   return "scissors" if rand(1..3) == 3
2.6.5 :014?>   end
 => :example2 
2.6.5 :015 > example2
 => "rock" 
2.6.5 :016 > example2
 => nil 


2.6.5 :043 > def example3
2.6.5 :044?>   answer = [1, 2, 3].sample
2.6.5 :045?>   if answer == 1
2.6.5 :046?>     puts "rock"
2.6.5 :047?>     elsif answer == 2
2.6.5 :048?>     puts "paper"
2.6.5 :049?>     elsif answer == 3
2.6.5 :050?>     puts "scissors"
2.6.5 :051?>     end 
2.6.5 :052?>   end 
 => :example3 
2.6.5 :053 > example3
scissors
 => nil 


----
















## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )


