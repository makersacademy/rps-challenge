# RPS Challenge
-------
```
     _______             _______                _______
|---'   ____)       |---'   ____)____      |---'   ____)____
|      (_____)      |          ______)     |          ______)
|      (_____)      |         _______)     |       __________)
|      (____)       |         _______)     |      (____)
|---.__(___)        |---.__________)       |---.__(___)

```
-------
### Outline

Makers Academy weekend challenge to create a simple webapp using Sinatra, allowing a user to play Rock Paper Scissors Spock Lizard against an opponent or computer.

### How to Install

The webapp has been developed on Sinatra, a rack based platform, so to install clone this repo, move to root directory, run bundle command, and use the rackup command (or other rackup application) in the root directory to start the application running on the local host.

### Customer Requirements
#### Base requirements
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```
```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
#### Additional Requirements
```
Mutliplayer mode
Two players can play against eachother in the game
```
```
Extended Rock Paper Scissors
Extended game to play Rock, Paper, Scissors, Spock, Lizard
```

### Approach

#### Extract Scope
Using customer requirements and
- Inital page allowing user select single or multiplayer
- Name entering page to allow players to enter name and start game
- Single player game page - click button of move
- Multiplayer game page - second player clicks button of move
- Results page - Displays winner and play again button
- Game logic to be designed to allow for expansion for additional weapons

#### Notes
- Features to be TDD with Capybara/RSpec
- Additional features can be added such as game music and animation

#### Objects
- app_controller - controls models, views, and routes
- views - various for app
- model: RPSExtended - returns string with winner of RPS game
- model: Game - stores player names and implements logic for game


#### Create RSpec for basic object functions and implement TDD
- RPSExtended.result(name_1:, name_2:, move_1:, move_2:, num_weapons:) - String result
- Game.new(name_1:, name_2:, game:) - Inject game module which returns result
- Game.result(move_1:, move_2:) - String result from game module
