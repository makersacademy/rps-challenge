# RPS Challenge

Instructions
-------

* Challenge time: rest of the day and weekend, until Monday 9am
* Feel free to use google, your notes, books, etc. but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
* You must submit a pull request to this repo with your code by 9am Monday morning

Task
----

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```


## Approach

- After reviewing the user stories I decided the second one was more like an epic and needed to be broken down.
- Next step was to design the simple user experience and domain model.
- Now onto the setup:
  * I began with Sinatra set up.
  * Initialzing RSpec.
  * Creating the folder structure require.
- Following this I began writing my feature and unit tests to fulfil the first user story.
- Moving onto the second user story I used a test-driven approach to build the core game logic.
- Once this was done I refactored the controller and view pages to enable a user to play rock-paper-scissors against the computer.

## How to run

- Clone this repo `git clone [url]`
- Navigate to the rps-challenge folder `cd rps-challenge`
- Run `gem install bundle` if bundler isn't installed
- Run `bundle`
- On your terminal, run `rackup` to launch the web app
- Enter localhost:9292 in your browser
- Playing the game!

## Screenshots

Welcome screen invites you to enter your name:

![Screenshot](http://i.imgur.com/xOEQMPW.png)

Choose your weapon:

![Screenshot](http://i.imgur.com/L7CAjvs.png)

Result:

![Screenshot](http://i.imgur.com/At9xVa6.png)


## Tools/Languages

- Sinatra
- Capybara
- Ruby v 2.4.0
- rspec


### TODO
## Future enhancements...
