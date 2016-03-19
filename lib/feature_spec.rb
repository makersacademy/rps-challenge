require_relative 'player'
require_relative 'computer'
require_relative 'round'
require_relative 'game'

p computer = Computer.new
p player1 = Player.new("Simon")

p round1 = Round.new(player1,computer)

round1.player1_turn("Rock")
round1.player2_turn

p round1.choices
p round1.outcome
p round1.draw?
p round1.winner
p round1

p game = Game.new(player1,computer)

game.new_round

p game.rounds
game.player1_play("Rock")
game.player2_play
p game.rounds

p game.rounds[-1].winner
p game.rounds[-1].choices
p game.rounds[-1].draw?
p game.update_score
p game.score
