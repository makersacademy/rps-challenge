# BecaLParker's Solution to Rock Paper Scissor Challenge
<p align=center> :metal:     :page_facing_up:    :scissors:</p>

What does this code do?
-----------------------
A one-player _Rock, Paper, Scissors_ game to play on the web. Here's a model of the request/response sequence
<p align="center"><img src="./RPS_requestrepsonse%20model.svg" alt="Request/Response Model" width="50%"/></p>

You'll get a final page a bit like this (depending on your inputs and the laws of probability!):
<p align="center"><img src="./RPS%20result%20screenshot.png" alt="Screenshot" width="50%"/></p>

## Basic Game Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock


Credits
-------
I referred to the [code review rubric](https://github.com/BecaLParker/rps-challenge/blob/master/docs/review.md) during my build. 

I discussed MVC patterns and unit vs. feature testing with a non-Rubyist Dev [@allymparker](https://github.com/allymparker) to refactor my solution.

Setup
-------

* `$ git clone https://github.com/BecaLParker/rps-challenge.git`
* `$ cd rps-challenge`
* `$ bundle`
* Now you can run `rspec` to see my feature and unit testing at work, or
* `$ rackup` and play with the web interface via localhost in your browser
* Usage instructions for web interface will appear onscreen at each stage
> If the messages on the browser display are unclear, I'd appreciate feedback by way of an [issue](https://github.com/BecaLParker/rps-challenge/issues) or PR comment - thanks :)


User stories
----

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Additional notes on functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared :trophy:
