# RPS Challenge: Rōnin Badge Test
[![Build Status](https://travis-ci.org/paulalexrees/rps-challenge.svg?branch=master)](https://travis-ci.org/paulalexrees/rps-challenge)

This is my submission for the Rock, Paper, Scissors week 3 challenge:

It runs on a Sinatra local server:

`ruby app.rb`

Or it is deployed on Heroku:

`https://pauly-rps.herokuapp.com`

A 1-player game can be started by selecting the **1P vs AI** button on the home page.
Enter your name, and you are taken to the Play screen with your AI opponent, **Thinking Emoji**.
Selecting rock, paper or scissors from the list takes you to the results screen where you find out the result against the Emoji's randomly selected gesture.

**Bonus #1**
------------

A 2-player game can be started by selecting the **1P vs 2P** buttons on the home page.
Enter both players' names, and you are taken to the Play screen, where both players have a choice of rock, paper or scissors.

If either player selects their gesture (preferably with the other player not watching...), their selections are removed and a waiting gif replaces them.

Once the second player has selected their gesture, they are taken to the results screen to find out the outcome.

**To Do: Bonus 2**
------------------
I spent a lot of time finding out about presentation using CSS and HTML so didn't have time to implement the extra rules - I intend to do this when I have time as I'm now more confident in being able to restructure the play screen to fit more gestures.

Having made a start on multi-browser games during the Battle challenge, I'd like to give that a go as well.
