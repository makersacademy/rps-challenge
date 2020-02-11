# Rock Paper Scissors Challenge #

This programme allows a user to play rock paper scissors against the computer.

I created this programme as part of a challenge at [Makers Academy](https://makers.tech/). See [Requirements](#Requirements) for more information on the programme's requirements.

* [Getting started](#Getting-Started)
* [Useage](#useage)
* [Running tests](#Running-tests)
* [Requirements](#Requirements)
* [How I built it](#How-i-built-it)
* [Credits](#credits)


## Getting Started ##

1. Fork this repo, and clone to your local machine. Navigate into the folder.
2. Run the command `gem install bundle` (if you don't have bundle already)
3. When the installation completes, run `bundle`

## Useage ##

This is a web app which you can run on your local server. You will need to use the command line and a browser. In the command line type:

```shell
$ rackup config.ru -p 9292
```

Open your browser and visit [localhost:9292](http://localhost:9292/).
Enter your name and start playing!

## Running tests ##

1. Navigate to top level of project directory
2. In your command line type:

```shell
$ rspec
```

## Requirements ##

### User Stories ###

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
### Functionality ###

* the marketeer should be able to enter their name before the game
* the marketeer will be presented the choices (rock, paper and scissors)
* the marketeer can choose one option
* the game will choose a random option
* a winner will be declared

## How I built it ##

**User story 1 model:** 

![sequence diagram](public/images/sequence-diagram-1.png)

**User story 2 model:**

![sequence diagram](public/images/sequence-diagram-2.png)

**Class models:**

1.

| Object: |**Player**| | 
|:------:|:------------:|:-:|
|**Attributes:**|Name|Move|
|**Methods:**|Choose(move)||

2. 

| Object: |**Computer**| | 
|:------:|:------------:|:-:|
|**Attributes:**|Name|Move|
|**Methods:**|generate_move||

2.

| Object: |**Game**| | | 
|:------:|:------------:|:-:|:-:|
|**Class methods:**|Create|Instance | 
|**Attributes:**|Player| Opponent | Winner |
|**Methods:**|select_winner | | |



### Tests ###

**Feature tests**

1. Player enters name
2. Player chooses move
3. Get computer move
4. Show winner

**Unit tests**
1. Player: player has a name
2. Game: can create a game with a player
3. Player: can choose a move
4. Game: can create a game with a player and a computer
4. Computer: has same pattern as player
5. Computer: selects a random move
6. Game: compares user move against computer
7. Game: declares a winner

**Edge cases**
1. Player doesn't enter a name
2. Player doesn't enter a move
2. No one wins - ruby can't render name of winner

## Further improvements ##

1. Fix styling, particularly on forms and links
2. Add exception if player doesn't select a move
3. Add option for a second player

## Credits ##

View original challenge instructions from [Makers Academy](https://makers.tech/) [here](Challenge-instructions.md).
