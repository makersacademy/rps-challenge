RPS Challenge - Week 3 (JM Note)
============================
TEST driving development of web application using Sinatra 

Tech used
---------
* Sinatra Framework
* Capybara/RSpec
* Ruby

Folder layout (Sinatra structure)
---------------------------------
```
├── app.rb
├── config.ru
├── lib
│   ├── computer.rb
│   ├── game.rb
│   └── player.rb
├── spec
│   ├── features
│   │   ├── enter_name_spec.rb
│   │   └── play_game_spec.rb
│   ├── spec_helper.rb
│   └── unit
│       ├── computer_spec.rb
│       ├── game_spec.rb
│       └── player_spec.rb
└── views
    ├── index.erb
    └── play.erb

```
Tests
------
* All RSpec feature/unit tests have passed - 100% coverage

```
 rspec

Enter name
  Submitting name

Playing game
  See options: Rock, Paper, Scissors
  Choose an option
  See the result

Computer
  is expected to respond to #computer_choice
  #computer_choice
    can choose a random option

Game
  can show results when it was drawn
  can show results when you won
  can show results when you lost

Player
  can submit name
  can choose : Rock, Paper, Scissors

COVERAGE: 100.00% -- 75/75 lines in 8 files

```

Instruction
-----------
```
git clone git@github.com:[USERNAME]/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup

```