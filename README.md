# Rock, Paper, Scissors, Lizard, Spock #
This is a web application for playing rock, paper, scissors, lizard, spock against the computer.

## Prerequisites ##
* Ruby 2.5.0
* Bundler 1.16.1

## How to Use ##
1. Clone the repository using a command line interface of your choice.
```
git clone https://github.com/aimeecraig/rps-challenge.git
```

2. Navigate to the repository root.

3. Run Bundler to install the project dependancies.
```
bundle install
```

4. Start the program by running Rackup.
```
rackup
```

5. Access the application at [localhost:9292](localhost:9292).

## Rules ##
* Scissors cuts Paper
* Paper covers Rock
* Rock crushes Lizard
* Lizard poisons Spock
* Spock smashes Scissors
* Scissors decapitates Lizard
* Lizard eats Paper
* Paper disproves Spock
* Spock vaporizes Rock
* (and as it always has) Rock crushes Scissors

## User Stories ##
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Test Coverage ##
To run unit tests, use the following command:
```
rspec
```
This will produce a report as seen below.

![https://github.com/aimeecraig/rps-challenge/tree/master/public/tests.png](https://github.com/aimeecraig/rps-challenge/tree/master/public/tests.png)

_COVERAGE: 100.00% -- 136/136 lines in 7 files_