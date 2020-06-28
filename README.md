# RPS Challenge

This site delivers a simple Rock, Paper, Scissors game with an interactive prompt for the users name.

Userstories
-----

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Assumptions
-------

* The site will only display text and buttons (no images) to meet the requirements.
* There will be three sites, a welcome screen, a game screen and a results screen.


Site Design
-------

* Rock, Paper, Scissor buttons will be in spearate forms that will route to a POST for each option.
* After executing the 'go' the site will redirect to the 'results' page that will display win, lost or draw status.
* There will be a button to return to the game screen from the result page.
* The result page will use the text in the Game class result variable to show the outcome. 

Game Design
-------

* A new instance of Game class will be created with the player name from the welcome screen.
* The name variable be accessed through an attribute reader ('name').
* Rock, Paper, Scissor buttons will execute the 'go' method with an input for the relevant choice.
* The 'go' method will call the provate method 'computer_pick' that will return a random pick for the computer go.
* The 'calculate_winner' method will take the player and computer choices and update the @result instance variable with text showing the result.
* The '@result' text can be read to populate the webpage.

Test Instruction
-----
* Tests are implemented using rspec and capybara gems. The tests are located in the spec folder and can be excuted by running the 'rspec' command from terminal within the project directory. 

Test Coverage
-----
```
COVERAGE: 100.00% -- 35/35 lines in 2 files
```

Usage Example
-----
* Welcome Page - Enter your name and click
![Welcome Page](images/welcome.png?raw=true "Welcome Page")

* Game Page - Click rock, paper or scissors button to play.
![Game Page](images/game.png?raw=true "Game Page")

* Result Page - Click 'New Game' to play again.
![Results Page](images/result.png?raw=true "Results Page")

Follow Up
-----

* Game class needs to be split, it currently stores the player name and handles the game.  This does not comply with SRP.
* Game class result variable has text showing the result.  The result should be returned as a state and the site or app can then fromat the result depending on the site/app requirement.


