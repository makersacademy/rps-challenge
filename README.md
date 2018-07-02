# Rock Paper Scissors

___

## Summary

Week 3 Makers Academy weekend project to develop a game of rock/paper/scissors.</br>
[Full instructions and user stories here.](https://github.com/makersacademy/rps-challenge/blob/master/README.md)
___

## Credits

Developed solo by Elishka Flint (with amendments suggested by [Nabil Far](https://github.com/bilfar) during a code review)
___

## Learning Outcomes

### Topics Covered

The project drew together a number of topics covered in the previous 3 weeks:
* Web applications
* The MVC model
* Test-Driven Development using Rspec and Capybara
* Object-Oriented Programming
  - classes, methods, scope, instance variables
  - ensuring code is DRY
  - using Single Responsibility Principle

### Personal Reflection

I was quite time-pressured for this weekend project so was pleased with the outcome I achieved in a short amount of time.
I learnt how feature tests and unit tests come together to enable a structured approach when developing the various aspects of an application.
This was the first project where I've been able to isolate my unit tests, which was hugely satisfying.
___

## State of Completion

### Implemented Functionality

* Basic 2 player game of rock paper scissors
* Players rerouted if they submit an invalid string (eg. 'roc')
* Some use of CSS to make the app a pleasant user experience
* Use of class methods (instead of global) variables to enable information to persist between controller routes
* Model functionality tested using RSpec; all classes fully mocked using RSpec doubles
* All feature functionality tested using Capybara

### Further Improvements

* Change the player choice submission from a text input to a button (thereby removing need to check whether user has submitted a valid choice)
* Implement a switching function to remove the need for first_move and second_move routes
* Allow user to select a single- or multi-player game up front where a single-player plays against a computer generating a random choice
* Ensure all rubocop tests are passing
___

## Technical

### Tech/Framework Used

Ruby, Sinatra, HTML, CSS, RSpec, Rubocop, Capybara, Rackup
____

### Launching the Application

```
$ git clone git@github.com:elishkaflint/rps-challenge.git
$ cd rps-challenge/rock-paper-scissors
$ bundle
$ rackup
```
____
