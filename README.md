# **RPS Game &mdash;**<br>_Makers Academy Weekend Challenge_

https://rps-game-demo.herokuapp.com/

RPS Game is a small **Ruby** app that allows a user to play a game of _Rock, Paper, Scissors _ against the computer. It's development made use of the **Sinatra** framework for routing HTTP requests and the **Capybara** testing suite for running feature tests (unit tests were conducted with **Rspec**). Sinatra provided a lightweight and flexible interface layer to the **Rack** middleware used. This allowed a quick and easy way to add the small amounts of dynamic content needed using embedded Ruby, session cookies and the POST request params hash.<br><br>
The weekend project was a good way to reflect on the learnings from the week, such as using a self instantiating class method to store state (which was gratifying to see working!) and using Sinatra filters for avoiding repetition in route declarations. The app was then deployed to **Heroku** and can be viewed here &mdash; https://rps-game-demo.herokuapp.com/

## **_The User Stories &mdash;_**
<br>

    As a marketeer
    So that I can see my name in lights
    I would like to register my name before playing an online game
&nbsp;

    As a marketeer
    So that I can enjoy myself away from the daily grind
    I would like to be able to play rock/paper/scissors
<br>
## **_How To Use Locally &mdash;_**

Assuming you already have Ruby and Bundler installed, the following steps should be enough to try the app locally.

    $ git clone git@github.com:benjamin-white/rps-challenge.git
    $ cd rps-challenge
    $ bundle
    $ ruby app.rb

Then point your browser of choice to `localhost:4567` (or the port number reported by WeBrick if different), and play the game!

<br>
## **_Future Features &mdash;_**

* Bonus level 1: _Multiplayer_ <br>Change the game so that two marketeers can play against each other.

* Bonus level 2: _Rock, Paper, Scissors, Spock, Lizard_ <br>Using the special rules, http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

* Code Review <br>Reflect on ways to improve the **seperation of concerns**, whether SRP has been fully utilised and if extra features would require Dependency Injection. Ensure the CSS presentation layer is separated from the HTML content layer and where possible improve the semantic structure of the content.

<br>

[![Build Status](https://travis-ci.org/benjamin-white/rps-challenge.svg?branch=master)](https://travis-ci.org/benjamin-white/rps-challenge)
