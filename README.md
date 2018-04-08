# RPS-challenge

Link to the task source with detailed instructions regarding the challenge itself is available [here](https://github.com/makersacademy/rps-challenge).

I used RPS [example](https://www.youtube.com/watch?v=ovwjH64ZGOs&t=670s&list=LLVfF8s5P2mxj3OYyaW6x2rg&index=1)to establish better understanding of testing environment for the game using Ruby language. Also, used RPS Week 3 Challenge [Exemplar](https://youtu.be/GoHKmartBYo). Also, explored ideas from [catherinestevenson/rps-challenge](https://github.com/catherinestevenson/rps-challenge) repository. 

Unfinished code or other missing elements will be highlighted, and plan will be provided how to finalise the challenge in [ToDo](#todo).

## Getting Started

These instructions will help to follow the steps of the project.

### Prerequisites & Installing

- Fork this repo, and clone to your local machine.
- Run the command gem install bundle (if you don't have bundle already).
- Open terminal:
	- rspec
	- rackup -p 4567
	- In your browser go to http://localhost:4567/ to play!

## Running the tests

Run the automated tests for this challenge via RSpec -fd.

## Built With  

* [Visual Studio Code](https://code.visualstudio.com/)
* [Sublime Text](https://www.sublimetext.com/)
* [iterm2](https://www.iterm2.com/)
* [Capybara](https://capybaraworkout.herokuapp.com/)
* [Sinatra](http://sinatrarb.com/)

## Authors

* [Vytis Vadoklis](https://github.com/VytisVA)

## Steps Completed

- 1 - Setting up project:
	- Canvasing ideas, sketching, googling, running various app versions.
	- Checking if required gems are installed, setting up app.rb, running rackup.
	- Setting up testing environment.
- 2 - Start working on the first user story:
	- First user story asks "- the marketeer should be able to enter their name before the game":
	- enter_name_spec created, alongside with app.rb and files and view folder(index.erb and play.erb).
- 3 - Moving to the second user story element:
	- Establishing POST/redirect/GET pattern.
	- "the marketeer will be presented the choices (rock, paper and scissors)" - which is implemented via:
	- Putting content "Please select rock, paper or scissors".
	- Establishing web_helpers to make feature testing more efficient.
	- Putting actual buttons with rock, paper or scissors.
	- DRY'ing the code and removing certain erb's; 
	- Disabling most of the feature test, since the main feture test now is play_spec.rb.
- 4 - Working on user story "the game will choose a random option":
	- Made test pass when computer selects "Rock" option; Controller refactoring.
	- Made test to pass when computer selects random option.
- 5 - Working on "a winner will be declared":
	- Establishing testing frameworks for turn_spec.rb and play_spec.
	- Added some CSS. 		  	

## ToDo

- 1 - Bonus level 1: Multiplayer:
	- Change the game so that two marketeers can play against each other ( yes there are two of them ).
- 2 - Bonus level 2: Rock, Paper, Scissors, Spock, Lizard:
	- Use the special rules ( you can find them [here](http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock ) 	