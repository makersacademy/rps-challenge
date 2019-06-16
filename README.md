# ROCK - PAPER - SCISSORS

This is a web app to play the famous hand game RPS on the web!

## Domain model

Player  --> Enter the domain URL  --> Page
Page -->  shows -->  Game title, name box, submit button
Player  -->  Enter -->  name
Page -->  shows --> Game title, player name, rock paper scissors buttons 
Player  -->  Click -->  Rock button
Page  -->  Shows  -->  CPU random choice and winner

## Getting started

* Please clone the repository typing on your terminal: `git@github.com:l-palermo/rps-challenge.git`
* Then run `bundle` to install dependecies

## How to use the software

* From the folder `RPS-CHALLENGHE` run `rackup config.ru` then move to the browser and in the URL line type `localhost:"#portnumber"`
* if show a message error `Address already in use` type `rackup config.ru -p 9393` where -p specifies the port number.

### Example of usage

![](images/ScreenShot1.png)
![](images/ScreenShot2.png)
![](images/ScreenShot3.png)


