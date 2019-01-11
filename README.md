# RPS Challenge

Task
----

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Functionalities

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared


Test coverage
----------------------
COVERAGE: 100.00% -- 50/50 lines in 4 files

Run tests
----------------------
on terminal type `rspec`

Start local server and get the url
----------------------
on terminal type `ruby app.rb`
pay attention to this on terminal `* Listening on tcp://localhost:4567`
go to web browser and go to http://localhost:4567/ (this will be the url that the server provided)

Playing
----------------------
Write you name and choose your weapon from dropdown and hit PLAY. 
The result page will display your choice, the computer choice, who won the round and the score.
To be able to play again, `click the browser back button` and choose another weapon and hit PLAY.