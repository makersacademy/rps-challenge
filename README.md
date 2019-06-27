# Rock Paper Scissors
##### Battle against the computer! 

## Set-up:
```
git clone https://github.com/EsamAl-Dabagh/rps-challenge.git
cd rps-challenge
bundle
rackup -p 4567
```

### Enter your name:
![Homepage](https://i.imgur.com/fOM5fJo.png)

### Choose your weapon:
![Choose page](https://i.imgur.com/AlqQSsd.png)

### Battle against the computer:
![Battle page](https://i.imgur.com/JNlaybq.png)

## Design
This game consists of two models:
`Game`, `Player`

`Game` is initialized with two arguments, `player01`, `player02`.

`Player` is initialized with one optional argument, `name`. If no argument is supplied, the default argument is "The Computer". This is the opponent the user plays against.

`Player`'s `choose` method takes one optional argument. For the user, their selection on "/choose" is passed to `choose` as the argument. For "The Computer" a `RandomPicker` module is included to pass in a `random_choice` as the default argument to `choose`.

### Folder structure:
```
├── lib
│   ├── game.rb
│   ├── player.rb
│   └── random_picker.rb
│
├── public
│   └── style.css
│
├── spec
│   ├── features
│   │   ├── user_stories_spec.rb
│   │   └── web_helpers.rb
│   │
│   ├── support
│   │   └── shared_examples_for_randomPicker.rb
│   │
│   ├── game_spec.rb
│   ├── player_spec.rb
│   ├── random_picker_test_spec.rb   
│   └── spec_helper.rb
│
├── views
│   ├── battle.erb
│   ├── choose.erb
│   ├── footer.erb
│   ├── header_nav.erb
│   ├── header.erb
│   └── index.erb
│
└── app.rb
```