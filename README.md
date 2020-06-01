## Rock, Paper, Scissors Web Application

<br>
<p align="center">
<img width="500" alt="picture" src="https://github.com/RichEwin/rps-challenge/blob/master/Images/Screenshot%202020-05-31%20at%2015.31.56.png?raw=true">
<br><br>
<br>
<p align="center">
<img width="500" alt="picture" src="https://github.com/RichEwin/rps-challenge/blob/master/Images/Screenshot%202020-05-31%20at%2015.31.28.png?raw=true">
<br><br>
<br>
<p align="center">
<img width="500" alt="picture" src="https://github.com/RichEwin/rps-challenge/blob/master/Images/Screenshot%202020-05-31%20at%2015.32.54.png?raw=true">
<br><br>
<br>
<p align="center">
<img width="500" alt="picture" src="https://github.com/RichEwin/rps-challenge/blob/master/Images/Screenshot%202020-05-31%20at%2015.33.36.png?raw=true">
<br><br>
<br>
<p align="center">
<img width="500" alt="picture" src="https://github.com/RichEwin/rps-challenge/blob/master/Images/Screenshot%202020-05-31%20at%2015.34.11.png?raw=true">
<br><br>

## User Stories

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Domain and Process Modelling

The Rock, Paper, Scissors web application is split up into various classes that understands the behaviour of various methods. The classes encapsulate these behaviours. 

The Computer Class understands the behaviour of the computer choice method.

- Class ----> Computer
- Method (behaviour) ----> computer_choice 

The Result Class understands the behaviours of initialize and run game methods.

- Class ----> Result
- Method (behaviour) ----> initialize and run_game

[Click Here](https://github.com/RichEwin/rps-challenge/blob/master/Images/Screenshot%202020-06-01%20at%2008.21.27.png?raw=true) to view a sequence diagram of the HTTP request/response cycle.

## Technologies 

- Programming Language: Ruby
- Web Framework: Sinatra
- Testing Tools: Rspec & Capybara

## How to run

- Fork or clone this repo
- Run bundle install on the command line
- Navigate to your localhost in a web browser and run the application
- Tests can be run by running rspec on the command line
