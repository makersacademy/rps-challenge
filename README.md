# RPS Challenge

How to Play
===========
 - clone repo and bundle up!
 - rackup and visit your shiny new sinatra ditty in the home route '/'
 - enter your name and specify game parameters
 - multiplayer can be played in two ways:
  * choose on screen setting
  * choose remote setting where you are able to provide remote access to the server -- load the site  in incognito windows or from separate clients so you can have separate cookies to test locally
 - Typical game of rock paper scissors:
  - Rock beats Scissors
  - Scissors beats Paper
  - Paper beats Rock

Development Approach
========
We are provided two user stories:

```
marketeer (user) > website > enter name
marketeer > website > play rock paper scissors against non-player-controlled opponent
```

The first is pretty simple and informs how the user will first interact with the website hosting the rock paper scissors game.  The second encompasses the entire functionality of the game and so should be further interrogated with these additional hints on functionality:

- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

```
marketeer > choose rock, paper, or scissors
website > choose random option
website > display winner
marketeer > play again
website > display match round scores
```

An ambitious plan would add in multiplayer with the following user stories added.  Multiplayer would first be implemented on the same screen and then using cookies through individual browsers.

```
marketeer > website > play rock paper scissors with other marketeers
marketeer > website > specify the number of players, rounds, wins to end a round, turn time limit
marketeer > website > be able to see scores during the game
marketeer > website > make a random move if turn time limit is exceeded
marketeer > website > see match history

```

Regardless of how far my ambition is realised, I think of the classes that will drive this game and proceed to iteratively generate them. Starting with a Game class and considering each user story until a new responsibility appears, yields the following structure for my implementation:

Classes
 - Game
 - Player
 - NPC (Subclass of Player)
 - Match
 - Round
 - Bout
 - Rules

Then I start with the properties that seem to fall out of that class structure:

Properties
 - Game
  - class instance variable
  - # of rounds in a match
  - bouts per round
  - a Rules object
  - collection of Player(s)
  - NPC if one Player
  - a Match

 - Player
  - a name
  - a choice
 - NPC (Player subclass)
  - a name (randomly chosen)
  - a selected_option (random choice)

 - Match
  - a collection of Rounds
  - a collection of players
  - a winner
 - Round (Match subclass)
  - a collection of Bouts
  - a winner
 - Bout (Match subclass)
  - a winner
  - inherit players with super initialize

 - Rules
  - a collection of choices
  - a collection of logic

Next I use those properties to map out interactions of the objects interfaces to determine what methods will need to be defined in order to satisfy user stories.  A few steps on from now I start considering how I'm displaying information, and so come back to refactor my actions based on the information I need to provide.

Actions
- Game
 - initialize(rounds, bouts, player_one, player_two = NPC.new, rules = Rules.new)
  - construct match(round, bouts)
 - reader: match, rules
 - accessor: last_winner
 - self.set/get for Game object storage as class instance variable
 - match_status for providing round winners for the '/play' view in the form of an array of Player names
 - next_bout identifies the first Bout object in Rounds that doesn't have a winner ()
 - play_bout(bout)
  - (updates next_bout.winner and last_winner with Player object or "Tied")

- Player
 - reader: name
 - accessor: choice

- NPC
 - reader: name, choice
 - select option (sample from Game.rules.choices)

- Match
 - reader: rounds, winner
 - who_won(rounds)
 - players (returns @@players)
 - initialize(# round, # bouts, players)
  - construct array of Rounds
  - assign player array

- Round (Match subclass)
 - reader: bouts, winner, players
 - who_won(bouts)
 - initialize(# bouts)
  - construct array of Bouts

- Bout (Match subclass)
 - reader: winner,
 - who_won
  - call rules.declare_winner
 - initialize
  - super


- Rules
 - reader: choices
 - valid_choice?(choice from player) index check of options array not nil
 - declare_winner(Bout)

Next I write the rspec tests for classes and properties one class at a time, then the code to pass those tests.  I move on to write the rspec tests for the actions one class at a time, then the code to pass those tests.  These tests are in spec/unit with ruby files in /lib.

Now I'm singing Sinatra.

I like the idea of having two views to serve up this game on the following routes:
 - The home route '/'
  - erb :index
   - name entry and match configuration
   - configuration POST to /start-game
 - The play route '/play'
  - static display of information update with array @round_winners = game.match_status
  - retrieves last winner's name or 'Tied' or nothing @winner = game.last_winner.name
  -
  - erb :play
   - choice submission buttons
   - displaying match information for both players
   - player choice selection POST to /decide-winner


With the remaining routes for containing model logic:
 - /decide-winner
  - if valid_choice?(params[:first_player_choice]) == false
    - @invalid_entry = true redirect /play (Data validation, yes even for buttons)
  -
  - game.match.players.first.choice = params[:first_player_choice]
  - game.match.players.last.choice = params[:second_player_choice]
  - current_turn = game.next_bout
  - game.play_bout(current_turn)
  - redirects to /play
   - displays who won
 - /start-game
  - creates the Game object and stores it in the class instance variable for Game


I write tests for Capybara under spec/features for the Sinatra routes one at a time and then writing passing code, and then verifying that my experience manually reflects the desired outcome.

Then we consider some CSS.

In code review we'll be hoping to see:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this at this moment.
