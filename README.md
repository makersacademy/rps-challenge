
# RPS Challenge

[Getting started](#getting-started) | [To Use](#To-Use) | [Task](#Task) | [Approach](#Approach) |
[Code Status](#Code-Status)

This weekend challenge is for submission to Makers Academy. The code creates a
programme which allows the user to play Rock, Paper, Scissors against a computer. 

### Getting Started
1. Clone to your local machine using
  `git@github.com:LaurenQurashi/rps-challenge.git`
2. Run `gem install bundle`
3. Run `bundle`

### To Use
Run rackup, shotgun, or ruby app.rb in the terminal, then visit the local host page. 

### Task
-----
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

### Approach

To tackle this challenge, I used the standard practice of TDD. This involved
writing a very simple failing test in Capybara, checking the error code, and doing the least
I could to pass my simple test. Repetition of this process allowed me to evolve
my programme into the current product.

To start this process, I reduced the user stories down, one by one, to understand what
the user needed to do, and that the user wanted to see. Once
completed, I would formulate my logic in my app.rb file and check constantly
to see if I am visually getting the results I want, as well as passing tests.

The next step would be to create the most simple test I could using Capybara, to
ensure that this method or result wasn't possible, and thus work on a solution to resolve
this. By repeating this step, I soon built up the code to complete the
requirements for the first user story.

### Code Status

As it stands, the web app isn't completely finished. It is able to take a name, encorporate that name 
into it's pages, and allow a choice to be selected. The results page currently throws a naming error. 
to complete this, I would investigate the errors I am receiving to pin point where it has gone wrong. 
The current naming error I receive at the moment suggests to me that my instance variables and session params
aren't behaving as expected, so my first step would be to investigate into this. 



