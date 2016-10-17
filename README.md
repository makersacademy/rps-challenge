# RPS Challenge

Instructions
------------
To install this app, follow these command line instructions:
```
$ mkdir frances-rps-challenge
$ cd frances-rps-challenge
$ git clone git@github.com:francesmx/rps-challenge.git
$ bundle
$ rerun app.rb
```

Then in your browser, open http://localhost:4567/

You can then follow the examples in these screenshots:

1. Enter your name
![Initial screen](http://i.imgur.com/pxTnz5G.png)

2. Choose your move
![Choice of moves](http://i.imgur.com/UU4laY5.png)

3. View the result. From here you can choose to play again (and choose another move) or start over (as a new player).
![Result](http://i.imgur.com/MbiIpvy.png)

My approach to this challenge
-----------------------------
1.  Setup the environment, including Sinatra and RSpec / Capybara
2.  Wrote and passed feature test for registering name
3.  Wrote and passed feature test for choosing move
4.  Thought about domain model before writing unit tests (see below)
5.  Wrote and passed unit test for Player class to initialize with a name
6.  Wrote and passed unit test for Game class to initialize with Player objects
7.  Wrote and passed unit test for Game to view choices
8.  Wrote and passed unit test for Game to select a choice
9.  Wrote and passed unit test for Computer to select a choice randomly
10. Wrote and passed unit tests for revealing winner

Then attempted to integrate model into the view / controller

1.  Instantiate the Player object on posting the form with the name in
2.  Populate the form choices from the Game instance (could not iterate over the array!)
3.  Show the game's result

Thoughts on domain model
-------------------------
```
Player --> Registers name
Player --> Views choices <-- Game
Player --> Selects choice <-- Game
Player --> Views result <-- Game
Player --> Plays again <-- New Game
```

I had trouble getting my Ruby code to play nicely with the views so ended up making some of my Game methods really horrific. My refactoring looked to

1. Use a hash solution instead of a case statement to determine the winner
2. Remove presentation strings from business logic
3. Create a Computer class
4. Create separate views for different results, e.g. win, lose, draw

I also installed Bootstrap to make it slightly less ugly (although it's still not fabulous) and bunged a few images in to make the selection look nicer.

Things I didn't manage
----------------------

1. To iterate over the Game::CHOICES array to avoid duplicate HTML in the form where the user chooses their move.
2. To improve the styling (better spacing, margins, use of space on a larger screen)
3. Any of the bonus items
