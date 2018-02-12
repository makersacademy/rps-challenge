# Rock - Paper - Scissors Challenge

## Run the app
### Locally
```plain
$ git clone https://github.com/Kotauror/rps-challenge.git
$ cd rps-challenge
$ bundle
```

`$ rackup` then visit http://localhost:9292/ to play the game;
`$ rspec` tests, checking that all tests are passing and test coverage (100%);

### Online
Go to **http://rockspapersscissors.herokuapp.com/**

## User Stories

```plain
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors```

## Classes
SingleGame
- Class methods
  - SingleGame.create : creates a new class instance;
  - SingleGame.instance : returns the class instance of the game class;
- Methods:
  - computer_weapon : picks the weapon for the computer
  - calculate_result : returns result based on rules:
      Rock beats scissors
      Scissors beats paper
      Paper beats rock

MultiGame
- Class methods
  - MultiGame.create : creates a new class instance;
  - MultiGame.instance : returns the class instance of the game class;
- Methods:
  - calculate_result : returns result based on rules:
      Rock beats scissors
      Scissors beats paper
      Paper beats rock

Player
- Attributes
  - name

```
