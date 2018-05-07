# RPS Challenge

A web application to play rock paper scissors.

### Motivation

This project has been created as part of my journey as a junior developer at Makers Academy.

### Features

- Allows a player name to be input.
- Allows the player to play rock, paper scissors against a computer player.
- The computer player chooses his move randomly.
- A winner is announced.

### Installation

Program developed in ruby 2.5.0 using Sinatra and run with rack. The program should be downloaded and set up as follows:

```
$ git clone git@github.com:williampowell92/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```

### How to use?

The program should be run from a client, such as Google Chrome.

Once you have navigated to the address, you can press Play to start playing, enter your name and begin by selecting rock, paper or scissors.

### Tests

Unit testing was carried out using RSpec. Feature testing was carried out using Capybara. Tests can be run from the project home directory:

```
$ rspec
```
