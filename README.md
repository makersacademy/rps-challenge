## Rock Paper Scissors Challenge

A Ruby/Sinatra webapp for playing Rock, Paper, Scissors game against the computer.

### Description
This was the 3rd weekend challenge for the [Makers Academy](https://makers.tech) coding bootcamp.  

The premise:
The Makers Academy Marketing Array have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.
Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```  

This is a Ruby app using the Sinatra web framework, built in the Model-View-Controller pattern. I used Rspec for testing (using a TDD process), with Capybara for the feature tests.
In the model, the Game class is in charge of the Players and working out who won. The Player class, and its subclass PlayerBot, have names and choose one of rock, paper or scissors. PlayerBots pick randomly (`array.sample`) while the user chooses for their Player by clicking on an HTML form button.

I added a bit of basic CSS and drew some images to make it look nice. It's [hosted here](https://rock-paper-scissors-83578.herokuapp.com/) with Heroku.

It looks like this:
![start page](/public/home_page.png)
![about to choose](/public/about_to_choose.png)
![game was a draw](/public/results_draw.png)
![won the game](/public/results_win.png)

### How to install and run the app
* Install Ruby. This app was written in v2.7.2.
* Clone the repo.
* If you don't already have Bundler, get Homebrew and run `brew bundle`.
* In the RPS folder, run `bundle`. It will install all the gems from the Gemfile.
* To run the app on a local server, use `rackup config.ru`. It will say some things including "WEBrick::HTTPServer#start: pid=84437 port=*9292*".
* Use your browser to go to `localhost:9292` or whatever port it said it was using.
* Enjoy a relaxing game of Rock Paper Scissors

### Known problems
Currently there is no concept of sessions, which causes trouble if users on multiple clients try to play at the same time.
