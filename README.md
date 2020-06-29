# Rock Paper Scissors

RPS is a well known simple logic game, where two players at the same time choose one of Rock, Paper or Scissors. 

Rock beats Scissors
Scissors beats Paper
Paper beats Rock

In this game, the user can play against the computer inside a website.

## Website

The LocalHost should be used to run this program.

## Usage

To see the code in action Clone the directory, and perform the following in the terminal:

```bash
Rackup
```

Then open your web browser into the resulting terminal. 

The code for Rock Paper Scissors can also be run by going to 

```bash
irb './lib/rps.rb'
```

## Userstories

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Assumptions
* Game will be best of of 3
* That the game will be versus a computer
* The game will be allowed to restart

## Design
![Design](/images/RPS.png)

## Test Coverage
```
Test Coverage: 85.62% -- 85/100 lines in 5 files
```
## Methods

```ruby
game.new("name") # creates a new game with default Player2 as computer
game.play("Rock") # plays a round of a game with Player1 choice as "Rock" and computer as random
```

## How to Run the Tests

Tests are located within /spec folder. As the website is built out we would expect to have more specific testing on the website.

## Contributing
As this is a weekend challenge, I have done this alone. 

## Follow Up

We would like to include:
- An option to play with another player
- Another game to play (eg. Noughts and Crosses)
- Store the player so that they can play multiple games
- Store the scores of each game of three to have an overall leaderboard

<p align="center">
    <a href="https://https://makers.tech/">
        <img src="https://img.shields.io/badge/-created%40makers-red"
            alt="Made @ Makers"></a>
</p>
