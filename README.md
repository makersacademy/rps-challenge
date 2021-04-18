# RPS Challenge - Solution

Welcome to my solution for the RPS challenge. Below I have explained how I approached the challenge, the process I followed and the learning outcomes. 

Objective
---------
The objective of this challenge was to create a web app which lets the user play rock, paper, scissors with the computer. 

How to play
-----------
First, enter following commands into your terminal. 
```
git clone git@github.com:ahmad047/rps-challenge
bundle
rackup
```
Then you can go the local host web page on your web browser and play the game from there.

Progress and Learning Outcomes
------------------------------
This was a very fun challenge, and I really learned a lot while completing this. Some of the highlights from learning objectives covered are below. 

1. Understanding of MVC pattern
2. Debugging web apps
3. Writing feature test using capybara
4. Understanding of how web apps work
5. An extensive understanding and application of class
6. variables, class methods and class instance variables


Program (Features and Functionality)
------------------------------------
The program allows user to play a game where they can choose from one of three options which are rock, paper and scissors.

**Domain model**

Please follow this link for [Domain model and user story representations](https://docs.google.com/document/d/1xfRNeKF8D11Tye7pwrr5v-diAF5m8dJ72TO8D6LT8WY/edit?usp=sharing). 

**Rules of the game**

The basic rules of the game which have been implemented can be found [here](https://en.wikipedia.org/wiki/Rock_paper_scissors).

**Classes**

The program has three classes which are game, player and computer. For each class the methods and features have been clearly defined in the code and have all been tested out. 

* Game - This class is responsible for creating a new game, saving that game, loading the game and determining a winner.
* Computer - This class is responsible for creating a new computer instance which can choose either one of the three game options randomly.
* Plyer - Player is responsible for creating a new instance of player which will face off against the computer during the game.

**Controller**
The file called app.rb acts as the controller for the game and is the bridge between the front end and the back end. The controller has been made as skinny as possible and all the rules of web application development known to me have been followed in writing this. However, it still needs further improvement.

**Views**
The front end of this game is not very sophisticated at the moment and has been written using basic HTML. This is subject to improvement as well and I will be adding a more user friendly design in the future. However, it still has all the functional features that can be expected of the game. They allow player to enter their name and play the game. The name is then displayed on top of other views for the duration of the game. The user can press one of three buttons to choose an option. Once user has finished a game they are then prompted to play again. 

Challenges Faced
----------------

This has been a really fun weekend as I enjoyed building the game and moreover playing it. However, some of the challenges faced are below. 

**Web App concepts**

This was the first time that I have ever created a web app. I had no prior knowledge of even the basic concepts of most of new topics covered this week. The concept of get and post request did not start making sense until I had built something using that practically. However, I overcame this by reminding myself "it's not hard, it's new". 

**MVC**

MVC was something which seemed very difficult at first, but after completing the week and weekend challenge I do understand the concept and application. However, there is still a long way to go on this. 


Conclusion
----------

The weekend challenge was a lot of fun and it really kept me engaged. I feel that I can break down any problem now which is very empowering. I did not get blocked like I was during first two weeks.

I am excited about the prospect of solving more challenged over coming weeks!
