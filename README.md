# RPS Challenge

This is my attempt at Makers' Week 3 Weekend Challenge: Rock, Paper, Scissors.
The challenge asked that we produce a web-based rock, paper scissors game utilizing the Sinatra Framework.
I used a TDD approach in order to create not only the elements on the page, but also the overall game logic. 

Improvements: 

* During the challenge I experimented with keeping score to allow for games longer that one round.
I would like to implement a scoreboard and scorekeeping functionality.

* I would also like to add a multi-player function to the game.

Running the app
---------------

In your terminal:

- Run 'bundle' (to ensure you install/update the gems from the gemfile)
- Run 'rackup'

In your browser of choice:

- Go to 'localhost:' followed by the port number
- Have fun!


Playing Rock, Paper, Scissors
-----------------------------

![Alt text](screenshots/index_screenshot.png?raw=true "index view")

* Enter your name

![Alt text](screenshots/play_screenshot.png?raw=true "index view")

* Pick Rock, Paper or Scissors 

![Alt text](screenshots/play_screenshot.png?raw=true "index view")

* Hopefully win!


Technologies
------------

* Ruby, Sinatra, Capybara, Rspec HTML, CSS