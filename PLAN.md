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
- Build capibara tests and make them pass
