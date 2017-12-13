# Rock-Paper-Scissors Challenge
## Week 3 Weekend Challenge

#### Introduction

Building on the week three challenge, this weekend's task was to create a simple Rock-Paper-Scissors game, allowing a user to enter their name, make a selection, be informed of the result of the game, and play again if they wish to.

The goal of the challenge was to get students used to using the Sinatra framework to build simple web applications, following on from the [battle application](https://github.com/peterwdj/Battle) we had built during the week, with clearly defined responsibilities between classes, and encapsulation of business logic within models rather than views or controllers.

This was built using TDD, with the testing frameworks Capybara and RSpec for the feature and unit tests respectively.

#### Running the application

To run this application, start a local server using a tool such as Rackup, and visit that server to play the game. Good luck!


#### Challenges

One of the problems I encountered during this task was that it became apparent that I was not 100% clear on the difference between unit tests and feature tests, and so ended up testing some of the logic within feature tests. This came out during the group code review, and I now feel comfortable on the differences between the two.

For the most part, the rest of the challenge was simple enough, being a more basic version of the week's Battle task (see above). The one part that caused a brief headache was giving the user the option to play again, and persisting their name rather than resetting their name without an option to add another one, and without keeping the computer's choice the same. I solved this by reorganising when certain actions took place in my controller file, and using class variable and methods to persist data across different routes in the application. 
