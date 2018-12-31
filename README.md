# Rock, Paper, Scissors
This is a game that let's you play a game of rock paper scissors against the game.

### How do I Use it?
1. Clone this repo `https://github.com/Caitlin-cooling/rps-challenge.git`
2. Run `bundle` to install all gems
2. Run the ruby file `app.rb`, this will start your server. Then in your browser go to `localhost:4567`, where you will see the index page of the app

![alt text](./public/homepage.png)

This game is suitable for either one or two players:

#### One Player
You will be asked for your name, and you will be playing against the computer. You will be able to pick the move that you would like to make; rock, paper or scissors.

You will then be redirected to a page that confirms both your and the computers moves, and let's you know you who won. Click try again to restart the game.

#### Two Players
You will be asked for the names of the two players. Once these has been entered you will be told who's turn it is and they will get to choose the move that they would like to make; rock, paper or scissors. Then it will be the next persons turn to do the same.

You will then be redirected to a page that confirms both moves and let's you know you who won. Click try again to restart the game.

### Running the tests
The tests for this program use rspec and capybara, so simply run `rspec` from within this directory.

### Linting
The code is linted with Rubocop, run `rubocop` from within the directory to see offences.

### Known Issues
* I am aware that setting the moves conditionally in the post /results route could perhaps be done more effectively
