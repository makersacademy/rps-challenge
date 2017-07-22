# RPS Challenge


![Rock, Paper, Scissors Challenge](https://www.dropbox.com/s/8vw5rk6uratgbsh/RPS_index.png "Rock, Paper, Scissors Challenge")

![](http://cricket.upcomingwiki.com/sites/default/files/styles/large/public/field/image/rising-pune-supergiants-team-players-list-2017-ipl-cricket-upcoming-wiki_0.jpg)

Task
----

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

My app has the following functionality to fulfil these user stories

- the marketeer can enter their name before the game
- the marketeer is presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared
- the game keeps track of the number of rounds played and win/lose/draw of both players

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## Instructions for playing the game

visit: [app-rock-paper-scissors.herokuapp.com](https://app-rock-paper-scissors.herokuapp.com) to play it online!

or to play locally on your computer...

Set up:

In the terminal type:
``` terminal
git clone git@github.com:ryandav/rps-challenge.git
bundle
cd rps-challenge
```

To run the game form the terminal:
``` terminal
ruby app.rb
```

In your browser address bar type in the following:

```browser
localhost:4567
```

To play:

- Enter your name and click on submit
- choose an option from 'rock', 'paper' or 'scissors'
- The computer will choose and option
- You will be sent to a page that tells you if you win, lose or draw
- You can then click on `Next Round` to keep playing
- You can reset the game by clicking `Reset game` on the `/play` page

*Program design*

- Test frameworks: Rspec, Capybara
- Web app framework: Sinatra
- Programming language: Ruby

*Controller*

- In app.rb the controllers are kept very thin, and it just has one or two lines per block. Game logic is executed in game and player lib files. This helps to ensure code is testable, maintainable and reusable.

```ruby
before do
  @game = Game.instance
end

get '/' do
  erb(:index)
end

post '/name' do
  @game = Game.create(params[:player_1_name], params[:player_2_name])
  redirect '/play'
end

get '/play' do
  erb(:play)
end

get '/result' do
  @game.choose(params[:choice])
  erb(:result)
end

get '/restart' do
  @game.set_up_game
  redirect '/'
end
```

*Views*
- index: show the name of the game, an image of how 'rock, paper, scissors' works, and entry form for the player name, and submit button
- play: gives the user the options of 'rock, paper and scissors' buttons to select the choice, also shows a running score of rounds, win/lose/draw counts for the players
- result: this shows the result of the game, where the player's choice is compared against the computer's choice, with the option to play next round

*Classes*

- Game: this contains the game logic through the choose(weapon) method, which sets the current player and opponent weapons, then increments the tally of rounds, win/lose/draws for each player. It also has a method to set the game to its initial state, for restarting the game. This class uses a variation of the singleton pattern so that it can store an instance of itself in the Game class, which means that it can store data without global variables beyond each Sinatra get / post block.
- Player: stores a name, current weapon (choice of 'rock', 'paper', or 'scissors'), as well as methods for incrementing and reading the win, lose and draw counts of the player. The choose_weapon method has an option to give a random weapon if none are given, which means there can be a computer controlled opponent.

*Module*

- RPSImages: This is a hash of the images used for the rock, paper and scissors in the win, lose, draw pages. I include it in the app.rb file and reference it in these three views.

Reviewers will potentially be using this [code review rubric](docs/review.md).
