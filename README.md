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

![image](https://user-images.githubusercontent.com/29439776/36079105-6b78c4a0-0f77-11e8-9d90-0aeb302cbf5c.png)


* Begin playing by selecting either rock, paper or scissors. Meanwhile, the virtual opponent also selects an option at random

![image](https://user-images.githubusercontent.com/29439776/36079118-7cbdb072-0f77-11e8-8609-b9a762471772.png)

* A winner is declared

![image](https://user-images.githubusercontent.com/29439776/36079132-a0f4f5ea-0f77-11e8-9744-5131e7eba0c2.png)


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