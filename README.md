# RPS Challenge

Status
---

My program doesn't work.

I've implemented these functionalities:
* the marketeer should be able to enter their name before the game
* the marketeer will be presented the choices (rock, paper and scissors)
* the marketeer can choose one option
* the game will choose a random option

But I couldn't wrap things up in the logic and return the winner.

Process
-------

* I've set up the Sinatra project as per Week 3's learnings.
* I started by developing the interactive side: entering player's name and move, and storing the data in the same session and in instance variables.
* I then extracted some logic and created a `Player` class which accepts two arguments (`name` and `move`).
* I created a separate `Game` class to run the logic of the game, and that's when things started to get a bit confusing.
* The `if` statement that runs the logic of the game always returns `nil`, so the unit test fails.
* Had I got this to work, I wouldn't know how to render this logic on the `.erb` files.
* With hindsight I might have been better off with just one class and simpler logic.
* Because of time constraint, I polished a little the front-end, and submitted unfinished.

Update 18 Feb 2022
---

### Game Spec
- Kept the marketeer double
- Created a new instance of Game in a Before block.
- Changed all instances of Game from `subject` to the instance variable.
- In the computer move test, mocked the `computer_move` method to always return a certain string.
- Test passes.

### Game logic
- I don't think I still need the `marketeer_move` method.
- Using the `$marketeer.move` instance instead.
- Using the `computer_move` method.
- I think I need to call `computer_move` at the beginning of `run`
