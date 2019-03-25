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
- Player - choose, name, random
- Game - declare_winner, play
- Option - name, image

### Bonus - change the game so that two marketeers can play against each other

This needs some user stories before I can properly extract what the nouns and verbs would be
- Game - turn

## Sunday - current progress
- User can enter their name and see it displayed back
- User can play rock, paper, scissors against the computer and find out who wins
- Checked for single responsibility of classes and methods
- Checked the tests and code are DRY
- Added a stylesheet
- The game_spec file mocks the randomness of the computer choice
- Dependency injection of Rules - I want my tests to follow the actual rules so I am not going to do a dependency injection
- * TODO * do bonus question 1
- * TODO * do bonus question 2 - ask user which game they would prefer to play and then build a second set of files that care about that (including the random setting of the computer choice). Check whether this could be done better
- * TODO * add error handling
- * TODO * check whether rules could be done in a neater way - refactored after peer review with Masha
