
[![Build Status](https://travis-ci.org/letianw91/rps-challenge.svg?branch=master)](https://travis-ci.org/letianw91/rps-challenge)

[![Coverage Status](https://coveralls.io/repos/github/letianw91/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/letianw91/rps-challenge?branch=master)

# RPS Challenge: Rōnin Badge Test

## Installation
    1. Clone the repository
    2. Open terminal in the game directory
    3. `bundle install`
    4. `ruby app.rb`
    5. Game is now playable at http://localhost:4567


## Play instructions

    + Single Player
        1. Put in your name in single player
        2. Click "Submit" to start playing
        3. Select one of the options
        4. Be humbled by your loss
        5. Choose to return to title page, or player another game with the same player

    + Multi Player
        1. Put in names for two players in the multiplayer
        2. Click "Fight to the death!". But don't do that, it's just a figure of speech.
        3. Player 1 select options.
        4. Player 2 select options, based on whether he was able to peek.
        5. See the result. Again, this is just a game. 
        6. Choose to return to title page, or play another multiplayer game.

    + Rock Paper Scissors Lizard Spock
        1. Choose Rock Paper Scissors Lizard Spock on title page
        2. The rest is the same

## File Structure
```
├── app.rb
├── config.ru
├── CONTRIBUTING.md
├── enabled.yml
├── Gemfile
├── Gemfile.lock
├── lib
│   ├── game.rb
│   ├── player.rb
│   ├── rulesplus.rb
│   └── rules.rb
├── LICENSE
├── Rakefile
├── README.md
├── spec
│   ├── features
│   │   ├── multiplayer_spec.rb
│   │   ├── play_rpsls_spec.rb
│   │   ├── play_rps_spec.rb
│   │   ├── register_name_spec.rb
│   │   ├── restart_game_spec.rb
│   │   └── web_helpers.rb
│   ├── game_spec.rb
│   ├── player_spec.rb
│   ├── rulesplus_spec.rb
│   ├── rules_spec.rb
│   └── spec_helper.rb
└── views
    ├── choose_game.erb
    ├── draw.erb
    ├── index.erb
    ├── lose.erb
    ├── multiplayer.erb
    ├── player_2_turn.erb
    ├── play.erb
    ├── rpsls_index.erb
    ├── rpsls_multiplayer.erb
    ├── rpsls_player_2_turn.erb
    ├── rpsls_play.erb
    └── win.erb
```


