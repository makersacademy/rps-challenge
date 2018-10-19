# RPS Challenge

## Introduction

'Rock, Paper, Scissors' is a web application that allows users to play 'Rock, Paper, Scissors, Lizard, Spock' against each other or against a computer, who plays randomly. Players can enter their name(s), choose their move(s), see their opponent's move and the result, and play again if they wish.

## My Approach

I test-drove the entire application using RSpec and Capybara.

I aimed to maintain a separation of concerns using the Model, View, Controller pattern, and constraining logic to the model where possible.

In my Model layer, I aimed to follow principles of good object-oriented design, keeping classes and methods to a single responsibility.

I aimed to minimize repetition in my views, re-using the same name-submission, weapon-choice and results pages (with small modifications) regardless of game mode or outcome.

## How to use

1. First, clone the repo, change into its directory and run `bundle install` to install the necessary gems from the Gemfile.
2. In the command line, from the project's root directory, type `ruby app.rb`.
3. In your browser, visit http://localhost:5678 to find the landing page.
4. Click 'Single Player' to start a single player game vs the computer, or 'Multiplayer' to start a two player game with a friend.
5. On the next page, enter your name, and the name of your friend if playing in multiplayer, and click 'Submit'.
6. On the next page, click the button corresponding to your weapon of choice. If playing in multiplayer, you will be redirected to a version of the same page where player two can choose their weapon. No peeking!
7. Once all players have chosen, you will see a results page showing the choices of both players (or player and computer in Single Player mode), and who has won the game. Click 'Play Again' to return to the weapon choice with the same players, or 'Back to Start' to choose a different game mode or new players. If you wish to stop playing, simply close the browser.
