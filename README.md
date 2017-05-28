# RPS Challenge

[![Build Status](https://travis-ci.org/charlottebrf/rps-challenge.svg?branch=master)](https://travis-ci.org/charlottebrf/rps-challenge)

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

![Image of Welcome page](file:///Users/charlottefereday/Downloads/welcome.webp)

![Image of Play page](file:///Users/charlottefereday/Downloads/play.webp)

![Image of Outcome page](file:///Users/charlottefereday/Downloads/winner.webp)

My approach
----

- **RPS_web** - for the app I sought to have as little exposed code visible as possible. I used the class instance variable @@class to store the game information across requests.
- **Game** - the Game class stores all of the methods that have behaviour associated to the RPS game: #start_game, #win? , #draw?
- **Player** - has a name & is initialized with the Game class. As a future refactor I would like to separate the player's choice of weapon out to the player class to be called on by the Game.
- **Computer** - has a name & is initialized with the Game class, it also randomly generates its #user_choice from it's own class.
- **Victory Calculator** - is responsibility for calculating whether or not the player should win the game. See the spec file for all included edge cases. It is an attribute of Game.
- **Views** - are split into 3 main files which follow the 3 main stages of the game: index (welcome & register name), play(start game) and weapon(finish game).
- **Spec** - tests are separated into Unit (Rspec) & Feature (Capybara) tests.
- **CSS** - for a future refactor I would like to separate CSS into it's own style sheet rather than being embedded in HTML tags as it is now.
