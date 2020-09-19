# RPS Challenge

Notes
-------
* The app.rb needs a refactor to ake the if statements out of the rock, paper and scissors get methods.
  * I tried to do move it into the game class, but the redirects became an issue.
  * Even when you create a method that returns something to trigger a redirect in the app.rb, it still needs an if statement and does not slim it down / DRY it very much.


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
