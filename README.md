# RPS Challenge

Task
----

```sh
The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web.
```

Our task this week was to implement the skills and knowledge gained over week 3 of Makers into a Rock Paper Scissors web application. This task would require the use of the Sinatra framework alongside Capybara/RSpec testing. This task alongside the weekly challenge was an introduction to the request response cycle, and also built upon our existing knowledge of TDD and OOP from the first two weeks.

Approach
--------

My approach was to initially build the sinatra framework, organising where and when get and post requests would occur, and the views that corresponded with the routes. I created feature tests before implementing ant html forms in my view files to take a TDD approach. I decided that the three button choices (rock, paper, scissors) would correspond with three separate routes that would implement the choice into the Rps methods created in Ruby. The outcome of this choice would then determine the final view.

I battled with the idea of making multiple classes throughout this challenge. Initially I felt it was simpler to only have a Rps class which knew the possible moves, which moves beat which, and could calculate the outcome of a match between a choice and a random move. This meant that my Rps class only comprised of two short methods, so I did not think it was necessary to extract classes. However, I decided at the end of the challenge to at least extract a Player class that would be responsible for knowing its own name.

I believe that it would also be useful in the future to perhaps extract a Weapon class that is responsible for knowing the moves, and which move beats which.

Currently, all tests pass with 100% coverage, and rubocop finds 0 offences.


User Stories
------------

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Instructions
------------
Run
```sh
bundle install
```

Use rackup to view open the app in the web browser
```sh
rackup config.ru
```

Enter the local-host into your web browser to start the game
```sh
http://localhost:9292
```
