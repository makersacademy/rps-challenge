# RPS Challenge

Summary
-------

* This application allows a player to take part in a game of Rock, Paper, Scissors against a virtual opponent.

* The rules of the game are as follows:
  - Rock beats Scissors
  - Scissors beats Paper
  - Paper beats Rock

Installation
-------
To play the application online:
* Visit https://rock-paper-scissors-makers.herokuapp.com/

To play the application locally:

* Clone the repository

* Run `gem list` in the project directory to check whether `bundler` is installed. If it is not, run `gem install bundler`

* Run `bundle` in the project directory to ensure all necessary gems are installed

* Run `rackup` and visit `localhost:9292`

Playing the game
-------

* Enter your name before the game begins

![image](https://user-images.githubusercontent.com/29439776/36079715-05f4ba1a-0f7e-11e8-81e6-263346794613.png)

* Begin playing by selecting either rock, paper or scissors. Meanwhile, the virtual opponent also selects an option at random

![image](https://user-images.githubusercontent.com/29439776/36079724-185f8be4-0f7e-11e8-93c7-c4b018e0391f.png)

* A winner is declared

![image](https://user-images.githubusercontent.com/29439776/36079732-2d5c41f4-0f7e-11e8-8b39-f182506a0e6b.png)


User stories
----
```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

```