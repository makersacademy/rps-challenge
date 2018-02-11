# RPS Challenge

Task
----

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Approach
----

- I began by creating feature tests for each feature I wanted my program to have (e.g. Player can enter their name, player can choose their weapon).

- I tried to follow Separation of Concerns as much as possible, which led me to create separate Ruby classes for Game, Player and Computer.

- Once I had the full functionality working, I created css files to style the public interface.

To run program
---
1. Clone this repo
2. Run `bundle` in the terminal
3. Run `rackup` in the terminal
4. In a browser, go to http://localhost:9292/
