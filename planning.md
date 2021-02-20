# Planning

## User Stories

### Story

> As a marketeer
>
> So that I can see my name in lights
>
> I would like to register my name before playing an online game

### Nouns/verbs

| Nouns | Verbs |
| ----- | ----- |
| name | register |
| online game | playing |

### Story

> As a marketeer
>
> So that I can enjoy myself away from the daily grind
>
> I would like to be able to play rock paper scissors

### Nouns/verbs

| Nouns | Verbs |
| ----- | ----- |
| rock paper scissors | play |

## Class Diagram

Thinking about webpages:

* Homepage ('/') where the player enters their name and submits it. POST request to form submission page.
* Form submission page where we store the name and redirect to game page with GET request.
* Game page where the player chooses rock paper scissors. GET request to result page.
* Result page - RPS app chooses randomly in the background and page displays the winner.



Thinking about classes for the game:

Player
Move (Rock, Paper, Scissors)
Game (works out whether player has won)

| Class:  |
| ------- |
| __Attributes__ |
| |
| __Methods__ |
| |

## Sequence Diagram

[diagram.codes](https://playground.diagram.codes/d/sequence)

````ruby

```
