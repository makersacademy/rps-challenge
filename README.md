Rock-Paper-Scissors Challenge
=================

```
    _______             _______                  _______
---'   ____)        ---'   ____)____         ---'   ____)____
      (_____)                 ______)                  ______)
      (_____)                 _______)               __________)
      (____)                  _______)             (____)
---.__(___)        ---.__________)           ---.__(___)

```

## Implementation

Functional representation of user requirements:

[Check out my workflow mindmap](https://github.com/CorinneBosch/rps-challenge/blob/main/public/images/workflow.png)

## Setup

1. **Fork** this [rps-challenge repository](https://github.com/CorinneBosch/rps-challenge.git) 
2. Then clone **your** fork to your computer.
3. Ensure you have `Ruby` and `rspec` installed. 
4. Run `gem install bundler` if you dont have bundler.
5. Once installed, run `bundle`.

## How to run

To interact and play rock-paper-scissors web app, run `rackup` or `ruby app.rb` to start `localhost`.

## Run test 

To test specific features in your terminal.
```
$ rspec spec/unit/file_name.rb
$ rspec spec/feature/file_name.rb
```
To test all units and features at once in your terminal.
```
$ cd rps_challenge
$ rspec
```

## The RPS challenge is built upon the following user stories:

Knowing how to build web applications is getting us almost there as web developers!

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
Hints on functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

Source of original Repository: [Makers Academy GitHub](https://github.com/makersacademy/rps-challenge)
