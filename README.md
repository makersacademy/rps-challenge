# RPS Challenge

To create a simple web app where a user can play 'Rock, Paper Scissors' with the computer.

My code works for a player (a user) and a computer generated player. 
With more time I would like to the multiplayer functionality.

## Some remarks on the code:

I would like to extract a player class from the game class (this would be useful for two players)

I would like to refactor method #play in the game class, it's too long.

I think the controller could be 'skinnier'. 
Specifically, I think line 28 ` @player_2_move = @game.computer` could be in the model layer? Not sure exactly.

I would also like to make the presentation nicer, I was just playing around with HTML at the end of a long weekend!

## Notes on my tests:

I am pretty sure that my test for the randomly generated computer move is vacuous and I would like some help with this if possible!
This might be true of some other tests too

When running Rspec, all my tests pass and I get 100% coverage.
Running rubocop gives 4 offenses - related to the length and complexity of the play method which I would like to refactor. 

## Future work/To-do:

Implement the multiplayer functionality
Refactor the play method
Extract player class from game
Store how many games a player has one
