# RPS Challenge

Description
----

This is a program hosted by Sinatra, that allows you to play the _Rock, Paper, Scissors, Lizard, Spock_ game.


Tasks
----

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

How to play
----
1. Open the program terminal or an equivalent and enter:
```
$ git clone https://github.com/RobertClayton/rps-challenge.git
```
2. Change directory into the folder just created.
```
$ cd rps-challenge/
```
3. Install the apps dependencies
```
$ bundle install
```
4. Use terminal to host a server to play the game.
```
$ rackup config.ru
```
5. Go to a web browser and play the game at the following address:
```
http://localhost:9292/
```
6. Enter the player's name.
7. Click the play button.
8. This next page shows you the score and gives you a choice of the five different options. When you choose an option via the buttons, the computer(CPU) will also make a random choice. Is is then displayed if you won, lost or draw and the score updated. To play, click the button which matches your choice.
