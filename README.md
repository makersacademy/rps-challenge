# RPS Challenge

README:
-------


## User stories:
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## How to run:
Put the following in the terminal:
```
ruby rps.rb
```
And open `http://localhost:4567/` in your browser.

## Description
The following project is build on the Model - Controller - View concept

### Model
Model, the class _Game_ takes simple input of an hand (strings rock, paper, scissors) and if no second input provided, generates random second hand. Then returns simple string (draw, lost, won), with the output of the game.

Result generation is based on modulus check concept found online.

### Controller
Controller _rps.rb_ requests data from the _Game_ class and also directs users to proper sites. Only conditional statement used here changes content depending on a won/draw.

### View
 View is a simple template with 3 sites: enter_name, play and results displaying content as suggested by their name.

## Resources used:
I've used a website template from http://www.free-css.com/free-css-templates/page199/onassis
