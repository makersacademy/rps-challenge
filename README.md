Rock, Paper, Scissors Challenge
==================

Week 3 weekend challenge to create a web app that allows a player to play a game of rock, paper scissors (vs. another player, or against the computer).

Requirements 
-------

+ rack ruby gem: web server
+ sinatra ruby gem: DSL which sits on top of rack

All requirements can be installed by installing the bundler gem (`gem install bundle`) and then running `bundle install` in the project directory.

User Stories implemented
-------

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```



Instructions
-------

- Launch the site: run `rackup` in the project root folder
- Navigate to the site by navigating to http://localhost:9292 in your browser
- Enter at least one player name. To play against the CPU, just press Submit. To play multiplayer, check 'Multiplayer?' and add a second player name.
- Choose your move! (If multiplayer, player 2 should look away. Once player 1 has chosen, the players will swap so p2 can make a move)
- The result will be displayed on the screen. Click 'New game' to start a new game of Rock, Paper, Scissors

