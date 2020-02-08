# Rock Paper Scissors Challenge #


*This programme does...this (programme description)*

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

User story 1 model: 

![sequence diagram](assets/images/sequence-diagram-1.png)

User story 2 model: 

![sequence diagram](assets/images/sequence-diagram-2.png)

Class models:

1.

| Object: |**Player**| | | |
|:------:|:------------:|:-:|:-:|:-:|
|**Attributes:**|Name|| | |
|**Methods:**|||||

2.

| Object: |**Game**| | | 
|:------:|:------------:|:-:|:-:|
|**Class methods:**|Create|Instance | 
|**Attributes:**|Player| Player_move | 
|**Methods:**|Computer_move| select_winner | move |

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
4. Game: runs a random computer move
5. Game: compares user move against computer
6. Game: declares a winner

**Edge cases**
1. Player doesn't enter a name

## Credits ##

View original challenge instructions from [Makers Academy](https://makers.tech/) [here](Challenge-instructions.md).
