# Rock Paper Scissors Web App

Description
-------

This is a simple web app, built using sinatra, that allows a user to sign in by adding their name and play a game of rock paper scissors against the computer.

User Guide
----
Before you can run the app, perform the following actions:
1. Fork this repo
2. Run `bundle install` from root directory
3. Start the app running locally by entering `rackup -p 9292` from the root directory

Now you're ready to play
1. Open a browser and go to `localhost:9292`
2. Enter your name and hit submit
3. Click on the 'Rock Paper Scissors' button
4. Select rock, paper or scissors and see if you beat the computer

Tests
----
This app has a suite of unit tests (written using rspec) and functional tests (rspec and capybara). You can run the tests by entering `rspec` from the command line in the root directory.

Further Development
----
I began working on implementing multiplayer but did not complete this in time. You will notice from /games that you have the option to go back to the home page and sign in more players. The /games page also prints out a list of players currently signed in. There is a second branch in this repo called 'adding_multiplayer' where I had begun to work on allowing the user to select two players from those currently signed in before starting Rock Paper Scissors. The plan was that player 2 would default to the computer if no second player was selected, otherwise the game would give both players a chance to pick their move and then return the result.
