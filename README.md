RPS Challenge
=================
[![Build Status](https://travis-ci.org/barrygrubb/rps-challenge.svg?branch=master)](https://travis-ci.org/barrygrubb/rps-challenge)

Introduction
---------

The intention of this project was to build a working implementation of the popular game Rock, Paper Scissors. Additional rules were added to introduce two further player choices; Lizard and Spock, as per the rules invented by [Sam Kass and Karen Bryla](https://en.wikipedia.org/wiki/Rock-paper-scissors#Additional_weapons).

This is a solo project created for the Makers Academy week 3 weekend challenge.

This project was built using Ruby, and was structured around the Sinatra framework. The Rspec testing framework was implemented to provide feature and unit testing capabilities, and Capybara was included to allow for testing of front-end elements.

The learning intentions for this project revolved around Sinatra, Rspec and Capybara, and at this point in the Makers Academy curriculum databases have not yet been covered. Due to this global variables have been implemented throughout to assist with persistence, although we have been made well aware that the use of global variables is far from best practice, and that once databases have been addressed we should no longer use them in almost all circumstances.

Instructions
---------

In order to test this project locally please proceed as follows:

* Firstly in terminal git clone the repository using...

```
git clone https://github.com/barrygrubb/rps-challenge.git
```

* `cd` in to the cloned directory and run `bundle` in order to download and install any dependencies required.

* Run `ruby app/app.rb` to start the local server, and browse to the location mentioned in the terminal logs (likely localhost:4567).

* You will be greeted with the text "Player, enter your name:". Enter you name in the text box provided and click the 'Enter the arena' button.

* You will be greeted by name at the top of the next screen. Situated below the greeting will be five buttons offering your various choices. Choose from Rock, Paper, Scissors, Lizard or Spock by clicking the appropriate button.

* On the next screen you choice will be confirmed. Next the computer will make a random choice from the same five options. The computer's choice will be confirmed below the player choice, and finally the winner will be announced below. The winner will be chosen by comparing the player and computer choice using the following rules:

  * Rock ==> beats ==> Scissors & Lizard
  * Paper ==> beats ==> Rock & Spock
  * Scissors ==> beats ==> Paper & Lizard
  * Lizard ==> beats ==> Paper & Spock
  * Spock ==> beats ==> Rock & Scissors

* If you wish to play again simply click the "Play again" button below the winner announcement. The player name will be persisted across each new game in the current session. Otherwise simply close the game in the browser, and enter `CTRL + C` in the terminal to end the local server process.
