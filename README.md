# RPS Challenge

## Task

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## My Approach

I started by by building a basic sign in form page, and gradually progressing onto a play screen, which gives options for the player (Rock, Paper, or Scissors), and then a battle screen where the player can see what they chose. I kept track of the players name and choice through the use of sessions.

After implementing this basic functionality, I moved on to creating a computer class which was in charge of picking at random Rock, Paper or Scissors, and displaying this on the battle screen, after the users choice.

I then wanted to be able to compare the choice and decide a winner, and originally gave this functionality to the computer class. But, to adhere to the SRP I created a Game class which handled the comparison.

I wanted to be able to track the score in a scoreboard, So I created a scoreboard class which could show the score at the end of each round. However, I ran in to the problem that after one round, once I went back to the play screen, the score didn't save.

To get around this, I made the game class the controller of the other classes, and used class methods to allow the state to persist through multiple request/response cycles.

To finish off, I made it a first to 2 game, with the option to start a new game afterwards, and added some basic CSS.
