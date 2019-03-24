RPS Challenge
==================

[![Build Status](https://travis-ci.org/kimdiep/rps-challenge.svg?branch=master)](https://travis-ci.org/kimdiep/rps-challenge)

## I documented my approach in 'kd_approach.md' <---- Please read me! :)
- I documented and explained the processes and approaches I used for this challenge

**To improve my project, next time I would like to:**

- Maintain 100% test coverage for RSpec
- Apply enhancements to front-end views for a more engaging user interface
- Try out ## Bonus level 1: Multiplayer now that I have the Player class and Game class as starting points
- Apply stubbing to stub out random behaviour more confidently
- Refactor some code in Game class to make the selection of winning moves cleaner
- Try out `self.instance` for classes

## Introduction to the project

This project is part of Week 3 of the Makers Academy 12-week software engineering programme. 

The aim of this project is to build a web app game for the Makers Academy Marketing Array ( **MAMA** ). The game will be a _Rock, Paper, Scissors_ game, which can be played on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Motivation: What are my goals for this project?

#### For this challenge, I am specifically targeting the following Makers Academy goals:

- I write code that is easy to change

In order to test my understanding of web apps and verify that I can build a simple web app with a form using an MVC framework, I will build a rock, paper, scissors app.

#### Relating to the above high-level goals, I would like to:

- Document and explain the processes and approaches I used

> This is presented in: 'kd_approach.md'.

Concrete things
- Apply the MVC framework `Sinatra` to build a simple web app

Concepts
- Understand MVC frameworks
- Explore how to host my web app

Processes
- Use test-driven development to test-drive the app. I would like to apply the use of Capybara for feature testing the user flow.

Behaviours/mindset
- Take a step back to understand how to model the rock, paper, scissors application.

## Tech/Framework Used

I will be using Capybara testing as it has extensions for RSpec. I will be particularly focusing on feature-testing the user flow for this project.

You can find out more about Capybara here: http://teamcapybara.github.io/capybara/

RSpec will be used as the testing framework.  

>"RSpec is a Behaviour-Driven Development tool for Ruby programmers. BDD is an approach
to software development that combines Test-Driven Development, Domain Driven Design,
and Acceptance Test-Driven Planning. RSpec helps you do the TDD part of that equation,
focusing on the documentation and design aspects of TDD." 

See documentation:
https://relishapp.com/rspec
http://rspec.info/


The MVC framework, `Sinatra` will be used to build a simple web app. Ruby will be used as the programming language and HTML in Sinatra views for the user interface.

As a final step, I explored options for hosting my web app.

## Code Style

I used `rubocop` as a guide.

## How to use the app

The app is available here:
XXXXXXXXX

I decided to host the app using Heroku. The app was deployed using the Heroku CLI.
https://www.heroku.com/home


## Images/Screenshots

## Getting started

`git clone https://github.com/kimdiep/rps-challenge.git`

## Running tests

Tests can be run from the root directory using:

`rspec`

