# RPS Challenge: Rōnin Badge Test

Instructions
-------

* Fork the repository and clone to your own machine
* Install bundler if you don't have it, and once installed run 'bundle' to add the dependancies specified in the Gemfile
* Start the server by running 'ruby app.rb' in the command line whilst in the project root.
* Open a browser and navigate to 'localhost: 4567'
* You will now be able to play the game!

User Journeys
-------

* The program asks a player to enter their name, they are then asked whether they want to play a Computer or Player.
* If they select Computer, they are taken straight to the weapon choice screen, and asked to select a weapon. They are then told the computer will choose, and the next page is the result page confirming what the computer picked, and the outcome. They then have the option to play again
* If they select a person, the 2nd player is asked to enter their name. The first player is then asked to make a choice, followed by the second player. They are then redirected to the result page confirming what they both picked and the result. They then have the option to play again.

Approach
-------

* I used three classes in the model to implement the functionality - a Player Class, Computer Class and Game Class. the Player and Computer classes are very similar in functionality, however a Computer will randomly select a weapon when initialized (and will always have the name Computer), whereas the Player is initialized with a weapon and name (passed in from the controller).

* The game class calculates the winner by assigning each choice a value (as per the WEAPONS hash), then subtracting the value of Player 2's choice form Player 1's. The result is then divided by the length of the WEAPONS hash. If the remainder is 0, the match is a draw. If the remainder is even, Player 2 has one, if the remainder is odd, Player 1 has one.

* This modelling holds true for all extensions of the game so long as each weapon can defeat exactly half of all other options. This means the game can be extended with additional weapons simply by adding them, with values, to the WEAPONS hash stored in game.
