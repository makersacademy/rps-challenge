## Description

This repo creates a web app to play a Rock-Paper-Scissors kind of game (with a slight variation as it includes two extra weapons: Spock and Lizard).
Please refer to [this link](http://www.samkass.com/theories/RPSSL.html) for instructions.
The game allows you to play against a Computer or together with a friend and can keep track of scores so that you can play multiple rounds. In order to start, please follow the set-up steps below.

## Set-up

In order to play you should:

1. Clone this repository 
```
git clone https://github.com/antoniobelmar/rps-challenge.git
```
2. In your command line, change your directory to the cloned one:
```
cd rps-challenge
```
3. Run bundle in order to install dependencies
```
bundle
```
4. In order to launch the server you can either execute the controller file or just use rackup:
```
ruby app.rb
```
or
```
rackup
```
5. Then simply go to http://localhost/PORT (replace PORT by the relevant port in your server)

## Gameplay

1. Decide weather you want to play alone or with a friend:

![Initial Menu](screenshots/SP1)

2. If you select single player you will be prompted to enter your name

![SP Name Submission](screenshots/SP2)

3. If you selected multi-player, the process is similar except you see two fields to populate:

![MP Names Submission](screenshots/MP1)

4. You can then select a weapon for the first combat of the round:

![Select Weapon](screenshots/SP3)

5. If you are playing by yourself, once you submit the results page will automatically be loaded. Otherwise, you should allow the other player to enter their choice and submit it.

6. Once all is submitted you will be prompted to the results page which will let you know the outcome of the combat and allows you to play again in the same round:

![Results](screenshots/SP4)

