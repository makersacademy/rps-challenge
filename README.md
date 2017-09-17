# Project: RPS Challenge

https://travis-ci.org/wmcabangon/rps-challenge.svg?branch=master

## My Approach

I took a TDD approach to building this web application. The first step was to enable the application to accept the player's name, which was received via post request. A Player class was then created to accept this name.

To choose between RPS attacks, the player again submits a post request by choosing among 3 buttons. The 'challenger' is another instance of the Player class, which calls on an attack method that randomly picks an attack from an array using the sample command. A win, loss, or a draw is then declared based on each side's attack and the player is given an option to play again.

## Next Steps

The first priority is to improve testing, with current tests failing to mock the challenger's random attack. The random attack is defined in the controller, so a different approach may be needed for testing to be appropriate.

A multiplayer feature would be the next step in expanding the game. This could be done by creating another class of object that would be in charge of assigning 'turns'.
