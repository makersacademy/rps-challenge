# RPS Challenge
A rock paper scissors game competing with a NPC. This includes the addition of [spock and lizard](http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_).

Installation
-----
1. Fork this repo and clone to your local drive
2. Run the command `gem install bundler` (if you don't have bundler already)
3. When the installation completes, run `bundle`

How to Use
-----
1. Run the command `rackup` 
2. Open an browser with `localhost:` followed by the rackup host number

Task
----

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

Features
----
- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

Tests
----
There are a series of tests which can be run with the following (from the directory):
```
rspec
```
To run tests from specific class files, this can be done by:
```
rspec spec/<filename>.rb
```

Approach to challenge
----
I commenced the challenge by setting up the test environment and user interface using HTML and CSS. When I began to create the model, I chose to create a flow chart to ensure the MVC pattern is followed.
![Screenshot 2022-03-13 at 11 46 30](https://user-images.githubusercontent.com/74867241/158057911-0a32e0f1-4b59-4f0f-8f2d-46ceead8ddba.png)

Upon completing the challenge, and although my controller is skinny and model is fat, I was not entirely pleased with the way my code was written as the methods were too large (code was not DRY). Whilst I could have incorporated SRP to shrink my methods, I attempted to opt for an alternative way. This has been illustrated in the flow chart below. Unfortunately I did not have sufficient time to complete the actual code.
![Screenshot 2022-03-13 at 23 12 24](https://user-images.githubusercontent.com/74867241/158083344-6df5c61c-3cd1-43d2-a1ec-b31d2755c8f6.png)

