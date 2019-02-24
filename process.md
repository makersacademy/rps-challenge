# Rock, Paper, Scissors

The classic Rock, Paper, Scissors game will be implemented as an online application with the following features.

- A player can enter their name and see it as they play
- They can then choose rock, paper, or scissors
- Their the application will play against them, picking randomly
- A winner is declared

# Method

Set up app and index files, server hosts index page.

TEST - Feature test expecting that player could enter and see their name

(Unable to find visible field :name that is not disabled)

RED - Added name field to '/'

(Unable to find visible button "That's my name!")

RED - Added submit button to '/'

(expected to find text "Te llamas Spidey" in "Test")

GREEN - Added '/game', post name param as a session

PASSED, 100% COVERAGE, RUBOCOP CLEAR


Now that the first user story has been implemented, the actual game needs developing. This is best achieved through creating a class.


Created a game class and spec file.


TEST - Unit test expecting player to be able to choose scissors

RED - Defined the class and created above test in rspec

(wrong number of arguments (given 1, expected 0))

RED - Defined initialize with 'name' argument

(undefined method 'play')

GREEN - Defined method play with 'choice' argument

PASSED, 100% COVERAGE, RUBOCOP CLEAR


Now that the game class exists, it needs
a) to be integrated into the app file
b) to function as a game


REFACTOR - To integrate the game into the app file, I have replaced sessions with class instance variables. This has the added benefit of removing the need for global or class variables.

PASSED, 100% COVERAGE, RUBOCOP WARNS OF TRIVIAL attr_reader USAGE


Now that the files are integrated, it remains to build a functioning game.
