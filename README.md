## Rock, Paper, Scissors Web Application

<img width="500" alt="picture" src="https://raw.githubusercontent.com/RichEwin/rps-challenge/master/Images/Screenshot%202020-05-31%20at%2012.18.38.png">

<img width="500" alt="picture" src="https://github.com/RichEwin/rps-challenge/blob/master/Images/Screenshot%202020-05-31%20at%2012.18.47.png?raw=true">

<img width="500" alt="picture" src="https://github.com/RichEwin/rps-challenge/blob/master/Images/Screenshot%202020-05-31%20at%2012.19.09.png?raw=true">

<img width="500" alt="picture" src="https://github.com/RichEwin/rps-challenge/blob/master/Images/Screenshot%202020-05-31%20at%2012.22.12.png?raw=true">

<img width="500" alt="picture" src="https://github.com/RichEwin/rps-challenge/blob/master/Images/Screenshot%202020-05-31%20at%2012.22.29.png?raw=true">

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

The Computer class understands the behaviour of the computer_choice.

- Class ----> computer
- Method (behaviour) ----> computer_choice 

The Result class understands the behaviours of initialize and run_game.

- Class ----> result
- Method (behaviour) ----> initialize and run_game.

[Click Here](www.diagram.codes/d/sequence/alias%20user%20%3D%20%22user%22%0Aalias%20server%20%3D%20%22server%22%0Aalias%20browser%20%3D%20%22browser%22%0A%0Auser%20-%3E%20browser%20%3A%22user%20completes%20form%20and%20clicks%20to%20play%22%0Abrowser%20-%3E%20server%20%3A%22sends%20a%20GET%20request%20for%20%2Fgame%22%0Aserver%20-%3E%20browser%20%3A%20%22sends%20back%20form%20with%20200%20status%20code%22%20%0Abrowser%20-%3E%20user%20%3A%20%22renders%20the%20form%20for%20user%20view%22%20%0A%0A%0A%0A%0A%0A%0A) to view a sequence diagram of the HTTP request/response cycle.

## Technologies 

- Language: Ruby
- Web Framework: Sinatra
- Testing Tools: Rspec & Capybara

## How to run

- Fork or clone this repo, and run bundle install
- Type rackup on the command line to start the server
- Navigate to localhost:9292 in a web browser
- Tests can be run by running rspec on the command line in the main project directory
