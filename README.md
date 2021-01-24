# Rock Paper Scissors Challenge

Task
----
This was the 3rd weekend challenge for Makers Academy bootcamp.

The premise:
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

Solution
----
This is a Ruby app using the Sinatra web framework. I used Rspec for testing (TDD), with Capybara for the feature tests.
In the model, the Game class is in charge of the Players and working out who won. The Player class, and its subclass PlayerBot, have names and choose one of rock, paper or scissors. Playerbots pick randomly while the user chooses for their Player by clicking on an HTML form button.

I added a bit of basic CSS to make it look nice.

It looks like this:
![start page](/public/home_page.png)
![about to choose](/public/about_to_choose.png)
![lost the game](/public/results_lost.png)
![game was a draw](/public/results_draw.png)


