# Rock Paper Scissors
##### Battle against the computer! 

### Set-up:
```
git clone https://github.com/EsamAl-Dabagh/rps-challenge.git
cd rps-challenge
bundle
rackup
```

### Enter your name:
SCREENSHOT

### Choose your weapon:
SCREENSHOT

### Battle against the computer:
SCREENSHOT

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