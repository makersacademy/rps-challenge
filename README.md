# RPSLS Challenge

Instructions
-------

### Installation

Clone repo, rackup to run locally or push to your favourite PAAS provider.

### Single Player

Go to the root site, enter your name and click Single Player
  ![alt text](https://i.imgur.com/VlSHO2Q.png)

Click an option and the result will be shown instantly!
  ![alt text](https://i.imgur.com/0A3he9b.png)
  
Continue until you get bored.
  
### Multiplayer

Go to the root site, enter your name and click Multiplayer
  ![alt text](https://i.imgur.com/VlSHO2Q.png)
  
Get a friend to do the same and make sure you wait for them!
  ![alt text](https://i.imgur.com/2u1DfSF.png)
  ![alt text](https://i.imgur.com/TKwp5pX.png)
   
Click your move - whoever is faster to decide will have to wait for their partner before continuing...
  ![alt text](https://i.imgur.com/rL825eb.png)
  
Rub it in when you win!
  ![alt text](https://i.imgur.com/qAycn6M.png)
  
Continue until your friend gives up.
  

Task
----

The overall architecture of both the Single and Multiplayer games is similar - a Game/MultiplayerGame class handling the game logic, the Battle class determining the winner, Messager creating messages to display. Single Player uses an AI class to randomly pick moves, while Multiplayer has a Player class to handle sessions, store moves and store ready status (which is required for the waiting pages).

Initially Game was the parent class, but by the end there wasn't any parent functionality used by Multiplayer game due to the vastly differring requirements so this was removed.

I spent most of my time focusing on getting multiplayer working - getting the game to handle each session individually was a bit difficult, but I'm happy with the result as far as static web pages go. I am also unaware of how to feature test the multiplayer game, so I was unable to create any tests beyond the first sign in - anything else required more than one browser to access the server at once.
