#RPS Challenge#

[![Build Status](https://travis-ci.org/RBGeomaticsRob/rps-challenge.svg?branch=master)](https://travis-ci.org/RBGeomaticsRob/rps-challenge) [![Coverage Status](https://coveralls.io/repos/RBGeomaticsRob/rps-challenge/badge.svg?branch=master)](https://coveralls.io/r/RBGeomaticsRob/rps-challenge?branch=master)

##Overview##

The end of the 3rd week challenge at Makers Academy.

The Makers Academy Marketing Array have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

The user stories have been extracted below:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors in my browser
```

##MVP Roadmap##

- MVp1(a) - A marketeer can sign in, be greeted, select rps, the game will select a random option, a winner will be declared. In the terminal

- MVp1(b) - As MVp1(a) but running in a browser without formatting.

- MVP1 - Unformatted playable game in the browser

- MVp2(a) - Multiple marketters can sign in, be shown their names, select rps and be shown the winner. In the terminal.

- MVp2(b) - Multiple marketters can sign in, be shown their names, select rps and be shown the winner. In Browser

- MVP2 - Non formated multiplayer in the browser

- MVp3(a) - Game logic expanded to RPSLS. In terminal.

- MVP3 - Multiplayer playable RPSLS game in browser.

- MVP5 - Multiplayer formatted playable RPSLS in browser.

- MVP5 - Multiplayer formatted playable RPSLS on the web.

##Domain Design##

This project is being developed in a BDD approach and therefore the domain design below will emerge as it develops, the classes identified in the process are:

- Player - Responsible for allowing a player to make a move
- Game - Responsible for processing the result


##Testing##

The development will be test driven using both Rspec and Cucumber with Capybara for both the ruby business logic and web interface testing.

##OOP##

I will be trying to implement the ruby adhering to SOLID principles and trialling techniques learnt so far.

##Structure and Styling##

This is a first attempt at HTML structuring and CSS styling a web application from scratch. Hence I will be trialling as many elements as possible in the commits and heading for both a positive UX and UI in the final MVP.

##Contributing##

This is a challenge set to identify progress in Wk3 at Makers Academy, therefore is designed to be tackled individually.

However comment on the quality of the code and it's implementation would be very welcome.

