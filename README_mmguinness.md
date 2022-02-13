# RPS Challenge


Progress note
----
I am aware that I did not remove the global variables from my code! This would be the next step if I had more time, through using a session variable instead.
I am also aware that I could refactor and clean-up my tests to automate some of the repeated filling-in of forms etc.
After this, I would tackle adding a second player, and removing the random choice.

Task
----

To provide a _Rock, Paper, Scissors_ game:

- the user should be able to enter their name before the game
- the user will be presented the choices (rock, paper and scissors)
- the user can choose one option
- the game will choose a random option
- a winner will be declared

* How to use

Fork this repo.
Run the command 'bundle' in the project directory to ensure you have all the gems.
Run tests with RSpec.
Run tests with Rubocop.
Run ruby app.rb in terminal to view in localhost port.

## File Tree
.
├── CONTRIBUTING.md
├── Gemfile
├── Gemfile.lock
├── LICENSE
├── README.md
├── README_mmguinness.md
├── app.rb
├── check.sh
├── config.ru
├── coverage
├── docs
│   └── review.md
├── lib
│   ├── game.rb
│   ├── player.rb
│   ├── random.rb
│   └── result.rb
├── public
│   └── images
│       └── RockPaperScissors.png
├── spec
│   ├── features
│   │   ├── enter_names_spec.rb
│   │   ├── presented_with_three_choices_spec.rb
│   │   ├── select_option_spec.rb
│   │   └── testing_infrastructure_spec.rb
│   ├── game_spec.rb
│   ├── player_spec.rb
│   ├── random_spec.rb
│   ├── result_spec.rb
│   └── spec_helper.rb
└── views
    ├── game_play.erb
    ├── play.erb
    └── start.erb

* RSpec Tests

## Feature Tests

- Enter name
  submitting name

- Three choices available
  Has three options

- select option
  player has selected one option

- Testing infrastructure
  Can run app and check page content

## Unit Tests

- Game
  should start with a random choice for computer
  #play_game
    should evaluate a round of the game

- Player
  #name
    returns the name
  #choose
    choose one option
  #chosen_option
    display the chosen option

- Random
  #random_option
    should chose a random option

- Result
  #winner
    should accept two variables
    should result in a draw
    should result in player one winning
    should result in player two winning
