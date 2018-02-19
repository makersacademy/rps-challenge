# RPS Challenge

Completed this as third weekend challenge at Makers Academy

This program lets you play Rock, Paper, Scissors against a computer in your browser.

## How to use

1. Use Ruby 2.5.0
2. Clone this repo
3. Install bundle gem with ```gem install bundler``` in the console (skip this if already installed)
4. Run ```bundle install``` to install the required gems
5. Run ```rackup```
6. In a web browser, visit the localhost port displayed in the console. Follow the instructions in the web browser

### To test code

* Run ```rspec``` in terminal

## Task

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
## My approach

1. With the user stories, I wrote the necessary feature tests which satisfied the user stories.

2. Having written and failed these initial tests, I proceeded to write the least code possible to pass these tests.

3. Once it was clear that the program needed some Ruby objects to keep the views and controller as skinny as possible, I wrote some unit tests for namely for the game and player classes. I then wrote the code to pass these tests.

4. Following this, I further test-drove feature which reset the game.

## Key learnings

* Using Sinatra to set up a web framework
* Structuring the code for apps which have user interaction and visual output
* Testing apps that have user interaction and visual output - namely with Capybara
* Tracing data between the browser and server
* Basics of RESTful APIs

## To complete

* Implement CSS style sheets
* ~~Clean up to pass tests following class reshuffle~~
* ~~Extract 'computer' to a different class from Game to so that classes have single responsibility~~
* Add screenshots to README
* ~~Change to store weapons in a constant - with winning conditions being symbolised in a hash.~~
* ~~Refactor result.erb - moving logic from there to Game class~~
