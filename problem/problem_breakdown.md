# Problem breakdown

## User story 1 - Register name

```
As a marketeer,
So that I can see my name in lights,
I would like to register my name before playing an online game.
```


#### Object model

Object | Messages
--------------- | --------------------
User | register_name


#### Feature breakdown

1. Can enter player name (form)

2. POST player name

3. Show (GET) player name


------

## User story 2 - Play game

```
As a marketeer,
So that I can enjoy myself away from the daily grind,
I would like to be able to play rock/paper/scissors.

```


#### Object model

Object | Messages
--------------- | --------------------
User | register_name
User | play


#### Feature breakdown

4. Player make first move

5. Computer make move (randomised)

6. Calculate winner and loser or draw

7. Play again if draw


------

## Rules

- `Rock` beats `Scissors`
- `Scissors` beats `Paper`
- `Paper` beats `Rock`
