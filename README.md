# Rock, Paper, Scissors Challenge

##What is it?

My effort at the Makers Academy RPS challenge. It is an online, multiplayer game built on Sinatra and using Capybara/Rspec for testing. The aim was to practice using Sinatra and Capybara, maintaining best practices, building on previous OOP best practices, such as SRP and SOLID principles.  

##User stories were

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
##My approach

**Game Class:** Responsible for running the game and declaring a winner. 

**Player Class:** Responsible for holding name and choice information.

**Computer Class:** Responsible for simulating the computer player's choices.


##Installation
```
$ git clone git@github.com:[USERNAME]/rps-challenge.git
$ cd rps-challenge
$ bundle
$ ruby app/rps.rb

navigate to http://localhost:4567/ on browser.
```

##Key concepts covered

+Working with Servers and Clients
+HTTP requests and responses
+Understanding params
+Understanding sessions
+Using Web frameworks like Sinatra
+Feature testing with Capybara
+Implementing User Stories that use all of the above.
