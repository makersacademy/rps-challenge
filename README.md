# RPS Challenge

![RPS](https://content.screencast.com/users/Pablo_Zendesk/folders/Jing/media/f253915f-ee7c-4abc-a26a-7295edc367ce/00000005.png)


Techology
----

Game written in Ruby using the Sinatra framework. Code built using Test-Driven Development. SimpleCov shows 100% of the code is covered by tests. Unit tests are run with Rspec, Features tests with Capybara.


How to get the game started
----

You will need to go to your terminal and clone the repository, then you will need to go to the cloned folder and run 'bundle' in order to install the gems used to run the program. In order to launch the program you will need to type 'rackup'

```
$ git clone git@github.com:Pablo123GitHub/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup

```

How to play the game
----

You have two options right at the start: you can play against the computer or against another player.

#### if you play against the computer

You click on the "vs_computer" button; you then have to register through a form

![](https://content.screencast.com/users/Pablo_Zendesk/folders/Jing/media/380f19bf-ed4e-4ce5-99e1-9461935f7e04/00000010.png)

You then click on the Save button, which prompts you to choose Rock, Scissors, or Paper :

![](https://content.screencast.com/users/Pablo_Zendesk/folders/Jing/media/b5e52217-972b-4a9b-bd14-8271e78b52e3/00000011.png)

Upon selecting an option, the computer generates its own random choice and the winner is decided based on the following rules :

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock


#### if you play against another human player

You click on the "vs_player" button; you then have to register both players' names

![](https://content.screencast.com/users/Pablo_Zendesk/folders/Jing/media/3dc185a9-3319-45cb-8e44-32b85370a1aa/00000007.png)

Click on the Save button. You then have to select the choice for each player :

![](https://content.screencast.com/users/Pablo_Zendesk/folders/Jing/media/4b6b2112-2685-4846-9bed-0d36b8fe478b/00000008.png)

Upon selecting the option for the second player : a winner is decided

![](https://content.screencast.com/users/Pablo_Zendesk/folders/Jing/media/b529a387-839e-4f91-a7a8-9f214eb886ab/00000009.png)
