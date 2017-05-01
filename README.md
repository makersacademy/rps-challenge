# Rock-Paper-Scissors-Lizard-Spock

![Alt text](https://github.com/JessicaBarclay/rps-challenge/blob/master/links/rpsls.jpg "rpsls")

## Rules:
Scissors cuts paper. Paper covers rock. Rock crushes lizard. Lizard poisons Spock. Spock smashes scissors. Scissors decapitates lizard. Lizard eats paper. Paper disproves Spock. Spock vaporizes rock. Rock crushes scissors.


```
As a visiter
So that I can see my name
I would like to register my name before playing an online game

As a visiter
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors/lizard/spock

As a visiter
So that I can know who has won the game
I would like to see a confirmation of the result
```

### Installation:
```
$ git clone git@github.com:[USERNAME]/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
# whilst running rackup visit localhost:9292 to play!
```
![Alt text](https://github.com/JessicaBarclay/rps-challenge/blob/master/links/you-win.png "you-win")

##### Problems encountered:

1. Storing the User's weapon choice as a session.

- I had planned on having a post-redirect-loop(similar to the /names post request) for when the User chooses their weapon. I wanted to store this memory in session params, however I struggled to then pass this as an argument to the RPSLS class.

-This means that I had to have views for each weapon choice, and I had to hard-code the argument to the RPSLS class

#### Test coverage 100%
