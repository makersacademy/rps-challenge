# RPS Challenge: Ronin Badge Test 
[![Build Status](https://travis-ci.org/omajul85/rps-challenge.svg?branch=master)](https://travis-ci.org/omajul85/rps-challenge) [![Coverage Status](https://coveralls.io/repos/github/omajul85/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/omajul85/rps-challenge?branch=master)

**Author:** Omar Alvarez

Task 
----

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Instructions
------------
These are the instructions for how to download and run the application on a local server:

```sh
$ git clone https://github.com/omajul85/rps-challenge.git test
$ cd test/
$ bundle
$ ruby app.rb 
```
Then, you can open your browser and visit `localhost:4567`.


The images below shows the user's interaction:

The user selects the desired options and clicks on the submit button.
![Home](http://s19.postimg.org/onbsh93w3/Home.png)

The user(s) enter(s) the name and click(s) on the submit button.
![Names](http://s19.postimg.org/a5el99ckz/names.png)

The user plays by choosing an option.
![Play](http://s19.postimg.org/j2zb6m50z/play.png)

The result is displayed and the user selects whether to play again or go back to the Home page.
![Result](http://s19.postimg.org/pfeggg837/result.png)


Project structure
-----------------

The tree below shows how the project is organised:

```sh
.
├── app.rb
├── config.ru
├── Gemfile
├── Gemfile.lock
├── lib
│   ├── computer.rb
│   ├── game.rb
│   └── player.rb
├── LICENSE
├── public
│   ├── css
│   └── images
├── Rakefile
├── README.md
├── spec
│   ├── computer_spec.rb
│   ├── features
│   ├── game_spec.rb
│   ├── player_spec.rb
│   └── spec_helper.rb
└── views
    ├── index.erb
    ├── layout.erb
    ├── names.erb
    ├── play.erb
    └── result.erb

```
The server file `app.rb` is in the project root folder. The project has a lib folder that contains the business logic (ruby classes). The unit test are stored on the spec folder. The subfolder features contains the feature tests (tests related to the web application seen on a browser). The folder views contains the views, that is, the HTML, CSS and ERB code that is going to be rendered in the browser (presentation layer). The folder public contains 2 subfolders, one for the CSS files and other for the images used on the application.

Deployment
----------

The application has been pushed to Heroku using Git. You can play <a href="https://rps-omajul85.herokuapp.com/" target="_blank">here</a>.