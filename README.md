# RPS Challenge
[![Build Status](https://travis-ci.org/jessmar94/rps-challenge.svg?branch=master)](https://travis-ci.org/jessmar94/rps-challenge)

## Summary
Build out a project that allows one or two players to play rock, paper, scissors on the web. More info on the project can be found here:mhttps://github.com/makersacademy/rps-challenge. 

This project has 19 passing tests with 100% test coverage. The engine for the game is handled by three classes: Player, Robot and Game. The Player holds a players name and choice of move, the Robot holds a default name and a choice of a random move and the Game stores two players and interfaces with the app.

This challenge helps me towards these goals:
- I can write code that is easy to change. 

## Plan
This repository is a Ruby/Sinatra implementation of the following user stories:
```bash
As a user
So that I can see my name in lights
I would like to register my name before playing an online game
```
```bash
As a user
So that I can enjoy myself away from the daily grind
I would like to be able to play Rock/Paper/Scissors against the computer. 
```
```bash
As a user
So that I can feel glorious if I win, 
I would like to see who won the game at the end. 
```
```bash
As a user
So that I can enjoy myself away from the daily grind
I would like to be able to play Rock/Paper/Scissors against a friend. 
```
## How to Install and Run 
To play the game first clone this repository and move to the directory the repo has been cloned to.
```
git clone https://github.com/jessmar94/rps-challenge
```
To see the repository in action first install the dependencies by running
```
bundle install
```
and then load the webpage by running
```
rackup
```
Navigate to localhost:9292 in your web browser to play the game.

## How to Run the Tests 
1. Run the command rspec in the terminal.

## Project Status 
As of 8th October 2019, all user stories have been implemented. 
Next, I would like to add a feature which gives the player a point if they win and the game is best out of 5. I would like to update the basic CSS currently implemented and add some images to the game. I will need to move my CSS into a separate file and call the relevant file within the relevant views files.
