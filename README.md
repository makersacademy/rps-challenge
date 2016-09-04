# RPS Challenge

## What is the RPS Challenge?

The challenge was to build a _Rock, Paper, Scissors_ game to play on the web by implementing the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

- The user should be able to enter their name before the game
- The user will be presented the choices (rock, paper and scissors)
- The user can choose one option
- the game will choose a random option
- a winner will be declared
```

## How to play the game

Type the following into the command line, replacing `[USERNAME]`
with your unique Github username:

```
$ git clone git@github.com:[USERNAME]/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup -p 4567
```

Then open a browser and visit the following URL: [http://localhost:4567](http://localhost:4567)

Once the page has loaded, please follow the instructions in the browser - enter a player name, click `Play`, select either `rock`, `paper`, or `scissors` as your weapon of choice and click `Fight!`

### Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock
