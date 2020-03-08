# RPS Challenge
Makers weekend challenge (week 3)

**Tech used**:
Ruby,
Sinatra,
Capybara,
Rspec,
Rubocop

## Project aim
To write software that allows a user to play a game of rock, paper, scissors.

### Primary aims
* Register the player's name
* Play a game of rock, paper, scissors
  * This should include the following functionality:
    - The player is presented with 3 choices (rock, paper and scissors)
    - The player will choose one option
    - The computer will choose a random option
    - A winner will be declared

**User Stories**
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Installation instructions
1. Requires Ruby. Instructions to install are [here](https://www.ruby-lang.org/en/documentation/installation/).
2. Fork this repo, and clone to your local machine
3. Run the command `gem install bundle`
4. When the installation completes, run `bundle` 
5. Navigate to the root folder and input 
```rackup```
This will show you the port that you should use in your browser (in this case it is `port=9292`).
6. This program requires Firefox. Input the following into your Firefox brower:
```http://localhost:9292/```
7. Enjoy the game!

### Additional functionality
* If you win against the computer then your score goes up by 1, when the computer wins against you then its score goes up by 1. Nothing happens upon a draw.

### Future planning
* I would like to have the images and their corresponding buttons to be above each other, and then in a row of 3. This would then be responsive and move into a column as the screen size decreases. At the moment the pictures are in a row next to each other and then the link buttons are in a row below them. It is fine for now but a style issue I would like to sort in the future.
* I would like this to be one of a few games that can be played against the computer (or an opponent), the score would then be saved across multiple games, potentially with a scoreboard/leaderboard
