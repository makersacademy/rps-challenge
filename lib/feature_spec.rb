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

10.times do
unless game.game_over?
game.new_round
game.player1_play(["Rock","Paper","Scissors"][rand(0..2)])
game.player2_play
game.update_score
end
end

game.score
 game.game_over?
 game.match_winner
 Game.start("Simon".to_s)
 Game.current_game.score
 p Game.current_game.new_round
Game.current_game.player1_play("Rock")
p Game.current_game.rounds[-1].choices[0].to_s

10.times do
unless Game.current_game.game_over?
Game.current_game.new_round
Game.current_game.player1_play(["Rock","Paper","Scissors"][rand(0..2)])
Game.current_game.player2_play
Game.current_game.update_score
end
end
 Game.current_game.score
 Game.current_game.match_winner

 Game.current_game.player2.name
 Game.current_game.rounds[-1].choices[0].to_s
