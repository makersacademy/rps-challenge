# Rock, Paper, Scissors

This is the classic _Rock, Paper, Scissors_ game. In this version you play against the 'Machine'. This project is built with test driven development (TDD) approach.

The site is built in Sinatra, Ruby, HTML and tested with RSpec, Capybara.  

## Setup

In your terminal window:
```
$ git clone https://github.com/bpourian/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```
Open a browser and navigate to localhost:9292 or the given port on the rack start up message.

## Game display

On running the game you will be greeted with the following page;

### Home page

![Screenshot](https://i.imgur.com/7wdBo5o.png)

Enter your character name and submit.


### Confirmation page:

![Screenshot](https://i.imgur.com/QtkTYHn.png)

Confirms your name and lays out the game rules. Press start game to proceed.

### Game page

![Screenshot](https://i.imgur.com/31RB8pZ.png)

This is a typical game page. You can keep an eye on how many times you have
lost the game and what hand your opponent played.
