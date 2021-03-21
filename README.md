# ROCK PAPER SCISSORS [![Build Status](https://travis-ci.com/StuBehan/rps-challenge.svg?branch=master)](https://travis-ci.com/StuBehan/rps-challenge) [![codebeat badge](https://codebeat.co/badges/67c21e1b-b9b2-4c6c-b591-9316668031b8)](https://codebeat.co/projects/github-com-stubehan-rps-challenge-master)

## Instructions
<img align="right" width="450" src="./docs/rps-in-action.gif">

1. clone to your system

2. run `bundle install` 

3. run `ruby app.rb`

4. open a web browser and navigate to `127.0.0.1:4567`

5. or view it on Heroku [here](https://roc-pap-sci.herokuapp.com/)

## Function

* Upon the page loading you'll be greeted with the new game screen, enter two names or just one to play against the computer. 

* Select the game type you want to play, traditional Rock-Paper-Scissors or 5 weapon Rock-Paper-Scissors-Lizard-Spock.


<img align="left" width="300" src="./docs/rps-no-css.png">

## Planning / Execution

* I tried to play from the outset with the stretch goals in mind, so I made sure that the logic for the RPS resolver would be able to handle any number of weapons that the game was set to. It can handle any number of odd number weapons.

* I followed the [drop-in-CSS tutorial](https://github.com/webdevjeffus/css-for-sinatra) for [Sinatra](https://github.com/sinatra/sinatra) from [@webdevfejjus](https://github.com/webdevjeffus) and added my own `application.css` with code of my own to complete the styling.

* For me the CSS was really fun and I look forward to doing more in the future. I'll probably use the drop-in with some of my own tweaks to quickly style any other future web apps.

## Gems

* Nothing too special here, [Sinatra](https://github.com/sinatra/sinatra) web app using [Capybara](https://github.com/teamcapybara/capybara) for testing, and then the usual suspects, Rake, Simplecov, Robucop and RSpec.

## Reflection

* If I had more time I would probably refactor the `Game` class, there is a lot going on there and it's where I've lost all the marks I have from [Codebeat](https://codebeat.co). There is definately a lot of functionality I could pull out. 

* I would try and make the pages optimised for mobile, once I finished I sent the [Heroku](https://roc-pap-sci.herokuapp.com/) link to my family whatsapp, so all of the exposure was to people on mobile!
