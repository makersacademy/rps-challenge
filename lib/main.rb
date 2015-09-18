require_relative 'rps_game'

game = Game.new
bot = BasicBot.new
view = View.new

view.welcome_player

loop do 
	result = game.play(view.players_next_move, bot.next_move)
	view.display_result(result)
end