require './lib/game'
require './lib/player'
WINNERS = [['Scissors', 'Paper'], ['Paper', 'Rock'], ['Rock', 'Scissors']]
LOSERS = [['paper', 'scissors'], ['rock', 'paper'], ['scissors', 'rock']]

player1 = Player.new("Liz")

p game1 = Game.new(player1)

p game1.computer_choice

p game1.selection = "Rock"

p game1.player_selection

p game1.outcome

p game1.win?

# p WINNERS.include?(game1.outcome)
