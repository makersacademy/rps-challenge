# RPS Challenge
```
    _______                  _______                  _______
---'   ____)            ---'    ____)____         ---'   ____)____
      (_____)                      ______)                  ______)
      (_____)                     _______)               __________)
      (____)                     _______)               (____)
---.__(___)             ---.__________)           ---.__(___)

```
## Task

I have been asked to create a Rock-Paper-Scissors game that can be played on the web. The program will allow the player to play against the computer and the outcome of the game will be declared when there is a winner. 

## Instructions
Clone this repository to your desired location using `git clone path-to-your-repo` then run `gem install bundler` (if you don't already have bundler), and then use the command `bundle install`.\
\
Whilst in the main directory of the `rps_challenge` repository, use the command `rackup` to begin (alternatively use `ruby app.rb`) which will then allow you navigate to the URL `localhost:9292` inside your web browser. From there, you can enter your name and begin your game of Rock-Paper-Scissors versus the computer.\
\
Additionally, I have made a multiplayer option so that you can go versus another human player assuming that you are playing on the same machine (just remember to look away when it's the other player's turn!) I have also added a counter that tracks the total number of rounds and the wins for each player, which is displayed after each round ends.\
\
In order to run tests, use the command `rspec` inside your terminal whilst inside the main directory.\
\
Here is what my webpage looks like:
![Screenshot](https://i.imgur.com/H2SMxD8.png)
![Screenshot](https://i.imgur.com/FnxgpG4.png)
![Screenshot](https://i.imgur.com/HpClq4l.png)

## User Stories

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## References
```
https://www.htmlhelp.com/reference/html40/forms/input.html#radio
https://relishapp.com/rspec/rspec-expectations/docs/compound-expectations#use-%60or%60-to-chain-expectations
https://gist.github.com/wynand1004/b5c521ea8392e9c6bfe101b025c39abe
https://commons.wikimedia.org/wiki/File:Rock-paper-scissors.svg
```
used the above to do radio buttons for player choice\
used the above to do `or` in rspec\
ASCII art used in README by Christian Thompson (`wynand1004` on GitHub)\
used the above picture in the homepage, taken from the user `Enzoklop` on Wikipedia. The image is published under the license: `https://creativecommons.org/licenses/by-sa/3.0/deed.en`

## Functionality yet to be added
Rock Paper Scissors Spock Lizard\
Make webpage look nicer with more pictures, spacing, formatting etc