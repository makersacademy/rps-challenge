# RPS Challenge

Task
----

The Makers Academy Marketing Array (MAMA) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock


##Approach

My approach was to get the basic infrastructure working and then to fulfil the  first user story with initial capybara tests and then creating the controller and index view to pass them. I then focused on the model of the game knowing I wanted choices to be stored within instances of both the Player class and Computer class. The Game class has a method to return the string announcing the winner so there is no logic within the view files.


##Further Improvements

The main thing I would improve is the removal of the global variable as this is basically coding blasphemy and then I would like to add more images and styling to the pages. If I was to further the game and allow 2 players to play I would change the submit button on the index page to 'Play vs Computer' and then add a new form for player 2 to fill out their name and the submit button would be 'Start 2 Player Game' which would post to a new page creating a game with 2 player instances before redirecting to '/game'.


##Tech Stack

Ruby 2.6.5
Sinatra
HTML
CSS
RSpec
Capybara
