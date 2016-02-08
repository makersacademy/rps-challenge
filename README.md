ROCK-PAPER-SCISSORS CHALLENGE (Beta)
====================================

- Version:      0.1.9
- Author:       Alain Lemaire (jaxdid@gmail.com)
- Created on:   07/02/16 @ 2:04PM
- Last updated: 08/02/16 @ 10:26AM

***

Description
-----------
A web interface for playing Rock-Paper-Scissors, supported by a server application for handling game logic and returning the correct outcome of each game.

* Players register their names for each game session
* Players select a weapon
* The computer opponent selects a weapon at random
* The outcome of the match is automatically displayed

Instructions
------------
1. Load the game by visiting the root route `'/'`.
2. Enter your name in the text field provided and click the `Onward!` button.
3. Select a weapon from the list on the next screen (`'/choose_weapon'`) and click the `Arm yourself!` button.
4. On the weapon confirmation screen (`'/confirm_weapon'`), click the `Once more unto the breach...!` button to continue.
5. The computer will select a weapon at random and combat will resolve with a string describing the relative performance of your weapon.
   For example, if you chose Rock and the computer chose Paper, you will see: `Rock loses to paper!`
6. Click the `Play Again` button to start a new game (returns to `'/'`).

Known Issues
------------
* AI does not make use of the Weapon class; instead, it stores it's weapon as a string from an internal `weapon_list` array.
* AI weapon selection relies on modification rather than extension.
* `Combat#resolve` needs to be refactored for complexity/responsibility.
* Code is not DRY in several places (e.g., a web-helper could be created for DRYer feature tests, Combat instance methods, etc.). 
* Missing feature: game does not currently announce the winner, only the outcome of the match.

