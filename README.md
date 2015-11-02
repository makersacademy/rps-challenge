# RPS Challenge: Rōnin Badge Test

Instructions
-------
visit https://sheltered-reef-7850.herokuapp.com/

Should be self explanatory.

My approach
-------
The challenge has been approached by having a total of four classes:  

**Game**: The way the user interacts with the model, all modifications to the game are passed through here.  
**Round**: Each round is a new instance of the class, you can identify the winner of the round and whether the round was a draw, it also generates a message which is displayed on the results page of the website.  The logic for who won the round is contained in here.  
**Player**: Stores the player name and the current selection.  
**Computer**: When a singleplayer game, stores the computer name and also randomly makes a selection when called.  

Winning combinations are stored by a key/value constant.  As I had included Lizard and Spock choices, instead of each choice having only one other choice being able to defeat it, it increased it to two.  I stored these within an array which was accessed by the choice I was checking, to see if it could defeat it (it will probably make sense to look at the round.rb array for a better idea).
