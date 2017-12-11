# RPS Challenge
With only two user stories it was important for me to break each one down so I
could easily see what needed to be done next. I set up everything for capybara
and Sinatra to ensure that I would be able to test my app thoroughly.

At first I used global variables to store the player and the computer player
instances. Once I had tested them and knew they were finished I made a game
class which would store both the new player and computer player. While storing
the game instance I used a class variable instead which allowed me to rid the
global variables in my code.

Before I added a new method I made sure to  write a test for it that would test
the method as effectively as possible. I added a score instance for both players
which is displayed on both the roundover page and the battle page.

Enjoy playing.
