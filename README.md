# RPS Challenge

This is a program that allows the user to play a game of rock paper scissors against the computer that randomly chooses a move. This program can be run on a local server and opened in a web browser using the 'localhost' URL. The files in the [views](https://github.com/jmcnally17/rps-challenge/tree/main/views) folder contain the html code to display the necessary text and PNG files, as well as a number of MP3 files. The [app.rb](https://github.com/jmcnally17/rps-challenge/blob/main/app.rb) file uses the code from the views folder and the classes from the [lib](https://github.com/jmcnally17/rps-challenge/tree/main/lib) folder to render the website pages into a format that is useable for the player.

Getting Started
----

First, clone this repository and install the necessary ruby gems by:
```
git clone https://github.com/jmcnally17/rps-challenge.git
bundle
```

How To Use
----

1. Run either `rackup` or `ruby app.rb` in the terminal while in the main directory to start the server.
2. Type 'localhost:9292' or 'localhost:4567' into your browser to bring up the homepage (depending on which method the user executed to start the server).
3. Type in your name into the field and click 'Play' to start playing.
4. Make your move by slecting either 'Rock', 'Paper' or 'Scissors' from the drop-down menu and click 'Submit'.
5. See the results of your move choice!
6. Click 'Play again' to be redirected to the previous page where you can make another move.

Testing
----

Run `rspec` in the terminal in the main directory in order to run the tests present in the spec folder. These tests have provided a 100% test coverage from SimpleCov while this program also commits 0 offenses when running RuboCop. This program was made using the TDD (Test-Driven Development) process where each test was written before the code that it was targeting.

User Stories
----

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock
