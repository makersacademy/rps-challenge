# RPS Challenge

Task
----

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
- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## My approach

I have decided to create 3 classes
- game - responsible for adding weapons and setting results of the battle;
- computer - create computer
- player - create a player

This app was created to practice building applications with Sinatra framework, learning where and when to send post and get requests and creating corresponding views.
I created very basic app, and run out of time to make it beautiful and fully functional. I had problem with the server which was frozen, and I lost a lot of time for it. Now I know that 'fg' command fix such issues. Back then I thought it was problem with my app. Lesson learnt!
The areas for improvement are views which are very basic and need some styling. Also game cannot be restarted. When there is a winner or there is a draw, game finishes and to play it again user has to go back to main page manually.

## Instructions

Run
```
bundle install
```
Use rackup to open the app in the web browser
```
rackup config.ru
```
Enter the local-host into your web browser to start the game
```
http://localhost:9292
```
