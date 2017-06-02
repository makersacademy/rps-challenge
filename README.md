# RPS Challenge

[![Build Status](https://travis-ci.org/charlottebrf/rps-challenge.svg?branch=master)](https://travis-ci.org/charlottebrf/rps-challenge)

Technologies
-----

## Install

* Bundle install Gemfile dependencies

```bash
 $ bundle
 $ gem install bundle

```

* Ruby v '2.4.0'

```bash
$ rvm install 2.4.0
$ rvm use 2.4.0

```

## Run

* Using Rackup on local host
```bash
$ rackup

```

Test coverage
-----
```
* Test coverage: 95%
* Rubocop: 0 offences
* Capybara feature tests
* Rspec
```

Task
----
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

Images from the Game
----
![Imgur](http://i.imgur.com/UrTsdaO.png)

![Imgur](http://i.imgur.com/CxaojEQ.png)

![Imgur](http://i.imgur.com/qcWCgBw.png)
----
My Approach
----
- **RPS_web** - I kept the controller as skinny as possible. I used class instance methods to store the game information across requests.
- **Game** - Game class stores all of the methods that have behaviour associated to the RPS game: #start_game, #win? , #draw?. It is dependent on Computer & Victory Calculator classes.
- **Computer** - Computer class has a name & is initialized with the Game class, it also randomly generates its #user_choice from it's own class.
- **Victory Calculator** - Victory Calculator class is responsibility for calculating whether or not the player should win the game. See the spec file for all included edge cases. It is injected as an attribute of Game. This was extracted as a separate class from Game, you can read about this process on my blog [here](https://medium.com/@charlottebrf/makers-academy-day-19-b70d57da4918).
- **Views** - Split into 3 main files which follow the 3 main stages of the game: index (welcome & register name), play(start game) and weapon(finish game).
- **Spec** - Tests are separated into Unit (Rspec) & Feature (Capybara) tests.


Future Improvements
----
- **Game** - As a future refactor I would like to separate the player's choice of weapon out to the player class to be called on by the Game.
- **CSS** - For a future refactor I would like to separate CSS into it's own style sheet rather than being embedded in HTML tags as it is now.
- **Multiplayer** - I would like to make this a multiplayer game.
- **RPS, Lizard, Spock** - I would like to extend my game logic to include [Lizard & Spock](http://bigbangtheory.wikia.com/wiki/Rock_Paper_Scissors_Lizard_Spock).
- **Shotgun** - Change configuration to effectively use Shotgun rather than Rackup, to save time. 
