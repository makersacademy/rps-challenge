# Development Notes for RPS game

## Basic User Stories

As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
- register my name
- online game

>Visit index page
>See enter name option

#### USER STORY 1 DONE

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
- play rock paper scissors  

#### USER STORY 2 DONE

Refactoring:
 1. Move all of the instance variables into the Game Model instead.
   a. player 1 name - DONE
   b. store player 1 move - DONE
   c. store computer /player 2 move - Done
   d. put victory message into game - Done.

  2. Ran rubocop and fixed errors


## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

  > will implement a selection screen to select 1 or 2 players
  > new index screen needed
  >

  DONE!

  Optional extras:
   - new round button
   - round statistics  
   - add an icon
   - css styling
   - refactor with partials
   - guard against no name being entered

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Domain Modelling


## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## Game Parts - pre coding

| **Controller** | **Views** | **Model** |
| ---- | ---- | ---- |
| app.rb | :index | game.rb |
|        | :game | computer.rb |
|        | :victory Screen | player.rb |
|        |  |  |



## scratch_code

<% if @choice == "scissors" %>
  <h2>You have chosen scissors!</h2>
<% end %>
