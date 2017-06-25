![Rock Paper Scissors](http://i.imgur.com/aRY1mvQ.png)

Task
-------
The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

The task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Installation
----

- Run `git clone https://github.com/MarySalemme/rps-challenge.git`
- Navigate to the repo `cd rps-challenge`
- Run `gem install bundle` from the command line
- Run `bundle`

Folder structure
----
```
├── app
│   └── rps_app.rb
│   └── views
│       ├── index.erb
│       ├── play.erb
│       ├── lose.erb
│       ├── win.erb
│       └── draw.erb
├── lib
│   ├── game.rb
│   ├── computer.rb
│   └── player.rb
└── spec
    └── spec_helper.rb
    └── feature_tests
    │   ├── choice_spec.rb
    │   ├── enter_name_spec.rb
    │   ├── lose_spec.rb
    │   ├── draw_spec.rb
    │   ├── win_spec.rb
    │   └── web_helper.rb
    └── unit_tests
        └── computer_spec.rb
        └── game_spec.rb
        └── player_spec.rb
```

Usage
----
- Type `rackup` in the command line

- `http://localhost:9292/`  
Type your name and click on `Enter game`  

<img src="http://i.imgur.com/hfskGJi.png" alt="Homepage" style="width: 400px;"/>

- `http://localhost:9292/play`  
Enter your choice between `Rock`, `Paper` or `Scissors` and press `Play`

<img src="http://i.imgur.com/nd0BlHD.png" alt="Making the choice" style="width: 400px;"/>

- `http://localhost:9292/result`  
See the result and press `Play again?` to restart

<img src="http://i.imgur.com/R8nZ2lT.png" alt="Result" style="width: 400px;"/>

Running tests
----
Type `rspec` in the command line

**Overall test coverage: 100%**
