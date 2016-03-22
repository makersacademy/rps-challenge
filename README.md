[![Build Status](https://travis-ci.org/kevinpmcc/rps-challenge.svg?branch=master)](https://travis-ci.org/kevinpmcc/rps-challenge)

[![Coverage Status](https://coveralls.io/repos/github/kevinpmcc/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/kevinpmcc/rps-challenge?branch=master)

Project Description
----------
This project is my Week 3 weekend challenge to build a multiplayer Rock,Paper,Scissors,Spock,Lizard(RPSlS) game.

I first built a one-player version of Rock,Paper,Scissors(RPS) where you played against the computer. You can find this in branch one-player.
Next I built a two-player version of RPS where two player play in same browser window. You can find this in branch two-player.
Finally I built a two-player version of RPSlS which you can find in master branch. Here are the rules of RPSLS http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock

I took a TDD approach and created RSpec feature tests and unit tests to drive design and development.

Technologies used
* sinatra framework
* Capybara
* Ruby 2.2.3
* HTML
* RSpec 3.3.2
* Coveralls Report



The project structure is broken down as follows.
app.rb in root folder is the Controller
lib holds the Model ruby files
  * lib/game.rb was in charge of determining the winner and housing the rules
  * lib/player.rb was in charge of holding the player's name and player's choice

views folder holds the View feature erb files
public folder holds images used in the project


Gameplay
-----------
You begin by entering each of the player's names. In this example we've got Margot and Ritchie. Click Submit.
![Image of Entering Names](http://i.imgur.com/5WFdeGq.png)

First up is Margot. She needs to choose one of the options by clicking a button.
![Image of Player 1's turn] (http://i.imgur.com/CsGScMx.png)

If a player needs to check the rules they can scroll down.
![Image of Rules](http://i.imgur.com/s7uHb5G.png)

Next its Ritchie's turn. He also makes his choice.
![Image of Player 2's turn](http://i.imgur.com/R8jXAGx.png)

Here we can see Ritchie won. Well done Ritchie.
![Image of Results screen](http://i.imgur.com/ZovExrq.png)

If players happen to choose the same option then they have a tie.
![Image of Tie](http://i.imgur.com/pLipns3.png)


Installation Instructions
-------
start by cloning this repository. In terminal or other Command line tool put in the below

<code>git clone https://github.com/kevinpmcc/rps-challenge.git</code>

next move into the project folder by entering

<code>cd rps-challenge</code>

If you know you have bundler installed skip this step. If you're not sure put in following

<code>gem install bundler</code>

from here install all necessary gems from the gemfile by entering

<code>bundle install</code>

and we're now ready to go. to run the game

<code>ruby app.rb</code>

and in your browser URL bar enter

localhost:4567

enjoy!


Images
----
credit for the images used:
scificat @ deviantart http://scificat.deviantart.com/art/Rock-Paper-Scissors-Lizard-Spock-292403867
linkinparkbrony @ deviantart http://linkinparkbrony.deviantart.com/art/Rock-Paper-Scissors-Lizard-Spock-348466665

Contact
-----------
If you'd like to get in touch
kevinpatrickmccarthy@gmail.com
https://github.com/kevinpmcc/


