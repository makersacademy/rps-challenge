# RPS Challenge

A rock, paper, scissors web app with solo or 2-player options.

## Goals
- Use Sinatra and Ruby to create this project.
- Use Capybara and rspec to test-drive each feature.

## Instructions
Getting started:
```
$ git clone https://github.com/emilyalice2708/rps-challenge
$ cd rps-challenge
$ bundle install
$ rackup config.ru
```
Homepage offers two routes: computer game or multiplayer game:
![Homepage Screenshot](https://i.imgur.com/XF8fFRp.png)

Selecting computer option:
![Selecting Computer Option](https://i.imgur.com/Ev92drk.png)

User picks a move:
![Player Choice](https://i.imgur.com/q0kIbvR.png)

Results page if computer wins:
![Computer Wins](https://i.imgur.com/hLlEteI.png)

Results page if draw:
![Computer Draw](https://i.imgur.com/YOKupNp.png)

Results page if user wins:
![User Wins](https://i.imgur.com/nT7BrO6.png)

Selecting multiplayer option:
![Selecting Multiplayer Option](https://i.imgur.com/KsMM7Ko.png)

First player selects a move:
![First Player Choice](https://i.imgur.com/OABqz0s.png)

Second player selects a move:
![Second Player Choice](https://i.imgur.com/JuwaBxS.png)

Multiplayer results page if a player wins:
![Multiplayer Player Wins](https://i.imgur.com/i3q9mEX.png)

Multiplayer results page if players draw:
![Multiplayers draw](https://i.imgur.com/G4aoQX9.png)


## User Stories

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```
Required: 
- Form rendered on home page with name field.
- Name saved and rendered in next web page. 

```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
Required: 
- Array of RPS options and a sample method to select computer's turn.
- Ability for user to choose only one of Rock, Paper or Scissors.
- Link to page congratulating the winner.
- Link to restart the game.

Refractoring and Improvements:
- Create Player, Computer, Game and ResultsCalculator classes.
- Player: stores information about player (name and move).
- Computer: ability to select it's own choice each game.
- Game: begins a new game and stores both Players.
- Results Calculator: responsible for calculating the results of each game.
