#Rock-Paper-Scissors-Lizard-Spock#

[Deployed to Heroku with some snazzy CSS](https://rckpprscslzdspk.herokuapp.com/)

This Rock, Paper, Scissors, Lizard, Spock (RPSLS) game uses 7 classes to recreate thhat exciting game we all know and love... `¯\_(ツ)_/¯`

The `Game` class controls the atual gameplay, storing instances of `Player` and `Com` as well as the rules to the game in a matrix(2d Array).

The rules (or logic) matrix contains 3 classes corresponding to outcomes of different weapon selections - each weapon is stored in the `Weapons` class in a hash and has a number paired to its key. The numbers of these weapons point to a specific element within the logic array.

The logic array contains 3 classes: `P1Wins`, `P2Wins` and `Draw`. These all have simple duck typed methods to allow `.result` to be called on whatever outcome is returned, each returning an appropriate string declaring the outcome of the game. These classes were added to avoid a particularly long `if` statement.

If there had been more time the logic of the game would have been extracted to another class.
