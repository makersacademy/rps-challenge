# RPS Challenge

As a marketeer be able to register my name before playing an online game. The game the marketeer can play is rock/paper/scissors.

## Approach
I planned out the user by taking the main objects and deciding how they will interact with one another. As I was using the sinatra framework I had to organise the app using the MCV approach. The controller app file routed the correct pages to display in the views and I started out using them to collect data via the params and storing them in a session variable. I then moved to creating a games and player class with the responsibility of storing and implementing the game moved to them. Feature and unit testing were completed using capybara and rspec.

## Reflection
Although the coding of the app was straight forward the use of a RpsWeb class to help with presentation concerns like that of the result of the game would help with the separation of concerns in this case.

## Files

Written in Ruby Version 2.5.0

    ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-darwin17]

Basic file structure

    app.rb
    │
    ├── lib
    │   ├── game.rb
    │   └── player.rb
    ├── spec
    │   ├── player_spec.rb
    │   ├── game_spec.rb
    │   ├── spec_help.rb
    │   └── features
    │       ├── choose_move_spec.rb
    │       ├── enter_name_spec.rb
    │       ├── game_result_spec.rb
    │       └── web_helpers.rb
    └── views
        ├── index.erb
        ├── game_result.erb
        └── play.erb
