## Rock, Paper, Scissors - weekend challenge week 3

Instructions:
 - Build a _Rock, Paper, Scissors_ game<br>

Functionalities

- the player should be able to enter their name before the game
- the player will be presented the choices (rock, paper and scissors)
- the player can choose one option
- the game will choose a random option
- a winner will be declared

### My approach 
[![Build Status](https://travis-ci.org/Debora38/rps-challenge.svg?branch=master)](https://travis-ci.org/Debora38/rps-challenge)

| Noun | Functionality |
|----|----|
| RPS | Run page |
| Player | @name |
| Game | Calculations |

I decided to run the program via RPS (Rock, Paper, Scissors) class, storing the values needed in different routes through sessions.<br>
The Player enters his name and it's stored in his instance variable in `Player` class, while his choice is passed to the `Game` class, where Computer makes his move and the calculations for the winner are stored.

### Sign-up page:
<img src="https://github.com/Debora38/rps-challenge/blob/master/docs/rps-signup.png?raw=true" alt="rps-signup" width=70%>

### Game:
<img src="https://github.com/Debora38/rps-challenge/blob/master/docs/rps-play.png?raw=true" alt="rps-game" width=70%>

### Results:
<img src="https://github.com/Debora38/rps-challenge/blob/master/docs/rps-result-win.png?raw=true" alt="rps-result-win" width=60%>
<img src="https://github.com/Debora38/rps-challenge/blob/master/docs/rps-result-lost.png?raw=true" alt="rps-result-lost" width=70%>
<img src="https://github.com/Debora38/rps-challenge/blob/master/docs/rps-result-draw.png?raw=true" alt="rps-result-draw" width=50%>
