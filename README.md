
Challenge Instructions
-------

* Challenge time: rest of the day and weekend, until Monday 9am
* Feel free to use google, your notes, books, etc. but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
* You must submit a pull request to this repo with your code by 9am Monday morning

Installation instructions
------------------------
```
$ git clone git@github.com:harrywynnwill/rps-challenge.git
$ cd rps-challenge
$ bundle
$ ruby app.rb
```
then visit:
```
http://localhost:4567/
````

Explanation to my solution
--------
The game is constructed with 4 classes.
  RPS class which is within the app.rb and handles the get and post requests.
  The Computer class - which initializes with a randomly generated choice.
  Player class - which instantiates a player.
  Finally the Game class which injects the computer class. This has all the functionality of the RPS game
  The interface only includes one method however this calls on 3 private methods for R P S.

Improvements
------------
  The game could have another player - human vs human.
  I'm not sure if setting the player name to a class variable is the best solution.
  However it was the work around to avoid globals to play the game again. Everytime the game is played, a new game object is instatiated and the player object has to passed in as a parameter.
  Perhaps the computer class does not need to be injected to the game class. This way the game could be replayed without the need for a new game object each go.
  Finally, the game could do with some CSS rendering.
  These issues will be addressed in the next release.

Author
------
Harry Wynn-Williams - harrywynnwilliams@googlemail.com
