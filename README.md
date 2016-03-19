Instructions
-------
- Enter your name
- Click the Button to access the game
- Choose a sign to play by clicking the right Button
- You will be taken to a view showing what the opponent played and who whon
- Click continue to play again
- The main page will keep a log of your win/losses

Description
-------
- So far the controller, app.rb, takes care of most of the logic
- The .erb views only display data, with no logic enbedded
- The site relies on two Classes (used as it, without instancing)
- ComputerPlayer has a method to choose, randomly, his sign
- GameController has a method that, supplied with the two signs, decide if the player has won or lost

Notes
-------
- I tried, for saturday, to implement everything without resorting to either global vars or class memorizing. This to try and push session vars as far as possible, as mentioned in ch23 this week
- The final version will be based around a more 'standard' controller/model model, since the experiment lead to a very fat controller.
