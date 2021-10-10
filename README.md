# RPS Challenge

Instructions
-------
To run program - follow these instructions:

$ git clone git@github.com:[maxcfry]/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup

Task
----
We had to build a rock paper scissors game - 

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

# Difficulties 
I managed to pass the first 4 parts of this task - but could not figure out where I was meant to write the code that specifies the rules of rock paper scissors - or where the result of, say, Rock vs. Paper, was meant to be computed. 

I generaly found this weekend challenge fun but - given that we'd only learnt to write expect(page).to have_content("etc") - I found it immensely difficult to write tests (as if it wasn't already difficult enough writing a test for a unit that you haven't written yet)

I also had a lot of trouble understanding the mechanics of how the .erb files, the app.rb file and the spec were all meant to interact. I think I have a better idea now.


