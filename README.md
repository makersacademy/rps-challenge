# RPS Challenge

Task
----

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
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

Feedback on the challenge

In this app, the app chooses for the Marketeer randomly. It is not the Marketeer that makes his choice. Except this, all users stories have been impletemented. To implement the ability of choosing one option for the marketeer, I would have created three buttons 'rock', 'paper' and 'scisors' and from it the user would have been redirected to a different page that takes into account his choice. The app would next choose one randomly and then run 'who_wins?' method to determines who's the winner.

In this app, the game class is responsible for temporarily save user and IA selections and determining a winner. The player class is responsible for saving player's names and scores.