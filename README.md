# Rock Paper Scissors Challenge

The Makers Academy Marketing Array ( **MAMA** ) want a game provided for them. Their daily grind is pretty tough and they need time to let off a little steam.

The aim of this challenge is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web.

Full instructions can be found in challenge_instructions.md

## Approach

We were given two user stories to guide us on functionality:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

I'm going to implement the user stories in the order above. The first version of the web app allows a user to submit their name and have it displayed and the second version will allow them to play a game of _Rock, Paper, Scissors_ against the computer.

### Version 1 - registering names

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```

The steps I'll test drive to build this version are:

1. create an index page with a name submission form
2. POST that information to a battle page displaying the player's name

### Version 2 - playing a game of _rock, paper, scissors_

```sh
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

The steps I'll test drive to build this version are:

1. create an form that allows user to select a move
2. POST that information to a move page displaying the player's name
3. Use global variables to store information on names and moves
4. Describe win/lose/draw conditions for each move option
5. Extract Player and Game class to model
6. Use class methods to remove use of global variables

### Version 3 - making it look good!


**I didn't manage to get to this step, but would have used CSS to spice play.erb up**
The first 2 versions implement the desired functionality, but our marketeers want to see their name 'in lights' and be transported from the daily grind, so this version makes our web app look good!
