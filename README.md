Instructions
-------
- Enter your name
- Click the Button to access the game
- Choose a sign to play by clicking the right Button
- You will be taken to a view showing what the opponent played and who won
- Click continue to play again
- The main page will keep a running log of your win/losses

Description
-------
- The controller app.rb, takes care of instantiating the variables for the .erb files to render, with minimal game logic behind it.
- The .erb views only display data, with no logic enbedded
- I have a Memory class to point at the module layer, to avoid having to interact with game both as a class and as instance
- A instance of game takes care of all the logic behind the game, while being reasonably skinny
- The player instances act a containers for names and score, with a extra method on the computer one to pick a sign


Notes
-------
- This challenge is the result of a embarassing amount of refactoring.
- A first version tried to do everything with session, because I though it was cool. I learned quite a bit on the limits, but I basically started from scratches on sunday.
- SRP...Game class could benefit from extracting the comparison logic between the various signs (and allowing thus to inject a different set of rules)
- Encapsulation: Players are leaking everywhere, somebody gets a mop. Necessary for now to display name and wins, not for logic, all the attr_readers in Game need to be nuked and replaced with delegation via Forwarding
- I skipped the extra step of implementing multiplayer because i wanted to challenge myself with a bigger ruleset and learn some CSS
- basic CSS teached me I'm very bad at design.
