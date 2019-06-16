# RPS Challenge

It's a Rock, Paper, Scissors little web app.  
Weekend challenge number 3 from Makers. The original README of the challenge can be found in the repo.

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

Instructions
-------
- Fork this repo
- Run the command `bundle` in the project directory to ensure you have all the gems
- In a terminal run the the server with `rackup` and navigate to the browser with the localhost and port.
- Enjoy the game


Challenges
-------
- Not so many this week. Kept it simple.
- `Winner` is a class in this implementation but thought it could be a module. However tests for some reason kept failing so made it a class.
- Designed it so extending it to two players should be (relatively) straight forward. I might extend this functionality in a separate branch.
- Until we introduce the concept of a database I have stored `Game` as a session variable. I thought this better than as a global variable.