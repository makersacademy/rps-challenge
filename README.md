RPSLS Challenge
==================

Summary
-------

This app allows a player to play a game of rock, paper, scissors, lizard, spock against the computer.
Currently the game offers either 1 payer or two player mode however 2 player mode does not work so make sure you select 1 player.
The computer randomly selects a weapon after you choose yours and the result will appear on the screen.
Follow the getting started instructions and then once you have the app running locally follow the instructions to enter your name and the select 1 player mode.

Getting started
---------------

* Clone this repository
* Install bundler with gem install bundle
* Run bundler with bundle
* Run the app from the top level of the directory with bundle exec rackup config.ru
* Go to localhost:9292 on your browser and play the game. (Check your terminal for the port number if this doesn't work)

Playing
-------

The login screen is as shown below and will ask for a name. Enter it and click submit.

![Alt text](/public/images/Login.png?raw=true "Login")

This will take you to a Welcome screen with the ability to select from single player against the computer or multiplayer against someone else.

![Alt text](/public/images/Welcome.png?raw=true "Welcome screen")

By clicking on 1 player you can go straight into the game. There select a weapon by clicking on it and wait to see the result. Click play again for another go. Logout to leave the programme and New Game to return to the Welcome screen.

![Alt text](/public/images/Single.png?raw=true "Single player")

If you select 2 player at the welcome screen you will be shown the games that are available to you. Either wait for someone to join you game and then click play or click play on someone else's game and you will enter the game. This can be played exactly the same way as the single player mode.

![Alt text](/public/images/Games.png?raw=true "Multiplayer games screen")

Areas for future development
-----------------------------

* Refactor code to reduce the amount of duplication in the methods of Game.rb and in the controller
* Consider implementation of the multiplayer mode using WebSockets instead of a javascript reload
* Improve the the user interface

License
-------
License follows the details as shown in the LICENSE file

Contributors
------------
This is primarily the work of George Sykes, but would not have been possible without my fellow developers and coaches at Makers Academy.
