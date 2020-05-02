<div style="text-align: justify"> your-text-here 

# RPS Challenge

For this challenge, I had 2 classes - Game and Person.

## class Game

	This had 2 private methods

		- .compare
			
			This was a method to compare the two inputs (either rock, paper or scissors), and return either "Draw" in case of a draw, true if input1 was the winner or false if input 2 was.
		- .random

			This was a method simply to return either rock, paper or scissors if the computer was acting as a player.

	There was also another method

		- .play

			This would send the either one player's or both players' choice to the compare private method - it would use .random to choose if the computer was playing. It would then return the winner.

## class Person

	This just stored the name and move of each player.

--------------------------------

I had three pages (erb files) - index, play and results. index and play had forms, and the data was saved as session variables, as were the Game and Person objects.

------------------------

My tests covered as many situations as I could think. One player, two player, win, draw etc. I tested both the classes using rspec, and using mocks where applicable. I also feature tested using capybara.

As the website used a .sample method to randomly choose a weapon, a couple of the feature tests run 100 times to make sure all tests pass. This is not ideal, but it seemed not to take any time when running the tests and it is enough to cover all possible outcomes almost all the time. However, I am sure there is a better way.

---------------------

Overall I was pretty happy, although not completely. I could have done it tidier if it weren't for 2 things. Firstly I added multiplayer quite far into building the site, and I also forgot about the possiblity of a draw so had to force it a little. That being said it wouldn't have been much different I dont' think.

I added a small amount of CSS. Given more time I would have done more, but this wasn't really the point of the exercise so I kept it simple.

--------------------

</div>