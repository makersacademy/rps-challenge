# Rock Paper Scissors challenge

## Makers Academy Weekend Challenge #3

The aim of this challenge was to make a simple Rock-Paper-Scissors game which could be played against the computer.  The player enters their name and submits a form to choose their weapon, the computer chooses a weapon at random and the app works out who has won, displaying the appropriate message on the page.

## Instructions

Play with zero effort!  Visit https://kynosaur-rps.herokuapp.com/

Or...

- Clone this repo
- Install required dependencies: `$ bundle`
- To run the tests: `$ rspec`
- To run the app: `$ rackup`
- Visit `localhost:9292` in your browser
- (9292 is default, but check your command line in case it's different)

## What is this made from?

- Ruby and Sinatra
- Tested with RSpec and Capybara

## Tell me more! How did you build this?

This is one of my earliest solo projects, completed in week three of Makers Academy.  Each step was driven by RSpec unit tests and Capybara feature tests.

I started by making a very simple page on which the player could fill out a form with their name, submit it and see their name displayed on the page.  This gave me a foundation on which I could build my logic (this could be seen as quite a backwards way to do things, but at this stage I felt more comfortable thinking in terms of what buttons the user would press and which pages would be generated, rather than building logic on its own and then hooking that up to an interface).

I made Player and Computer classes, instances of which could have a name and a weapon.  Player weapons were selected by the user filling out a radio-button form; Computer weapons were selected at random by calling .sample on an array.  At this stage I noticed that I was storing the same array in both the Player and the Computer class, so I made Weapon into its own class, which turned out to be a nice place to store the game rules (the weapon 'knows' which other weapons it does and does not beat).

My careful piecing-together of this app means that if I wanted to expand it (for example, to make it "Rock-Paper-Scissors-Lizard-Spock"), I would only need to make changes to one object (add them to the Weapon class, and update the RULES constant to contain the appropriate combinations).
