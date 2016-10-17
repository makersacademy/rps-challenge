# RPS Challenge

Instructions
------------
To install this app, go to the directory of your choice and follow these instructions:
```
$ git clone git@github.com:francesmx/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rerun app.rb
```
If you want to, you can view test coverage:
```
$ rspec
$ coveralls report
```
To play with the app using the web interface, visit  [http://localhost:4567/](http://localhost:4567/) in your browser.

Screenshots
------------
![Initial screen](http://i.imgur.com/pxTnz5G.png)

![Choice of moves](http://i.imgur.com/UU4laY5.png)

![Result](http://i.imgur.com/MbiIpvy.png)

My approach to this challenge
-----------------------------
1.  Setup the environment, including Sinatra and RSpec / Capybara
2.  Wrote and passed feature test for registering name
3.  Wrote and passed feature test for choosing move
4.  Thought about domain model before writing unit tests (see below)
```
Player --> Registers name
Player --> Views choices <-- Game
Player --> Selects choice <-- Game
Player --> Views result <-- Game
Player --> Plays again <-- Game (same player)
Player --> Starts over <-- New Game (new player)
```
5.  Wrote and passed unit test for Player class to initialize with a name
6.  Wrote and passed unit test for Game class to initialize with Player objects
7.  Wrote and passed unit test for Game to view choices
8.  Wrote and passed unit test for Game to select a choice
9.  Wrote and passed unit test for Computer to select a choice randomly
10. Wrote and passed unit tests for revealing winner

Then attempted to integrate model into the view / controller

11.  Instantiate the Player object on posting the form with the name in
12.  Populate the form choices from the Game instance (could not iterate over the array!)
13.  Show the game's result
14.  Enable player to play again or start over

Refactoring
-------------------------
I had trouble getting my Ruby code to play nicely with the views so ended up making some of my Game methods really horrific.

After making the program fully functional with all tests passing, I then looked at the review documentation to see where I could make further improvements.

These came in the form of:

1. Using a hash solution instead of a case statement to determine the winner
2. Removing presentation strings from business logic, esp. in game.rb
3. Creating a Computer class
4. Creating separate views for different results, e.g. win, lose, draw

I also installed Bootstrap to make it slightly more attractive looking (although it's still not fabulous) and bunged in a few images and giphys to make it more fun.

Things I didn't manage
----------------------
1. To iterate over the Game::CHOICES array to avoid duplicate HTML in the form where the user chooses their move.
2. To improve the styling (better spacing, margins, use of space on a larger screen)
3. Any of the bonus functionality
