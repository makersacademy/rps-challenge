# RPS Challenge

# Task 
- Weekend Challenge 3 
- To create a Rock, Paper, Scissors game, using Capybara, Sinatra, Ruby and Rspec.
- Implemented an AI computer to play against the user 


```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
# Approach 
- Started off with Domain Modelling and drawing diagrams to plan which classes, methods and go in which file. Furthermore, use of MVC (Model, View, Controller) and SoC (Seperations of Concerns).

# Usage 

- Run rackup on Terminal 
- Default port will be 9292, type in 'http://localhost:9292' in browser (Chrome, Firefox)
- The home page will appear, displaying the rules of the game. At the bottom, enter your name and click Leggo!
- This will redirect you to the 'http://localhost:9292/name', where you choose your weapon.
- This will show you your choice of weapon and who won on the next page. 'http://localhost:9292/result'

![alt tag](https://github.com/JohnChangUK/rps-challenge/blob/master/Screen%20Shot%202017-03-06%20at%2010.43.46.png)
![alt tag](https://github.com/JohnChangUK/rps-challenge/blob/master/Screen%20Shot%202017-03-06%20at%2010.44.00.png)
![alt tag](https://github.com/JohnChangUK/rps-challenge/blob/master/Screen%20Shot%202017-03-06%20at%2010.44.13.png)

## Bonus level 2: Rock, Paper, Scissors

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock
