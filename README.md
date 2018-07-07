RPSLS Challenge
==============

[Summary](#summary) | [Specification](#specification) | [Getting started](#getting-started) | [Approach](#approach) | [More](#further-information)

## Summary

This app allows a player to play a game of rock, paper, scissors, lizard, spock against the computer. Currently the game offers either 1 payer or two player mode however 2 player mode does not work so make sure you select 1 player.
The computer randomly selects a weapon after you choose yours and the result will appear on the screen. Follow the getting started instructions and then once you have the app running locally follow the instructions to enter your name and the select 1 player mode.

This app was created over a two day period as part of my development on the Makers Academy course.

## Specification

#### Requirements

Your task is to provide a _Rock, Paper, Scissors_ game that can be played on the web with the following user stories:

```sh
As a User
So that I can see my name in lights
I would like to register my name before playing an online game

As a User
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

#### Acceptance Criteria

- the User should be able to enter their name before the game
- the User will be presented the choices (rock, paper and scissors)
- the User can choose one option
- the game will choose a random option
- a winner will be declared

## Getting started

#### Installation

* Clone this repository ```$ git clone https://github.com/georgesykes86/rps-challenge.git```
* Install bundler with ```$ gem install bundle```
* Run bundler with ```$ bundle```
* Run the app from the top level of the directory with ```$ bundle exec rackup config.ru```
* Go to localhost:9292 on your browser and play the game. (Check your terminal for the port number if this doesn't work)

#### How to use

The login screen is as shown below and will ask for a name. Enter it and click submit.

![Alt text](/public/images/Login.png?raw=true "Login")

This will take you to a Welcome screen with the ability to select from single player against the computer or multiplayer against someone else.

![Alt text](/public/images/Welcome.png?raw=true "Welcome screen")

By clicking on 1 player you can go straight into the game. There select a weapon by clicking on it and wait to see the result. Click play again for another go. Logout to leave the programme and New Game to return to the Welcome screen.

![Alt text](/public/images/Single.png?raw=true "Single player")

If you select 2 player at the welcome screen you will be shown the games that are available to you. Either wait for someone to join you game and then click play or click play on someone else's game and you will enter the game. This can be played exactly the same way as the single player mode. If you are using multiplayer mode on your localhost then you will most likely need to use two different browsers as the app uses sessions so will register a new window in the current browser as an extension of the current session rather than a new player.

![Alt text](/public/images/Games.png?raw=true "Multiplayer games screen")

## Approach

#### Methodology
The ambition for this app was to create well encapsulated classes that were able to interact through clear messages. I have tried to adhere to SOLID principles.
The image below shows the UML diagram which was generated before starting the project and developed as parts of the implementation required change.

![Imgur](https://i.imgur.com/O091K3V.png)

#### Technologies
The app was made using Ruby and Sinatra.

#### Testing
The development process followed a TDD approach with the development of feature tests to assess the end to end functionality and unit tests to test each of the components in isolation. I used RSpec and Capybara for testing.

The tests can be run from the command line using ```$ rspec```

## Deployment

This app is deployed on Heroku which you can visit [here](https://rps-challenge-gs.herokuapp.com/)

## Further Information

#### Areas for development

* Consider implementation of the multiplayer mode using WebSockets instead of a javascript reload
* Refactor code to reduce the amount of duplication in the methods of Game.rb and in the controller
* Occasional image rendering issues on Heroku
* Improve the the user interface

#### License
License follows the details as shown in the LICENSE file

#### Contributors
This is primarily the work of George Sykes, but would not have been possible without my fellow developers and coaches at Makers Academy.
