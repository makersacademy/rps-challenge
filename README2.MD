## Introduction

A rock paper scissors game that allows the user to input their name into the game. The player is greeted and has three options to choose from. Then they are prompted by a message displaying what their opponent (the computer) has chosen at random. Finally the results of the game are shown on the page.

## How to use

Go to terminal and type in the following to install the gems and clone the repository from Github.

```
git clone https://github.com/Jamie95187/rps-challenge.git
cd rps-challenge
bundle
ruby app.rb
[2019-12-01 23:17:04] INFO  WEBrick 1.4.2
[2019-12-01 23:17:04] INFO  ruby 2.6.5 (2019-10-01) [x86_64-darwin18]
== Sinatra (v2.0.7) has taken the stage on 4567 for development with backup from WEBrick
[2019-12-01 23:17:04] INFO  WEBrick::HTTPServer#start: pid=10774 port=4567

```
In a web browser (chrome, firefox, safari) type in the URL "localhost:4567". Follow the instructions and enjoy the game :)!

## Progress on the challenge

Managed to complete the basic user stories tied with the challenge. Didn't get the chance to have a go at the bonus parts. Would like to implement a counter to display the number of wins and work out a victory percentage. Also looking to introduce a multiplayer version where one marketeer can play against another human, oppose to just playing against a computer.

## What tests and test methods were used

Followed the Test Driven Development (TDD) principles to tackle this challenge, more specifically the RED GREEN REFACTOR process. Used rubocop gem to comply with conventional Ruby code. Worked with rspec to conduct unit and featured testing. These gems can be used as followed:

```
cd rps-challenge
rspec
# some test cases displayed
# more tests omitted for brevity
# shows test coverage
rubocop
# shows code offences
```

Conducted >95% test coverage.

## Folder layouts

The unit tests can be found in rps-challenge/spec/unit and the feature tests can be found in rps-challenge/spec/features. The ruby class files can be found in rps-challenge/lib and the embedded ruby files (ERB) can be found in rps-challenge/views. The main app.rb is found in rps-challenge.

## What was used

* Sinatra - web application software used to structure the framework of the project
* Capybara - web based testing automation software
* Rspec - a testing tool used for testing behaviour driven code
* SimpleCov - a tool used to show test coverage on a web application
