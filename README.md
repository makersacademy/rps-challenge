I am building a simple web app allowing a player to play "Scissors Paper Stone" against a computer.

The basic codebase is being made with Ruby. All test-driven, the game is handled by three simple classes containing all the logic required for the game in a single method per class, with the active (human) player being the initial class and the computer player passing its own (randomly-selected) class into the initial class as an argument on the 'move' method.

This will then be put on the web using Sinatra. Again, all test-driven using Cucumber.

CURRENT ISSUES:
- problems with config.ru file pointing to controller file
- step definitions conflicting (duplicating actions)
- implementation of buttons and web app functions 
