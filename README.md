# RPS Challenge!

This week 3 challenge for Makers Academy tests our newly found web development skills - I made this app having learned Sinatra, Capybara, HTML, and CSS in the space of 5 days!

## User stories

We have the following user stories to implement:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## My approach

I decided to fully implement the multiplayer functionality as well as a player vs. computer ('RPSbot') mode. I divided responsibilities across four classes in my model - Player, Computer, Game, and ResultsCalculator. Weapons are chosen then passed as params to my model where they are stored to calculate the game result.

The marketeer can choose from single player or multiplayer on the home screen. If single player is selected, then the marketeer's weapon choice is compared against the randomly selected RPSbot weapon. In multiplayer, the marketeers take turns choosing their weapon (and are encouraged to look away from the screen when it isn't their turn!).

I decided to fully format my project using CSS, which was optional. RSpec and Capybara were used for testing.

### How to play

Currently this app can only be run locally using ruby. Type `ruby app.rb` in bash inside the project directory to execute the app, then visit `http://localhost:4567/` to play. Enjoy!

:)
===========
