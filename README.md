# RPS Challenge

Technologies
----
Ruby
Sinatra
Capybara
HTML
CSS
Git

Task
----

Create a _Rock, Paper, Scissors_ game for the The Makers Academy Marketing Array ( **MAMA** ) - their daily grind is pretty tough and they need time to steam a little!

User Stories
----

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Functionality 
----
- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

Approach
----

I started by building a simple web page where a user is prompted to enter their name. They would then get the option to choose their weapon from either Rock, Paper or Scissors. Selections were stored as instance variables in sessions.

After implementing the basic functionality I planned what objects and messages I wanted to use and decided to create 3 classes: Player, Computer and Game. 

The Player class handled the users name and choice of weapon and the Computer class allowed the computer to randomly select a weapon from an Array. 

The Game class handled the battle between a user and the computer. The user's choice would be matched against a set of rules created in a hash in the Game class and would inform the user if they had won, lost or drew against the computer.

I ran into some problems using instance variables to store the user responses as they became unreachable and the data was not accessible in the new routes that I was creating. I solved this by using a class instance variable to store the Game instance, DRY'ing out my code using a Sinatra filter to define the instance in every route handler:

```
  before do
    @game = Game.instance
  end  
```

I would like to add functionality for multiplayer and add the special rules for Rock, Paper, Scissors, Spock, Lizard.

Interface
----

How to use
----

Clone this repo 

```
https://github.com/darciew/rps-challenge
```
Install and run bundle
```
$ gem install bundle
$ bundle
```

Run RSpec
```
$ gem install bundle
```

Run the app from the command line using Rackup 
```
config.ru app.rb  -p 4567
```

Type localhost:4567 in your favourite browser and play!

```
http://localhost:4567/
```
