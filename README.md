#  The Rock_Paper_Scissors  Challenge.
## Context.
Weekend (ruby coding) Challenge for the third week of Makers Academy Course.

## Documents Organisation.  
* The Original README.md file containing the requirements of this challenge is renamed to Challenge_Instruction.md.
* Model: ./lib/
* Views: ./views/
* Controller : app.rb
* Tests: ./spec/

## Development Environment.    
* Language : Ruby
* Library / Domain-specific language:  Sinatra  


## Test Environment.  
* Feature tests : Rspec + Capybara ( default driver: RackTest;  alternative driver: Selenium)
* Unit test:  Rspec  


## Versions.  
* Current version : Two Players’ game
* Previous version: Playing with computer

## How to Run.  

### Two Players.
Git clone the files to your computer and navigate to the app repository in terminal. In the terminal, run the rackup.  

```
➜  rps-challenge git:(master) rackup -p 4567
```

You should see the following:

```
INFO  WEBrick 1.4.2
INFO  ruby 2.5.0 (2017-12-25) [x86_64-darwin18]
INFO  WEBrick::HTTPServer#start: pid=9201 port=4567
```

Player 1. :
* Open google chrome (or other browser).    
* type the following url to play the game:  http://localhost:4567/
* follow the instruction on each page.

Player 2:
* Open another  browser or tab.
* type the following url to play the game:  http://localhost:4567/
* follow the instruction on each page.

### Play with computer.
Set-up:
*  navigate to the app repository and run following command in terminal to change to play_with_computer version.

```
git checkout 4d738dd
```

Play:
* run the server  by following same steps with two player version.  
* type the following url to play the game:  http://localhost:4567/
* follow the instruction on each page.   

Reverse to two players version:  
*  navigate to the app repository and run following command in terminal   

```
git checkout master
```
