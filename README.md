## Rock, Paper, Scissors

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

## Domain Modelling

The Takeaway app is split up into various classes that understand the behaviour of various methods. The classes encapsulate these behaviours. 

The takeaway class understands the behaviour of the view_menu, add_item and view_order methods.

- Class ----> takeaway
- Method (behaviour) ----> view_menu, add_item and view_order 

The order class understands the behaviours of the add_to_order, order_summary and basket_total methods.

- Class ----> order
- Method (behaviour) ----> add_to_order, order_summary and basket_total

The menu class understands the behaviour of the menu method.

- Class ----> menu
- Method (behaviour) ----> menu

## Technologies 

- Code: Ruby
- Web Framework: Sinatra
- Testing Tool: Rspec & Capybara

## How to run

- Fork or clone this repo, and run bundle install
- Type rackup on the command line to start the server
- Navigate to localhost:9292 in a web browser
- Tests can be run by running rspec on the command line in the main project directory

