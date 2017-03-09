# RPS Challenge: Makers Weekend Challenge 3

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared


## Approach

- Given the smaller number of user stories than previously on Makers project, the first step was to break these down further.
- Working from the user stories, the design stage had two key elements: the design of the user interface and the domain model.
- I initially began with Sinatra set up and fulfilment of the first user story (having the user's name in lights!) before creating four classes mapped on in the domain model: Game, Computer, Player and Weapon.
- Once the Ruby infrastructure was in place, I brought this functionality to the controller and view to enable a user to play rock-paper-scissors against the computer.
- All code was test-driven.

## How to run

- Clone this repo to your local machine `git clone [url]`
- Navigate to the rps-challenge folder `cd rps-challenge`
- Run `gem install bundle` if bundler isn't installed
- Run `bundle`
- On your terminal, run `rackup` to launch the web app
- Enter localhost:9292 in the address bar of a web browser
- Enter your name and start playing the game!

## Screenshots

Welcome screen invites you to enter your name:
![Screenshot](http://imgur.com/a/oXYLQ)

The play screen invites you to pick your weapon:
![Screenshot](http://imgur.com/a/xSi2z)

All outcomes:
![Screenshot](http://imgur.com/a/38l2i)


## Tools/Languages

- Sinatra
- Capybara
- Ruby v 2.4.0
- rspec

## Limitations

- Currently a user has to enter their weapon choice and an error is thrown if they select something other than rock-paper-scissors.
- The marketeer can only currently play against the computer. I would like to extend the game so they can play against a friend.
