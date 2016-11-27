# Rock, Paper, Scissors

This is a web version of [rock, paper scissors](https://en.wikipedia.org/wiki/Rock%E2%80%93paper%E2%80%93scissors).

## Approach
This app consists of 3 classes of object:

* Game: manages the interaction between players
* Player: takes a user-submitted name and can select a weapon.
* Computer Opponent: takes a random name and random weapon.

Additionally, there is a Weapons module. This module contains a hash in which the keys are the name of the weapon, and the value shows which weapons beat that weapon e.g.

`rock: :paper`

Shows that there is a rock in the Weapons hash, and that rock is beaten by paper. 

Dependency injection is used in the game itself to load the Weapons module. Because of this, it would be very easy to change what weapons are available to players: only a new module containing key-value pairs would be needed. Because of this, it would be extremely easy to extend the game to encompass [variations](https://en.wikipedia.org/wiki/Rock%E2%80%93paper%E2%80%93scissors#Variations).

Additionally, at present the behaviour of the computer player is random. An interesting extension of the app would be to make the behaviour of the computer player reflect research about how to win [rock, paper, scissors](http://www.bbc.co.uk/news/science-environment-27228416).

## How to Install
Clone or download this repo to your computer and run `bundle install`. This requires be able to use [bundler](http://bundler.io/).

## Getting Started
Run `ruby app.rb` in the directory you cloned or downloaded this repo to. This will start a [Sinatra server](http://www.sinatrarb.com/) locally. Navigate your preferred browswer to `http://localhost:4567` (assuming you haven't reconfigured Sinatra).

## How to Play
Enter your name to start playing. The app will greet you and prompt you to generate your computer opponent.

When you've done that, You will have a choice of weapons. Select a weapon from the dropdown and click 'Submit'.

On the next page, the app will prompt you to find out who won. Click through to find out.

## Authors
* [Oscar Barlow](https://github.com/oscar-barlow)

## Contributing
Please feel free to fork this repo and submit a pull request with changes. Thanks in advance!

## License
This software is distributed under the GNU-GPL 3.0 license. More details in the [docs](https://github.com/oscar-barlow/rps-challenge/tree/master/docs).