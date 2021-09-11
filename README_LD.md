Task
----

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Plan
----
* `/` root page --(GET request) 
  * views: play game button and field for name 

* `/name` page --(POST request)
  * views: no view, redirect to `/play` page

* `/play` page --(GET request)
  * views: rock paper scissor shapes as links

* `/result` page --(GET request)
  * views: you won / you lost / play again

* `game.rb` model - computer provides random answer RPS, compared to shape player clicked on