This is a simple, gif-based rock paper scissors web game built for the Makers Academy Marketing Array ( **MAMA** ). Their daily grind is pretty tough and they needed time to steam a little. Marketers like their names in shiny lights we were told.

![sign_in_page] (sign_in_screenshot.png)
![game] (game_screenshot.png)

To run the app locally:
1. Bundle install
2. Use ruby app.rb command
3. Navigate to localhost:4567

Note: you need connection to the internet for gifs to show.

The structure of the app follows the model-view-controller pattern. There is only one Game class, implemented as a singleton. It was felt the game is simple enough to be handled by one class only without violating the single responsibility principle. The play.erb and index.erb files serve as the 2 views used in the web app. The app.rb file is the contorller. Prettiness is defined in the corresponding play.css and index.css files, stored in the public folder.

You can use rspec to test the application. There are unit tests for the model and feature tests for the application, implemented using Capybara.

Sinatra is used as the server.

Credits:
The gifs all come from Giphy.com
The awesome shiny lights name effect can be found on http://enjoycss.com/
