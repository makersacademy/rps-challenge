# RPS Challenge

### How to run application

```$ git clone git@github.com:[USERNAME]/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```
* In your chosen web-browser use: `localhost:9292` (if running Rackup's default port).

#### The following should be displayed:
![alt text](https://www.dropbox.com/s/8ncdco60cxg3g2j/Screen%20Shot%202017-05-01%20at%2023.37.21.png?dl=0)
#### Enter your name.
![alt text](https://www.dropbox.com/s/1egh1qsn1pvqh7z/Screen%20Shot%202017-05-01%20at%2023.37.47.png?dl=0)
#### Choose an option from the buttons.
![alt text](https://www.dropbox.com/s/nfiqilc89ak7lfp/Screen%20Shot%202017-05-01%20at%2023.38.04.png?dl=0)
#### Result. Play again takes you back to the second screenshot, quit returns you to the index page.

### Rspec report

```➜  rps-challenge git:(master) ✗ rspec

Rock, Paper, Scissors buttons
  Player chooses Rock
  Player chooses Paper
  Player choose Scissors

testing infrastructure
  runs app and tests page content
  returns to /play when Play Again is clicked
  returns to /index when Quit is clicked

Test name
  player fills in name to play

Player
  #name
    returns the name

Finished in 0.0988 seconds (files took 0.67302 seconds to load)
8 examples, 0 failures


COVERAGE: 100.00% -- 43/43 lines in 6 files
```


### Issues with program

- Was unsure if best to put a `/result` view rather than a view for each i.e. `/rock`, `/paper`, `/scissors`. Tried `/result` in my diagrams but found it easier to use a view for each outcome. Not very DRY though.
- Could not implement the last bit of functionality for a winner being declared. I was trying to get it to call the player's choice in the controllers but couldn't achieve the desired result. Plus game logic should go in controllers.
- Was thinking of using logic for winner/ looser along the lines of:

```def choose_rock
  return "You won this round" if @@computer.choice == :scissors
  draw_or_loose
end

def choose_scissors
  return "You won this round" if @@computer.choice == :paper
  draw_or_loose
end

def choose_paper
  return "You won this round" if @@computer.choice == :rock
  draw_or_loose
end

private

def draw_or_loose
  return "It's a draw" if player.choice == computer.choice
  return "Computer won this round"
end
```

- Used class variables instead of global variables as they are very slightly better (I hope) though still not great to use.
- Struggled writing non-vacuous unit tests. Coverage still at 100% but doesn't feel like it is as well tested as it ought to be.
