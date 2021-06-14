# RPS Challenge

This challenge consists on createing a TDD web page with the ability of creating a user that can play rock-paper-scissors against the computer.

The whole application was written in Ruby and HTML, with RSpec for Unit Tests and Capybara for Feature tests.

# Approach

I started coding the functionality of the classes that would be needed, such as 'game' and 'player' before I coded the view or controller aspect of it.

# Domain Modelling

![Sequence Diagram](https://raw.githubusercontent.com/frodri13/rps-challenge/master/img/rps-diagram.png)

# User Stories

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```

Our index page takes in the name of the user and redirects him to the play.erb view.
I created two classes, one for the player and another one for the game.
Within the game class, I created a method that gives a random item from an array containing all threee options.

```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Once the user is in the play.erb section, he will be able to choose from Rock, Paper or Scissors with three different buttons.

Each buttons makes a different POST request to the server (e.g. POST /rock ).

For each POST request, I used the attr_accessor method #move with the player object, within the @game variable in order to inform the program which choice the user had made.

After this, I inserted a logic that will redirect the user to the correct final landing page. If they won the hand, they will go to '/winner', if they lost, to '/loser', and if the match was a draw, to '/draw'.
