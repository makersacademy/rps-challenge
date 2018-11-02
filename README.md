RPS challenge
=============

This is the completed 2 main tasks for this latest challenge. The user stories I covered are described below and are also included within the Capybara spec file.


Gems used
---------
Capybara
Sinatra


To start the game
-----------------
- type 'rackup -p 8080' in the terminal.
- then open 'localhost:8080' in your browser.


Additional Notes
----------------
Everything seems to work fine in this human v pc version. The results page loops back to the start as I had planned, but there could be an option to terminate/quit here.
The tests all pass with 100% coverage and no Rubocop offences detected. Hopefully I am testing for the right things in my code.
I also seemed to have better luck separating out concerns and responsibilities, than in some previous work, but I think some of the "Model" functions (from MVC) should move out from the result.erb file - I intend to look into this and experiment with moving out this particular code when I get advice.
I could have also spent many hours on CSS styling as was thoroughly enjoying reading up on this.
I would also like to have an attempt at the Bonus level Multiplayer version at a later date.


User Stories
------------
```
User Story 1
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

User Story 2
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
