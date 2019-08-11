# RPS Challenge
```
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)

 ```

```
      _______
---'    ____)____
           ______)
          _______)
         _______)
---.__________)
```

```
    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)
```

## Client Request

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

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## How to Use
Load up the server using rackup.
Log onto the port given.
Input your name.
Make your selection by clicking on rock, paper or scissors.
Keep playing till you are bored.

## Methodology
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```
This user story was easier to implement. I started with a test which checked whether after a name being filled in and submit being clicked on the name was shown back. This then led to me editing the feature to pass the test.

```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
The second user story was much more high level so I had to break it down into smaller steps.
The user should be able to make a selection and for it to be shown.
The opponent should be able to make a selection.
The winner should be displayed.

Creating the tests first definitely helped simplify the process although I did add some extra functionality afterwards with a win count and had some fun with the styling.

I then had some heavy refactoring to do to slim down my classes and controllers.

## Changes to Implement
Change the game so that two marketeers can play against each other
Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )




