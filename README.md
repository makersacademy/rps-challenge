README Edit: My approach and code review
=================

My approach
------
* First, I read through the User Stories and functionality hints and drew the Domain Models in tables in order to have a clear idea about the main objects and messages of the app.
* Then, I drew a sequence diagram focusing on what happens after every step in the app, e.g.: the user enters a name, then the options (Rock, Paper & Scissors) are shown. After that, the user chooses one of the three options, the computer also chooses one at random and, finally, the winner is displayed on the screen.

Regarding tests, I first created the following feature tests:
1. **Infrastructure test**: to make sure everything was set up correctly
2. **Player name test**: to allow the player to enter the name before the game
3. **Choices test**: to allow the player to choose among the different game options and to make sure the option is displayed on the screen

Up to this point, I stored user input (name and choice) in sessions (enabled in controller file for Sinatra).

Next: after making sure these features work as intended, it was time to *introduce new classes* (Game, Player and, eventually, Bot), *delegate responsibilities* from the Rps class to them and *refactor controller sessions*, allowing variables and instances to hold data in between requests.

4. **Random choice**: used .srand Ruby method to return the same play every time and be able to output computer's choice in the test, but in the browser it changes every time.

5. **Winner declared**: displaying the winner on the browser based on who won the round. Again, used the .srand Ruby method to return *Scissors* as the computer's choice and be able to display the player as the winner (choice: *Rock*)

6. **Bonuses**: I added the multiplayer option and, rather than getting rid of the solo game mode, I decided to split the views and controllers and allow the player to choose. Finally, two more weapons were added to the game: *Lizard* and *Spock*, to make it more interesting.

Next focus
------

* I started to include some more CSS in my project, but definitely I would have worked on styling it better if I had more time. Also using a layout for the views could have been great.

* Killing global variables, though I am aware that they are very dangerous, I am reassured all data will be stored in databases next week :)

* Refactoring the game logic for weapon options into a hash, in order to get rid of so many branches in the if expression within the *declare_winner* method for the Game class. I had the feeling this was not really practical and could be improved. This could have been something like this, e.g.:
```{ 'Lizard': ['Spock', 'Paper'] }``` and... ```if param from player 2 == elem in Array```, then we know the ```hash key (param from player 1)``` wins.

Personal code review
------

* I have the feeling that I have improved a lot in the technical part over the last few weeks, but I still struggle to organise my train of thoughts.

* I find myself going over and over again the same things and jumping between tests, writing code first, or realising that my tests were not really useful/testing what they were meant to test.

* I try to let myself be driven by TDD, but sometimes I realise my tests are driven by my code.
This happened especially after changing the game mode to allow two players to play, when I had to change tests and controllers.

# RPS Challenge

How to run the app
-------

* Fork this repo and clone it to your local directory
* run ```bundle install``` inside the directory
* run ```rackup```
* visit ```localhost:9292``` in your browser

Task
----

The task was to provide a _Rock, Paper, Scissors_ game for users so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Author
-------

Josué Estévez Fernández
