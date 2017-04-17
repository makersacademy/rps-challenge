# Rock, Paper, Scissors, Lizard, Spock

A [Rock, Paper, Scissors, Lizard, Spock](http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_) game built using the Sinatra framework, RSpec and Capybara. A demo is available at https://rpslizardspock.herokuapp.com/. The program makes use of logic tables stored in CSV files to determine the outcome of each round and provides a verb to reflect the interaction.

The game addresses the following user stories:
```sh
As a player
So that I can see my name in lights
I would like to register my name before playing an online game

As a player
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors/lizard/spock
```

# Technologies Used
- Rspec
- Sinatra
- Capybara

# Languages / Mark-up
- Ruby
- Embedded ruby
- HTML
- CSS

# Usage
- Clone the repo
- `cd` to the project folder
- Run `bundle` to install project dependencies

### Testing
- Run `rspec`

### Playing
- Run `rackup`
- Visit `localhost:9292` in your browser

# Screenshots
New game
![play](https://github.com/joemaidman/rps-challenge/blob/master/screenshots/newgame.png)

Playing a game
![play](https://github.com/joemaidman/rps-challenge/blob/master/screenshots/play.png)

End of round evaluation
![play](https://github.com/joemaidman/rps-challenge/blob/master/screenshots/lose.png)
