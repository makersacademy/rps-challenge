# Rock, Paper, Scissors
### Makers Academy Weekend Challenge No.3

[![Build Status](https://travis-ci.org/KatHicks/rps-challenge.svg?branch=master)](https://travis-ci.org/KatHicks/rps-challenge) [![Coverage Status](https://coveralls.io/repos/github/KatHicks/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/KatHicks/rps-challenge?branch=master) [![Code Climate](https://codeclimate.com/github/KatHicks/rps-challenge/badges/gpa.svg)](https://codeclimate.com/github/KatHicks/rps-challenge)

![Landing Page](/docs/landing_page.png?raw=true "Screenshot of landing page")

### Instructions

As usual, we were given from the end of the day on Friday until 9am on Monday to complete the challenge.

Challenge was completed independently apart from some small assistance to debug an error with Travis CI. Someone from my course showed me that my version of the rainbow gem needed to be downgraded for Travis to be able to bundle my Gemfile. It is a known bug with Travis, but not usually a problem with Ruby 2.3 (and above).

### Task

The Makers Academy Marketing Array (MAMA) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little. Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

* User should be able to enter their name before the game
* User will be presented the choices (rock, paper and scissors)
* User can choose one option
* The game will choose a random option
* A winner will be declared

You can see the full task and instructions given to us in [CONTRIBUTING.md](rps-challenge/CONTRIBUTING.md).

### Using my application

* Download source code
* Navigate to directory in your command line
* Run `$ bundle` to install all the dependencies listed in the Gemfile
  * Note that you will need Bundler installed to complete this. If you do not have Bundler installed, first type `$ gem install bundler`
* Run `$ ruby app.rb` in the command line
* Go to `localhost:4567` in the browser (preferably chrome)
  * Note that usually runs on `port: 4567`, but could vary. Look at the command line output and replace the port if it runs differently on your machine
* Then, interact with the application as any user
  * Idea is that user types in their name on the landing page, then picks a rock/paper/scissors move on the next page and clicks 'play' after which the move of the computer is revealed and the result is that the user either wins, loses or draws

### Dependencies

* Written in **Ruby 2.4.0**
* Built using the **Sinatra** web framework
* Tested using **RSpec** (for unit testing) and **Capybara** (for feature testing)
* Styled using the **Bootstrap** web framework

### Steps in my development process

* **Setting up my application structure**
  * Started off by initialising my `app.rb` file, my `config.ru` file and my `index.erb` view file.
  * Wrote my first feature test using Capybara and went ahead passing the test
  * At this stage, did not include a model layer in my app and put all the application logic within the `app.rb` file
* **Presenting rock, paper, scissors choices**
  * Next worked on a second feature test that tested whether a user could choose an option
  * Realised that radio buttons would be needed for this sort of form interaction
  * Still no model layer yet
* **Player and computer can choose options**
  * Next dealt with the user interaction and computer randomness
  * Here, started developing a model and wrote a Player and Computer class to deal with these two behaviours and then initialised them within the `app.rb`
  * Developed first unit tests for these two new classes
* **Dealing with a winning outcome**
  * Next developed logic for winning a game
  * Created a Game class to deal with this logic
  * Developed unit tests for this new class and initialised it within the `app.rb` also
* **Refactoring my domain model**
  * Having satisfied all the core user stories, next decided to refactor my code
  * Moved the choice functionality into the Game class and then delegated this behaviour to Player and Computer
  * Restructured the `app.rb` code so that apart from initialising an instance of Player all the logic interactions are with the higher-level Game class
  * Also took this as an opportunity to refactor out a global variable being used in the `app.rb` to be a class instance variable (of the Game class)
* **Styling my code**
  * Next decided to add some styling to my application - added images to first two pages and created a stylesheet that was then linked to all my view files
  * Learnt that all static files (images and stylesheets) need to be stored in a directory name `Public` within Sinatra applications
  * Also downloaded Bootstrap and linked that into my application
  * Added in navigation links so that a user can play multiple games and someone can navigate back to the beginning and type in their name as a new player
* **Accounting for deviant user behaviour**
  * Currently, the app throws an error if the user does not select a radio button (rock, paper or scissors) before pressing play, and pages format badly if the user doesn't enter a name
  * Added a new `error.erb` view file that the app redirects to if no radio button is selected
    * Developed using an if statement in the POST route that checks whether params is empty using `params.empty?`
  * Also, implemented an if statement so that player is given the name 'Anon' if no name is entered
* **Improved styling**
  * Styling of the application in CSS was still quite basic at this stage
  * Used a google webfont (called 'permanent marker') for the main headers to make it more appealing
  * Improved the spacing of elements on the page so that objects were better spaced out and everything was centred correctly
  * Differentiated between navigation buttons and form submission buttons using the Bootstrap button tags - form submissions are 'success' buttons and navigation links are 'primary' buttons

### Ideas for extension

Below is a list of ideas that would have been nice to implement with more time:
* **Allow for two players**
  * Bonus feature in the task set by Makers was to allow for two players
  * Challenge with this is hiding players' choices from each other so that game is fair
* **Integrating additional rules**
  * Second bonus feature set by Makers was to extend the app to use these rules: http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock
