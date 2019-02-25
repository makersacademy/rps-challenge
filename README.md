# RPS Challenge

# The user stories
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

# The required functionality
the marketeer should be able to enter their name before the game
the marketeer will be presented the choices (rock, paper and scissors)
the marketeer can choose one option
the game will choose a random option
a winner will be declared

# The rules of the game
Rock beats Scissors
Scissors beats Paper
Paper beats Rock

# The plan
1. Write a test for a marketeer to enter their name
2. Write the code to enter and display that name
3. Write the test for 3 buttons
4. Write the code for 3 buttons
5. Write the test to confirm that the buttons return the correct values when pressed
6. Write the button code to return Rock, Paper or scissors
7. Write a test for the random generation... ?
8. Generate the random computer option
9. Write a test to determine a winner
10. Write the code to determine a winner


#########

I have decided to tackle this another way.
I seem to be unable to write the tests so I have decided to design
the system and then code it and then learn from that how to write the tests.

The systems design:
Views -
There are 3 Views, the initial screen where the name is entered,
the screen where you play the game and the final screen showing the winner.

The Classes - 
There is a Player class, and reading through the whole challenge I would say
that the computer is also a player.
There is a Game class which contains the methods(rules) and objects to play the game.
