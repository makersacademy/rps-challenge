# RPS Challenge

RPS is web-app built on Sinatra.  It allows users to play Rock, Paper, Scissors online against the computer or as a multi-player game.  

## To download and run the app:
```
$ git clone git@github.com:Alastair2D/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```

## Modelling

[HTTP Request-Response Cycle + MVC Model](https://imgur.com/a/EpLJtuC)<br>
[Domain Model](https://imgur.com/r3bDqJh)<br>
![Domain Model](https://github.com/Alastair2D/rps-challenge/blob/master/images/domain_model.png)<br>
[Domain Model](https://github.com/Alastair2D/rps-challenge/blob/master/images/domain_model.png)<br>
![Domain Model](https://www.draw.io/?lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=HTTP%20Request%20Response%20%2B%20MVC%20(1).xml#R7Vpdc5s6EP01PF4PIMDxY%2BzgtHPTOI3T9rEjGxlrihFXyF%2F99RUgDEhKTD04yfUkL4GDtFqds5JWmxhgtNrdUpgsv5AARYZtBjsD3Bi2bVl9l%2F%2FKkH2B9G2vAEKKA9GoAqb4NxKgKdA1DlDaaMgIiRhOmuCcxDGaswYGKSXbZrMFiZqjJjBECjCdw0hFf%2BCALQv0yu5X%2BCeEw2U5suUNii8zOP8VUrKOxXiGDRb5T%2FF5BUtbYqLpEgZkW4OAb4ARJYQVT6vdCEUZtyVtRb%2FxM18PflMUszYd7KLDBkZrMfXR3Wf%2F%2FsmwvYgbGM4ofwqzp4hwepYkZeonMRW2L%2BnbLjFD0wTOs%2FctDxHeaMlWEX%2Bz%2BCNMk0K0Bd6h4GCg7rWYyAZRhnY1SMziFpEVYnTPm4ivV4JQEXDAE%2B%2FbSj6rJH1Zl64EoQiZ8GC6oo0%2FCOb0LDoKi4%2BTb0%2F%2Bo0JMHhnZlHMejtDUASuu3aTlQFONFtvR0OJ0wIqnsnI9%2Bvf9ceJoQsU6Eyd9db1N7p8eJ3d3WbTIC6vHzcEk6dFZi0VX8Wi%2BCY%2FAbrnkOiHySiHyy%2BTGv9PxNI7w3%2FH3OnHoOSfy18mWNVD4%2B%2F7Z%2F6Glb4MRP0%2FfP4GObiGfjUALKAwqjMzXdHMgBMXBdZaa8Nd5BNMUz1sygoJGsqLyUZuvq5luiVEUQYY3zRRHR4EY4YFg7smBbkuOV1diMSVrOkeiVz3nkAy5lrQBy4YYpCFiiiHOHtzXmiVZg%2FQFh6WcwAbmi34BqX3ZvwqIwoMqPA4atIoY29VETLGqArxpRI733zrLAId8JbB%2FYITD2ADXWb7LYwPR6nu1Fgs7aQJjGZuVwKP%2F9Zs%2FPaR23N2Z3JZjOhMczj1som2djtCCPe%2By4kN9h3nR0%2FO79LRPkNaJ3Mitz7k0s%2FiwzYdJg9hXcI087xjqhb3MUpmxO67H845xCFfo54JQfgl5FVd1Op6fmE8IBvkS0ZPzip4MCb%2F%2BvqEfR%2FmXTqvMfPNIoijFv%2BEsb5AllXDNSFpc1vN7XOHKTe4HGGYnN%2BYhdy3gFQ6CrOtQbNR8EHdouDccWeAoGpGIUA7GJM4apYySX0gCmzltBznD4azZN6%2BN9fuQLvfvJGUALVKG%2F3uW4Mm3Au%2FELMHrHzHUUZbgufpxujr1gVocuDzRPbfBoSuvltaiW0cMdSW6ox%2BnM9F1qd6liS5p5fQHPfdE2b2jps4kfDVSZ9KrZa%2FLk166KTnWqesdHDHUleyefpzORFfrehcnuivd%2F%2B3%2BiaLLhoDZTvRTdFHLhBevCzBP3IUVQ6DdHnyKLmr5UdHloopnrtnk1j01LZarcG7LxfO3OyaQHC6LrV3tmE55dXuzYtj0YXI%2F9T%2BqYa1dmjLI1jxkzBEJXiiLcWHHWaDwy%2B6Y333GeYS%2Bh3LHR7npowBk2wNpXyszzvofjXQHwUDaZ1sUgPhr9Z8cxR5Z%2FbsM8P8A)


## Goals
- Classes are designed around the principles of Delegation & Single Responsibility.  The Game class delegates state and behaviour of player-related information to the Player class.  
- Only the Game class is instantiated in the controller, separating concerns to make this web-app a more modular program.

## Testing
- This program was built test-first using RSpec and Capybara to allow the user stories to be feature-tested.
- As with all good OOP testing, all unit tests have been isolated using doubles, mocks, stubs & spies.  

-------

## Task
Knowing how to build web applications is getting us almost there as web developers!  The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.  Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web fulfilling the following requirements.

## User Stories
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Hints on functionality
- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Bonus level 1: Multiplayer
Change the game so that two marketeers can play against each other
