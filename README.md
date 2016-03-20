[![Build Status](https://travis-ci.org/makersacademy/rps-challenge.svg?branch=master)](https://travis-ci.org/makersacademy/rps-challenge)

##### Makersacademy Week3 - RPS Challenge

### Multi-browser Rock-Paper-Scissors-Lizard-Spock ###
Multi-browser Rock-Paper-Scissors-Lizard-Spock ( MB-RPSLS ) enables you to play RPSLS game with an opponent simultaneously in separate browsers - locally or remotely that is!

### Installation
#### Local play :
1. Fork this repo
2. Copy the URL of the forked repo
3. Fire up terminal ( or equivalent ) and move to the desired directory, in which you want to create a clone of MB-RPSLS
4. Clone the forked repo: ```$ git clone URL```
5. Rub bundle to install relevant gems: ```$ bundle```
6. Run the programme: ```$ ruby mb_rpsls.rb```
7. Check the port number in the terminal output. In the example below, it is *port=4567*
8. Open a preferred browser and type ```localhost:port number``` into the URL bar. ( e.g. ```localhost:4567``` if port number is 4567 )
9. You should be redirected to the title page

Example of terminal output upon running the application:
```
$ ruby mb_rpsls.rb
[2016-03-20 21:17:56] INFO  WEBrick 1.3.1
[2016-03-20 21:17:56] INFO  ruby 2.2.3 (2015-08-18) [x86_64-darwin14]
== Sinatra (v1.4.7) has taken the stage on 4567 for development with backup from WEBrick
[2016-03-20 21:17:56] INFO  WEBrick::HTTPServer#start: pid=5787 port=4567
                                                                    ↑
                                                    This is the port number you need
                                                        to type into the URL bar
```

#### Remote play:
MB-RPSLS is also available online for a remote play. Just visit the URL below and you're good to go! Make sure you have someone else to play with ;-)

https://lit-lake-88733.herokuapp.com/

### Game play
Please refer to the wiki page below for the general rules of RPSLS.

http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock

Here is a step-by-step guide of how to play MB-RPSLS.

1. Player 1 ( P1 ) and Player 2 ( P2 ) open the game in separate browsers
2. P1 and P2 click **Entry**
3. Choose player
4. Players enter their names and hit enter or click **Complete entry** button ( if no name is given, it assigns 'Anon' by default )
5. The page will wait until both players complete entry ( it will result in an internal server error if both players don't complete entry after a certain time )
6. P1 and P2 click respective **Play game** button
7. Players are presented with **5 choices** - choose one
8. The page displays the result of the round, once both players make their choices
9. Players can choose to go onto the **Next round!** or **End game**
10. If one of players decides to leave, the game will end with the final score and result of the game ( win/lose/draw )
11. Click **New game** for starting a fresh game

### Development
MB-RPSLS is written in Ruby 2.2.3 and has been developed using Sinatra 1.4.7 ( https://github.com/sinatra/sinatra ). It uses RSpec 3.2.2 as a platform for behaviour-driven development (BDD) in conjunction with Capybara 2.6.2 ( https://github.com/jnicklas/capybara#using-capybara-with-rspec ) as an acceptance test framework. The continuous integration is assessed through Travis-CI with the latest test coverage of 100%. Online version is supported by a cloud application platform Heroku ( https://www.heroku.com/ ).

### Authour
Misa Ogura
