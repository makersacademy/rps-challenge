# Rock, Paper, Scissors

This is the classic _Rock, Paper, Scissors_ game. In this version you play against the 'Machine'. This project was built with test driven development (TDD) approach.

The site is built in Sinatra, Ruby(2.4.1), HTML and tested with RSpec, Capybara.  

One of the challenges I faced whilst working on this project was that refreshing the page whilst in play caused the players to have a turn. This was because all the code for the player moves were taking place in the _get_ part of my route/control. By creating a separate _post_ route and moving the _Ruby_ code across to it. This meant that every time the client clicked an action button they were making a _POST_ request first. The server side dealt with this _POST_ request by running the code and sending back a _303_ redirect for the client to make a _GET_ request to display the result.

So, on refresh the client was only getting back what they already had received on the previous _GET_ request and no critical code was being actioned on.

## Setup

In your terminal window:
```
$ git clone https://github.com/bpourian/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```
Open a browser and navigate to localhost:9292 or the given port on the rack start up message.

## Game display

On running the game you will be greeted with the following page;

### Home page
----

![Screenshot](https://i.imgur.com/7wdBo5o.png)
-----
_Enter your character name and submit._


### Confirmation page:
-----

![Screenshot](https://i.imgur.com/QtkTYHn.png)
-----
_Confirms your name and lays out the game rules. Press start game to proceed._

### Game page
----

![Screenshot](https://i.imgur.com/31RB8pZ.png)
----
_This is a typical game page. You can keep an eye on how many times you have
lost the game and what hand your opponent played._
