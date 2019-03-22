## User stories provided (for feature testing):

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```

```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## User stories I have extracted for unit testing:

```
As a marketeer
So that I can win a game of Rock, Paper, Scissors
I would like to be able to choose Rock when the computer chooses Scissors
```

```
As a marketeer
So that I can lose a game of Rock, Paper, Scissors
I would like to be able to choose Rock when the computer chooses Scissors
```

```
As a marketeer
So that I can play against the computer
I would like the computer to choose their option
```

```
As a marketeer
So that I can clearly see who has won the game
I would like to see a clear message with the winner's name
```


## Approach:
- Follow my weekend challenge notes as a basis (https://github.com/samanthaixer/Notes/blob/master/WeekendChallengeApproach.md)
- Look back at mocking random behaviour - how can I test what the computer returns? (Airport challenge)
- Look at the afternoon battle challenge on how to make the game a two player game
- Avoid global variables - investigate the other options!
- Do some work on the user interface - don't forget to put the winner's name in lights!

## Nouns and Verbs

- Marketeer
- Game - register_name, display_name, choose_option
- Player - choose, name, human?
- Game - declare_winner, play
- Option - name, image

### Bonus - change the game so that two marketeers can play against each other

This needs some user stories before I can properly extract what the nouns and verbs would be
- Game - turn

## spec_helper

I might need one or more of these in my spec_helper:

```
require File.join(File.dirname(__FILE__), '..', 'app.rb')
require File.join(File.dirname(__FILE__), 'features', 'web_helpers.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'

ENV['RACK_ENV'] = 'test'

Capybara.app = #whatever my app is called
```
