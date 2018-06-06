Rock Paper Scissors Challenge
=================


The task
---------

This is my response to the third weekend challenge at Makers Academy, to build a simple Rock Paper Scissors Sinatra web app in Ruby (2.5.0), using a TDD approach with RSpec (3.7.0) and Capybara (2.17.0). The player should be able to enter their name, select rock, paper or scissors, and see the outcome of their game against the computer, according to the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Instructions on additional functionality were as follows:

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared


How to use
---------
* Fork this repo, and clone to your local machine
* Run the command `bundle install`
* From the rps-challenge directory, run `rackup` or `ruby app.rb` to get the server running
* Navigate to localhost:9292 (if using `rackup`) or localhost:4567 (if using `ruby app.rb`) in the browser


Demo
---------
1. Player enters their name
![Player enters their name](https://github.com/simone-smith/rps-challenge/blob/master/screenshots/:index.png)


2. Player chooses rock, paper or scissors
![Player chooses rock, paper or scissors](https://github.com/simone-smith/rps-challenge/blob/master/screenshots/:play.png)

3. The result is declared
![The result is declared](https://github.com/simone-smith/rps-challenge/blob/master/screenshots/:result.png)
