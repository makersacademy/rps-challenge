# Development Notes for RPS game

## Basic User Stories

As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
- register my name
- online game

>Visit index page
>See enter name option

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
- play rock paper scissors

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

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
