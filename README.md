# RPS Challenge

Task
----


```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Hints on functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

___

Installation
---


```
$ git clone git@github.com:MatthewBurstein/rps-challenge.git
$ bundle
$ rackup
```

Playing the game
---
Sign in:
![Sign In](https://dl.dropboxusercontent.com/s/f7qwpr02zflrv0j/rps_sign_in.png?dl=0)

Play:
![Play](https://dl.dropboxusercontent.com/s/jcro3hj06kye6hy/rps_play.png?dl=0)

Win:
![Win](https://dl.dropboxusercontent.com/s/ez26z0fzkxnvlkh/rsp_win.png?dl=0)


Draw:
![Draw](https://dl.dropboxusercontent.com/s/n5usdohxbus9tnw/rps_draw.png?dl=0)

Lose:
![Lose](https://dl.dropboxusercontent.com/s/fg2hryxfqo561if/rps_lose.png?dl=0)

Approach
---
I decided that in order to have a MVP I wanted to have as much as possible of the logic and testing in place in both the back end and the front end before working on the user interface.

I followed the usual BDD/TDD approach to creating the logic behind the app, and tried to be as thorough as possible in testing edge cases.

My design decisions were in part made with a view that the app might be extensible as, given more time it would interesting to consider similar games with different rule sets.

While I was able to implement the required core functionality, I have not been able to add to the HTML and CSS in the timeframe allowed. This is certainly something I would look to improve were I to continue working on the app.
