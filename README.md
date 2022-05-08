# RPS Challenge

Instructions
------------

* Clone the repo: https://github.com/timbo-graham/rps-challenge.git
* Run bundle install in the project root folder
* You'll then be able to run app.rb, which will create the server needed.
* Navigate to http://localhost:4567/ in your browser
* Enter your name and press submit
* Pick your move and press submit
* See your result, and play again if you want to

Requirements fulfilled
----------------------

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Notes

The final rspec test is flaky, because I couldn't work out how to
stub behaviour in a capybara test. If the user doesn't win the game,
the test will fail as the returned value will not match the expecatation.

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock
