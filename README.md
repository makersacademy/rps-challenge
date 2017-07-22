# RPS Challenge

Instructions
-------
```
$ rackup
```
Navigate to "localhost:9292" to begin the game.

Approach
----
The two user stories provided for this challenge:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

are fairly light on detail, so I expanded them out into a few more specific stories:

```
As a lonely marketeer
So that I can find some entertainment in my solitude
I would like to have a computer opponent to play against

As a marketeer
So that I can begin a game of rock/paper/scissors
I want to be able to select an option to play

As a marketeer
To keep my game of rock/paper/scissors thrilling
I would like my computer opponent to select an option at random

As a marketeer
So that I can know both the thrill of victory and the sorrow of defeat
I want to know who has won the game

As a marketeer
So I can continue to procrastinate
I would like an option to return to the beginning and play again
```

I then began to implement these stories one by one using TDD.
