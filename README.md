# Rock Paper Scissors (Spock Lizard) Challenge

This programme is based on the Makers Academy weekend challenge 3. [Click here for the original README.md](ORIGINAL_README.md).

Task
----

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```
```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

As the marketeers want something more extensive than just the usual rock, paper & scissors game, I have extended functionality to include the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ ), which adds the Spock and lizard options.


How to use the program
-----

### Installing ###

1. Clone this repo to your local computer
2. Run the command gem install bundle (if you don't have bundle already)
3. Run the command 'bundle' in the project directory to ensure you have all the necessary gems

### Running ###

This programme is run on a web browser using Ruby and the Sinatra library in the back end.

To run the programme, execute the following in terminal:

```
$ rackup config.ru -p 4567
```
Then go to the relevant port in your browser of choice, eg using the url http://localhost:4567/.

RSpec and Capybara have been used for testing purposes. Feature and unit tests can be found in the spec directory.

## Further objectives ##

The following is a list of objectives I aimed to achieve, in addition to the user requirements:

  * Follow the TDD process, and have all tests passing
  * High test coverage (>99%)
  * Elegant code: every class has a clear responsibility, methods are short etc.
  * An option to play again after a game has finished
  * Incorporation of both single and multiplayer options

## Features to be added ##

In the future, I would like to implement the following features:
- Score tracking
- Ability to switch between a game using just Rock, Paper, Scissors, and having the additional Spock and Lizard options