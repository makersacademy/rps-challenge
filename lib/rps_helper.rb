require_relative 'rps_game/game'

$game = Game.new
$cpu = Cpu.new

# game.p1_move(:r)
# p cpu_move
# p game.play
#game.p2_move(cpu_move)

# loop do 
#   result = game.play(view.players_next_move, bot.next_move)
#   view.display_result(result)
# end