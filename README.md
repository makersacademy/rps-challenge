# RPS Challenge: Rōnin Badge Test

Able to play simple one or two player rock, paper, scissors in browser - two player is in separate browsers.
Contains model with Game and Player.

In browser, player must input name and select one or two player game.
They must choose Rock, Paper or Scissors.
Then they are given the result.

In model:

Players must be created with name:

```
player = Player.new("name")
```
Players throw gestures
```
player.throw_gesture
```
Game finds winner
```
game.find_winner
```

Model can expand game by initializing with new win_conditions hash, and initialising players with new choices.
