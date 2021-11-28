# RPS Challenge

![Regular Game](https://i.gyazo.com/50f092bf7f19c1ea308ee70188babbfe.png)

A rock paper scissors web app with 2 game modes. Built using Ruby and Sinatra. Uses Rspec and Capybara for unit testing and feature testing respectively. This was a weekend challenge completed as part of Makers Academy week 3.

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Basic Rules

Regular game mode:

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

Lizard spock:

- Rock beats Scissors and Lizard
- Paper beats Rock and Spock
- Scissors beats Paper and Lizard
- Spock beats Rock and Scissors
- Lizard beats Paper and Spock

# Using the app

```
git clone https://github.com/ConorButler/rps-challenge.git
cd rps-challenge
rackup
```

Choose a game mode on the homepage:

![Homepage](https://i.gyazo.com/e35dfaa190611e98309e3f627f1a7584.png)

Choose your move and see the result:

![Lizard Spock](https://i.gyazo.com/73c8b0d25f005c6fdc3dfeead4be530d.png)

# Tests

![Tests](https://i.gyazo.com/4dd8706978ef738c18135c6ae70e45b8.png)

## My Approach

Used a rules module with a hash of each move and the correspending moves that it beats, that way the mode could be swapped easily. This was my first time really using HTML and CSS so I got to develop my skills.
