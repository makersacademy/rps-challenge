STEP 1
- Determine the project structure (main folders and files)
- Install gems
- Set up Sinatra and Rackup, make sure that you're able to run the server

STEP 2
- Start creating your rps app
- First route (/) will 1) welcome the player, 2) ask for their name, 3) invite to start the game (this button will redirect the player to the next route(/game)
- Create Capybara tests to set the expectations
- Make the tests pass

STEP 3
- Create a POST route to store the name and redirect the player to the game page
- Game page should have content: 'Hi <%=> @player <%> what's your move?' and a form to insert rock, paper, scissors
- Build capybara tests and make them pass
- Enable sessions

STEP 4
- create another POST route to store the move and redirect to the brand new '/result' route
- build Player class that takes @name, @player_move and as instance variables
- build Game Class that is initialized with an instance of the class @player and has a @random_move (this is the automated move) instance variable
- Inside Player class define method move that takes an argument(player move) and changes the Player @move value
- Inside Game class define a method play that uses Player's @move and Game's @random_move and makes the game take place
