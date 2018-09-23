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
Game rules
---

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock
- Lizard beats Paper
- Lizard beats Spock
- Spock beats Rock
- Spock beats Scissors
- Rock beats Lizard
- Scissors beats Lizard
- Paper beats Spock

Approach
---

- Using TDD, I started by creating a web app that allow the user to enter their name and choose rock, paper or scissors.
- I then created a file called game.rb which contained the game logic.
- I also added a player class to allow the user to have a name
- I added a computer class which choose an option randomly.
- I then added a result page which would declare the winner
- I added a button that allows the user to play again
- I added the option to play a multiplayer game: 2 players can add their names, each choose an option and then see the winner
- I then added 2 options to the game: lizard and Spock
- I added the option to start a new game after a game ends
- Having finished implementing its functionality ,I used css to make it look nice


[Play now!](https://stark-journey-20582.herokuapp.com/)
