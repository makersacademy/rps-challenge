RPS Challenge
==================
This is my proposal to build the Makers Academy Weekend 3 Challenge: Rock, Paper, Scissors

Setup
-------
1. Download this repository
2. Run _bundle install_ in the command line to make sure all gems are installed
3. Run _rackup_ in the command line
4. Go to http://localhost:9292 in your browser

Test with Rspec
-----
1. Open this directory in the command line
2. Run _rspec_

What is this challenge about?
----

The program is a small web app to play _rock, paper, scissors_ online against the computer:

- You can enter your name before starting
- You can choose one of the options to play: rock, paper, scissors
- The computer will choose an option randomly and a winner will be declared
- After that, you can choose if you want to end the game or if you want to play again


Approach to solve the challenge
-------
To solve the challenge, we have implemented the following structure:
- A lib folder with the models (classes): the game, the player and the computer (subclass of player). The game is in charge of declaring the result of the game according to the specified rules and chosen options. The player is responsible for choosing the option to play, and the computer is a subclass of player which can choose an option randomly.
- A views folder with four files for four different views: index, play, result and end.
- A public folder with the .css file
- An app.rb file as the controller
- A spec folder with all ours tests (features and unit tests)

Challenge instructions
-------

Full instructions [here](https://github.com/makersacademy/rps-challenge)

User Stories
-----

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
