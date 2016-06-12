[![Build Status](https://api.travis-ci.org/andreamazza89/rps-challenge.svg?branch=master)](https://travis-ci.org/andreamazza89/rps-challenge.svg?branch=master)
[![Coverage Status](https://coveralls.io/repos/github/andreamazza89/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/andreamazza89/rps-challenge?branch=master)

#Rock-Paper-Scissors Challenge
This is my third weekend challenge while training at [Makers Academy] (http://www.makersacademy.com/)

##The brief
This can be found [here] (https://github.com/makersacademy/rps-challenge).

In short, the task is to build a web app in Sinatra that allows the user to play rock-paper-scissors.

##Installation
Clone this repo, then run `bundle`, start the local server `ruby rps_app.rb` and navigate to `localhost:4567` within a browser.

##General comments
Although I have managed to complete both of the bonus challenges, I am not too happy with the finished product, as I think the controller logic is not very straightforward. This is possibly due to an overcomplicated design in the model, which lead to a few extra classes; in particular, the formatter class should probably be within the View's responsibility rather than the model. 

In addition, the in-play views have a bug, that is when the user navigates to the page, an outcome is already shown.

Finally, sadly my front-end skills are next to null at this point in the course, so the interface is far from sleek and this is clearly and area for improvement and study :)

##User Stories
The first two are from the challenge, the rest I have added based on further requirements.

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

As a marketeer
So that I can know if I won or not
I would like to see the outcome of the game printed out

As a marketeer
So I know I was not cheated on
I would like to see what weapon my opponent used

As a marketeer
So I can enjoy myself with friends
I would like to choose between playing against a friend or the computer

As a marketeer with a friend
So we can find out who won
We would like to choose our weapons then see who the winner is

As a marketeer with or without a friend
So I can have even more fun
I/We would like to be able to play rock/paper/lizard/spock
```
