## User Stories & Object Model Tables

#### Register name

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```

Object | Messages
------------------------------- | ---------------------------------------
Player | register_name

#### Feature breakdown

1. Can enter player name (form)

2. POST player name(s)

3. Show (GET) player name(s) to play match

#### Play game

```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Object | Messages
------------------------------- | ---------------------------------------
Player | register_name
Player | play_game

#### Feature breakdown

4. Player 1 makes their move

5. Computer makes randomised move OR Player 2 makes their move

6. Calculate winner and loser or draw (see rules below)

7. Ask if players wish to play again 


------

## Rules

- `Rock` beats `Scissors`
- `Scissors` beats `Paper`
- `Paper` beats `Rock`