# Rock, Paper, Scissors, Lizard, Spock
This is a program that let's you play rock, paper, scissors, lizard, & spock, with either one or two players.

### How do I Use it?
Clone this repo. Run the ruby file `app.rb`, this will start your server. Then in your browser go to localhost:4567.

This game is suitable for either one or two players:

#### Single Player
To start the game, enter your name under the heading single-player, and click "Let's Play". You will play against the computer. You can pick your weapon on the following page: rock, paper, scissors, spock or lizard.

Once your weapon is submitted, you will then be redirected to a page that confirms your move and the computer's move. This page will also tell you who won.

#### Two Players
To start the game, please enter both names under the heading multi-player, and click "Let's Battle". You will play each other. Player 1 can pick their weapon on the next page: rock, paper, scissors, spock or lizard. Player 2 picks their weapon the following page.

Once both weapons are submitted, the players will be redirected to a page that confirms player1 and player2's move. This page will also tell you who won.

### Running the tests
The tests for this program use rspec and capybara, so simply run rspec from within this directory. You can also run Rubocop from the same place.

### Known Issues
* Rubocop indicates that the player1_win? method is too complex. I have been unable to refactor it further to date, but I will continue to work on this issue.
