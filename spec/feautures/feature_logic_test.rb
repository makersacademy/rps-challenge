require_relative "../../lib/player"
require_relative "../../lib/artificial_player"
require_relative "../../lib/rps_game"

player1 = Player.new("George")
player2 = Player.new("Emily")
RpsGame.create_game(player1, player2)
game = RpsGame.current_game

player1.chooses("rock")
player2.chooses("paper")


puts game.decide_winner

puts

player1.chooses("rock")
player2.chooses("rock")


puts game.decide_winner

puts

player1.chooses("scissors")
player2.chooses("paper")


puts game.decide_winner
puts "###"
puts player1.win_counts
puts player2.win_counts

puts

player1.chooses("paper")
player2.chooses("scissors")


puts game.decide_winner

puts "testing bot"
george = Player.new("George")
bot = ArtificialPlayer.new
game2 = RpsGame.create_game(george, bot)

options = ["paper","scissors","rock"]
10.times do
george.chooses(options.sample)
bot.chooses
puts game2.decide_winner
puts
end
puts "#{george.name}: #{george.win_counts}  | #{bot.name}: #{bot.win_counts}"

