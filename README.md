# Rock, Paper, Scissors

## Goal

Knowing how to build web applications is getting us almost there as web developers!
The Makers Academy Marketing Array ( MAMA ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.
Your task is to provide a Rock, Paper, Scissors game for them so they can play on the web with the following user stories:
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
##### Hints on functionality
* the marketeer should be able to enter their name before the game
* the marketeer will be presented the choices (rock, paper and scissors)
* the marketeer can choose one option
* the game will choose a random option
* a winner will be declared

## How to run locally
```
$ git clone git@github.com:sandyMax974/rps-challenge.git
$ cd rps-challenge
$ bundle install
$ rackup
```
Visit http://localhost:9292/

## Planning

### Views
I started by reflecting on how I'd like the user would interact with the game.
![Welcome Page](https://github.com/sandyMax974/rps-challenge/blob/master/images/RPS%20-%20welcome_page.png)
**Player VS Computer mode**
![Player name form](https://github.com/sandyMax974/rps-challenge/blob/master/images/RPS%20-%20fill_name_page.png)
![Player options](https://github.com/sandyMax974/rps-challenge/blob/master/images/RPS%20-%20player_options_page.png)
![Result Page](https://github.com/sandyMax974/rps-challenge/blob/master/images/RPS%20-%201%20player%20-%20results_page.png)
**Player VS Player mode**
![Players name form](https://github.com/sandyMax974/rps-challenge/blob/master/images/RPS%20-%20fill_names_page.png)
![Player 2 options](https://github.com/sandyMax974/rps-challenge/blob/master/images/RPS%20-%20player2_option_page.png)
![Result Page](https://github.com/sandyMax974/rps-challenge/blob/master/images/RPS%20-%202%20players%20-%20results_page.png)
**Edge case**
![Result Draw](https://github.com/sandyMax974/rps-challenge/blob/master/images/RPS%20-%20draw%20-%20results_page.png)

### Controller

## If I had more time
- Refactor the control flow in the #results method to be shorter
- Use images instead of buttons to display the player options
- Centre all elements on the page and use implement attractive fonts

## Focus
- Are all my unit test isolated?
- Do I have any fake positive test?
- Did I design my Capybara test correctly?
- What methods should I make private?
- Any feedbacks on the method I used to reset the game instance?
