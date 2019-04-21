# RPS Challenge

# Task

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

Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

# Approach
I designed a process model, following the same guidelines from a previous challenge Battle_Project, by extracting the objects and methods from the user stories. For example visit '/', fill_in 'player1_name', with: 'Dominic White', click_button 'PLAY'. This enabled me to move forward using a TDD approach, adding feature tests to picture the behaviour of the program. Following the Red-Green-Refactor cycle I have been able to move from User Stories to an end product which is a functiong, simple, web app.

Resources used to assist with my approach on the challenge:
* I followed the same structure as a previous challenge Battle_Project.
* Notes made from my studying at Makers Academy.
* For CSS information 

 https://www.w3schools.com/css/default.asp
 https://github.com/webdevjeffus/css-for-sinatra#putting-it-in-place

* To work out the correct ruby code for Rock, Paper, Scissors result method, I took the code from a previous challenge which also involved getting the result of Rock, Paper, Scissors.

# Progress/Status of Project
The functionality of the web app fulfils the requirements of the user stories with all tests passing at 100% coverage. I was able to complete this in a timely manner, however, I was unable to finish styling each of the views due to lack of time, however, I am very pleased with the stage I have reached and will aim to work on some of the styling in due course. 

# Technologies
This project is built with Ruby, HTML, CSS, Sinatra, Cabybara, RSpec and Rubocop.

# Code Quality/Problems
I've used Rubocop to keep the code quality in-line with expected standards. However, the method I have created in the Game class does not pass rubocops requirments due to the size of the method being too large. This is something that I would like to be able to improve on future tasks.

# Improvements
As stated above, improvements are needed with methods that are too large. In addition, I would have liked to spend more time on the styling diving deeper into CSS, this is something that I will attempt to build on during my free time.

# Using this Code
Clone this repo to your local machine.
Run bundle install to install necessary gems.
Enter the following into the terminal to run:

```
ruby app.rb
```
