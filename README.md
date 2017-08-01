# Rock Paper Scissors Game
-------
A simple Sinatra-based web app which allow a player to play a game of Rock Paper Scissors against a computer opponent.

## To run locally:

```bash
git clone https://github.com/sblausten/rps-challenge.git
cd rps-challenge
gem install bundle
bundle i
rackup -p 4567
```

Then enter 'localhost:4567' in your browser address bar.
When you've finished with your game, make sure to close the rackup session by using the Ctrl+C command.

## Basic Rules
----

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## To Do
- Improve styling!
- Make it multiplayer
- Extend rules to [Rock Paper Scissors Spock Lizard](http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock)
