# RPS - ROCK PAPER SCISSORS Game

A small web app to play a game of rock paper scissors. The program includes
functionality to cover the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Instructions
-------

The app is built using Ruby (v2.4.0) on a Sinatra framework. to run the app,
from the root of the repo, please use bundle to install required gems and then
'Rackup' to start server.

1. git clone git@github.com:henryhobhouse/rps-challenge.git
2. cd rps-challenge
3. gem install bundle
4. bundle install
5. rackup

Functionality

- the user can enter their name before the game
- the user will be presented the choices (rock, paper and scissors)
- the user can choose one option
- the game will choose a random option
- a winner will be declared
