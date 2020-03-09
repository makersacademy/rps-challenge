# RPS Challenge

Task
-------

* Create a rock paper scissors game to play on the web
* Users should be able to register their names, pick an option of rock paper or scissors and then swap turns
* Players should be able to take turns at picking rock paper or scissors
* Game should address the following user stories:

### User Stories

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
## To play the game

Clone the files and in the parent directory run

```
bundle
rackup config.ru
```
Visit the localhost with the given port number in your terminal to see the game online

### To run the tests

In the parent directory run

```
rspec
```

## Functionality

### Domain model

| Possible Objects            | Methods       |
| ----------------------------|:-------------:|
| Player 1                    | register_name |
| Player 2                    | pick_option   |
| Game                        | swap_turns    |
| Results                     | score         |

## Controller

We want to keep this as skinny as possible. Possible pages to include are:
```
# home page where the user enters their name

get ('/')
lets names get entered

  before do
    @game = Game.instance
  end

# method that posts names and creates the game instance
  post ('/play')
  @player_1 = Player.new(params[:name])
  @player_2 = Player.new(params[:name])
  @game = Game.create(player_1, player_2

# page with options for the current player to choose from
get('/play')
@current_player_name = @game.current_player.name

# method that works out the winner and redirects to other pages depending on the result. Use a module to keep it skinny
post('/result')
turn_redirect(game)

# page with the winner revealed
get('/result')
@winner = game.winner

```

## Model

We want our model to do most of the heavy lifting behind the scenes while staying true to the DRY and SRP principles. The singleton principle would also help to ensure that we avoid pesky global variables.

```
class Game(player_1, player_2)

  def initialize
    @turn = true
    @results = Results.new
    player_1 = player_1
    player_2 = player_2
    @current_player =
    @winner = Results.winner
    end

# class methods for singleton principle

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def play(choice)
    @current_player.store_choice(choice)
    results.calculate_results
    game.over?
    switch_players
  end

  def turn?
    @true = !@true
  end

  def switch_players
    @true ? @current_player = player_1 : @current_player = player_2
    turn?
  end

  def game_over?
    if end_game == true

  end

  def end_game
    if results.winner = something
      return true
    else
    return false
    end
  end

end

# calculates who is the winner based on the options they chose

class Result < Game

attr_reader : winner

 def initialize(game.player_1, game.player_2)
 @player_1 = player_1
 @player_2 = player_2
 @winner
 end

 def calculate_result

 case choice

 when player_1.choice == player_2.choice
    winner = "It's a draw"
 when player_1.choice == "Rock" && player_2.choice == "Paper"
    winner = player_2
 when player_1.choice == "Scissors" && player_2.choice == "Rock"
    winner = player_2
 when player_1.choice == "Paper" && player_2.choice == "Scissors"
    winner = player_2
 else
  @winner = player_1
 end
end

# stores and fetches the players name and their selection

class Player(name)
  def initialize
    @name = name
    @choice = choice
  end
end
```

## Views

There will be 3 views in total. The controller will handle the exchange of data between each view and the model will facilitate how and when that data will be stored and evaluated in order to play the game.

View 1 -
erb :index
containing a form to input names

View 2 -
erb :play
name of the current player
containing a form for rock, paper scissors

View 3 -
erb :results
the name of the winner
the name of both players and their choices
button to play again

## Decisions

On Patrick's advice, I added a different input for my player's options, using the following form input:
```
<form action='/play' method='post'>
  <input class="button" name="choice" type= "submit" value="Rock">
  <input class="button" name="choice" type= "submit" value="Paper">
  <input class="button" name="choice" type= "submit" value="Scissors">
```
This way the input can be stored and saved via the params.

I also added a static css file to style my game and a helper module to help keep the controller skinny.

## Future additions

I'd like to add in the option for the same players to be able to play another game, without having to re-enter their names.

Currently the 'Play Again' button does not let the users play another full game. But finishes early.

I'd also like to add in functionality so the users can play Rock, Paper, Scissors, Spock, Lizard.

The logic for calculating the results could be improved, and would need to be updated especially if I started to develop the logic for Lizard, Spock. Folder organisation could also be improved along with some naming conventions. More unit tests for each possible outcome of the game would be a good idea.  
