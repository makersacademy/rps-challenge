# RPS Challenge [![Build Status](https://travis-ci.org/TudorTacal/rps-challenge.svg?branch=master)](https://travis-ci.org/TudorTacal/rps-challenge)

This project is our third weekend challenge at Makers Academy coding bootcamp.

RPS is a **web app** that allows the user to play a game of **Rock, Paper, Scissors** against a computer.

### Screenshots

![First Page](https://postimg.org/image/e3e8cos21/)
[The options page](https://postimg.org/image/88bszs4vn/)
[Displaying the result](https://postimg.org/image/lqwmac0fd/)

# Code snippets

The options were saved in a constant and a hash was used to store the game rules:

```
WEAPONS = ["Rock", "Paper", "Scissors"]

GAME_RULES = {rock: {rock: 0, paper: -1, scissors: 1},
              paper: {rock: 1, paper: 0, scissors: -1},
              scissors: {rock:-1, paper: 1, scissors: 0}}

```
I used Sintra's modular style:
```
class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end
```
The state was saved into a class variable:
```
class Game
  def self.create(player, computer)
    @game = Game.new(player,computer)
  end

  def self.instance
    @game
  end
```



### Installation and Use

1. To run the program first run **bundle install**.
2. Run **ruby app.rb**.
3. In your browser, open the link **localhost:4567**.

### Technologies used

1. **Sinatra** as DSL.
2. **RSPEC** and **Capybara** for testing.
3. **HTML5** and **CSS3** for styling.



This repository was forked from https://github.com/makersacademy/rps-challenge

### Contacts
tudor.tacal@gmail.com
