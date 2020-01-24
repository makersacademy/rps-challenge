# Rock Paper Scissors challenge

This was the Week 3 individual weekend challenge at Makers. I built and deployed this in 2 days, after 3 weeks of learning Ruby.

Deployed here: https://rockpapersmash.herokuapp.com/

## Installation instructions

* Fork and clone this repository
* Run `bundle install` in your command line
* Run `shotgun controller.rb` in your command line
* Open `localhost:4567` in your browser to play the game


## Flow of code

This is a Model-View-Controller app built with Ruby and Sinatra framework.

Within the views, the user's journey starts on the `index.erb` file. They click one of two buttons to choose whether to play against the computer or another human player. Their choice is sent as a parameter to the `post /forms` route in the controller, and the `nameforms.erb` view file is opened.

The content of the `nameforms.erb` page is conditionally rendered depending on whether the player chose to play a 1- or 2-player game. The player(s) enter their name(s), which is passed as a parameter to the `post /names` route in the controller. Player 1's name is stored as a session variable. If there is a player 2, their name is stored as a session variable. Otherwise, "The Computer" is stored as the variable. The controller redirects to the `/startgame` route, which saves the session players as instance variable and opens the `startgame.erb` view file.

The `startgame.erb` view file displays the players' names. The player(s) click the "Let's Go!" button to start the game. This sends a `get` request to the `/play1` route in the controller, which opens the `play1.erb` view file.

On the `play1.erb` view file player 1 is asked to enter their move by choosing from the drop-down options and clicking the "Submit" button. Their choice is passed as a parameter to the `post /move1` route in the controller, where it is stored as a session variable. If the game is 1-player against the Computer, the controller now redirects to the `/results` route (see below). If it is a 2-player game it redirects to the `/play2` route, which opens an almost identical view file for player 2 to enter their move. This is also stored as a sessions variable and the controller then redirects to the `/results` route.

The `get /results` route calls upon the Model of the app, `game.rb`. It creates a new instance of the `Game` class, passing `@player1` and `@player2` as the arguments. If player 2 is the Computer, then `@game.computer_move` is called to generate a random move for the computer, which is assigned to the variable `@player2move`. Then `@game.winner` is called to determine the winner. The `results.erb` view file is opened.

On the `results.erb` view, the players' moves are displayed and the winner is declared. There are two buttons for the player to click. The "Play again!" button will redirect to the `/play1` route, to play another game with the same players. The "New game!" button will redirect to the `/` route and the `index.erb` view to start a new game with new players.


## Technology used

This program was built using Ruby, Sinatra, RSpec test frame, HTML and CSS, and deployed to Heroku.
