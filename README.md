# Rock Paper Scissors Challenge

About
----

This is the Week 3 Makers Academy challenge, and was built over a weekend using Ruby and Sinatra.  

The task was to create a _Rock, Paper, Scissors_ game which can be played on the web with the following user stories:

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

##### Additional User Stories
```
As a player  
So I can who's playing  
I want to enter my name
```
```
As a player  
So I can make my move
I want to choose my weapon
```
```
As a player
So I can claim victory
I want to see who wins
```
```
As a player
So I can get on a winning streak
I want to be able to play again
```

To run program
---
1. Clone this repo
2. Run `$ bundle`
3. Run `$ rackup`
4. In a browser, go to http://localhost:9292/ and start playing!


Approach
----

- I began by creating additional user stories (see above) for the features I wanted my RPS game to have

- I then worked through the stories, creating feature tests for each one

- I tried to follow Separation of Concerns as much as possible, which led me to create separate classes for Game, Player and Computer

- Once I had the full functionality working, I created CSS files to style the public interface

Additional features
------
As this was built over a single weekend, I wasn't able to implement every feature I would've liked. Since doing this project in Week 3, I have also learned a great deal more, so given more time now, I would:
- Continue refactoring my code to move the logic into the model rather than the view/controller

- Create a PvP mode, rather than just player vs. computer. The player could then select which mode they wanted

- Add a win/loss counter so the player can keep track of their victories and defeats

- Extend the game with further weapons (e.g. Rock Paper Scissors Lizard Spock)
