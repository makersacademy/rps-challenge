# Rock-Paper-Scissors Challenge

## <a href="https://mschmidt19.github.io/rps-challenge/" target="_blank">Check it out here!</a>

### Completed by Marek Schmidt
#### See Instructions and User stories below

## Context
This was the third weekend project I attempted while at Maker's Academy. When completing this I had three weeks' worth of practical experience in Ruby and Rspec, and five days' experience using Sinatra, Capybara, and building web apps.

## Approach
I based a lot of my structuring around the pairing project I worked on throughout this week. I knew I would need to have more than one class, but I ended up using a very similar design of one Player class and one Game class.  

Writing separate feature test files was quite interesting this time, and was, as always, surprisingly effective at leading me to the proper next step (yay TDD!).  

I noticed I would need to save the choice of the player and have it accessible in following pages, so I quickly made a class method to hold each game instance in order to avoid global variables.  

From the start, I planned to expand this project into a multiplayer game but never had the time. This did, however, cause me to set up my Game class to allow for a second player that would be defaulted to a computer if only one was given. I have decided to leave it how it is in case I revisit this project at a later date.  

When attempting to refactor to allow for the Lizard-Spock expansion, I decided to clone my repo and leave the basic Rock-Paper-Scissors game as it's own project. That repository is called "rps-challenge-standard". Unfortunately, I did not keep working on the original folder and instead worked on the fork which may cause issues for both projects.

## Summary
The user acts as one player in a game of Rock-Paper-Scissors-Spock-Lizard, an expansion on the usual game of Rock-Paper-Scissors. The user can input their name and select a choice out of the five options. A computer opponent will then choose a random option and the match-result is displayed on-screen, with the ability to play again (or rematch if it was a tie). I also added a rules page in case somebody was new to the additional rules involved in the Spock-Lizard expansion.

## State of project and changes to be made
The functionality of this program is complete. The user stories were minimal so I added quite a few implied features that I believe needed to be in place.

The main addition I would like to make is the ability to choose between multiplayer or single-player against a computer. I do think I could complete this, but I got a bit carried away with styling (and learning styling) and lost the time. Outside of functionality, I could probably clean up my code quite a bit, especially in the stylesheet. Though I refactored where I could, It would take quite a while to thoroughly go through all of my code and I don't think it is the best use of my time.

I have 100% test coverage and no offenses with rubocop! I was a bit surprised by this considering the long switch statements and if statements involved in showing some HTML elements, but I'm glad to see it. I am also quite satisfied with my implementation of how winners and losers are determined; avoiding a long switch statement that I knew would inevitably lead to a 'method too long' offense. No further work needed here.

## Feature testing
There is a folder called 'features' in the 'spec' folder specifically to test all main features of my program. For more detailed testing, however, try it yourself! Instructions are below.

## How to use

#### 1. Clone this repository

#### 2. Install the required gems
```
bundle install
```

#### 3. Run the webpage using sinatra
  * A rack environment has been included, so you can simply call rackup
  ```
  rackup
  ```
  * If using rackup, the default port will be 9292
  * Or you can simply run with Ruby
  ```
  ruby app.rb
  ```
  * If using ruby, the default port will be 4567

#### 4. Using a web browser, navigate to your local webpage
  * If using rackup
  ```
  localhost:9292
  ```
  * If using Ruby
  ```
  localhost:4567
  ```

#### 5. Play the game!
  * Instructions are presented on the screen to guide through gameplay

#### 6. When finished, end the sinatra server
  ```
  ctrl+C
  ```

## User Stories & Instructions
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

## Special thanks!

##### Thank you to Font-Awesome for their incredible and free icons!
https://www.w3schools.com/icons/fontawesome_icons_hand.asp

##### Thank you to Ashayla Webster for the simple rules image found here:
https://pics.me.me/wanna-play-rock-paper-scissors-lizard-spock-rock-crushes-lizard-14970511.png
