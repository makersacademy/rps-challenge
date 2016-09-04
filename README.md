# RPS Challenge

Basic rules of the game
-------

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

Instructions on how to use the web page
-------

* Navigate to ....
* You should enter your name(s) before the game
* You will be presented with the choices (rock, paper and scissors)
* Choose one option
* Single-player: the computer game will play against you with a random choice
* Multi-player: second player chooses one option
* A winner will be declared

Approach to problem
----

Diagrammed out...
- Classes
- Flow chart" of user web experience
- Controller paths

##Classes/Objects

| Classes  | Contents  |
| ---------|---------- |
| Game     | player_name |
|          | result    |
|          | Class Methods |
| Player   | weapon    |
| Computer | weapon    |
| Weapon   | WEAPONS   |
|          | beats?    |

##Challenges/Struggles

Credit to Laura for this test syntax:
"expect(Computer::WEAPONS).to include(computer.weapon)"
