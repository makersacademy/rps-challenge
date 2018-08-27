# Rock Paper Scissors: web app

[![Build Status](https://travis-ci.org/rebeccasedgwick/rps-challenge.svg?branch=master)](https://travis-ci.org/rebeccasedgwick/rps-challenge)  

Instructions
----

To download and run via localhost do the following:

```
$ git clone git@github.com:rebeccasedgwick/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```
Note: `rackup` defaults to port 9292, if you wish to specify the port (for example, 4567) use `rackup -p 4567`

In  a browser of your choice, enter the URL `http://localhost:9292/`

The game
----
This is a web based version of Rock, Paper, Scissors which allows a user to play against the computer.

The rules:  
- Rock beats Scissors  
- Scissors beats Paper  
- Paper beats Rock  


Notes
----
Unit and feature tests have been created using Rspec & Capybara.  
SimpleCov lists coverage at 100% across 62 lines.
