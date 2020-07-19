# RPS Challenge

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## Motivation 
- To have a MVC approach to Web Design
- To understand sinatra and have skinny approach 
- Test drive front end 
- EXTRA: Understand multiplayer games 

## Tech Stack 
- Ruby 
- RSpec 
- Sinatra with Restful approach in MVC Patter 

## User Stories ##

```

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

```

## Domain Model of resful approach

|page| What you see on page|
|---|---------------------|
|/homepage(get)     ||
 |                  | Player enters name /|
|/output(post)      | Starts session /|
|                   | Redirects to play /|
|/play(get)         | Prints out user_name on screen /|
 |                  | Player inputs rock / paper / scissors /|
|/move_output(post) | Stores input /|
|                   | redirects to outcome /|
|/outcome(get)      | Shows who won|
 |                  | Play again button  |
|/again(post)       | Stores if they won or not? |
|                   | Redirects to /play|
|ruby doc           | random output r/p/s / |
|                   | calculate winner draw loser /|


|object|message|
|-----|-------|
|choice| random|
|Winner| calculate|
|| compmove| 

