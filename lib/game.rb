class Game
  RPS_MOVES = ['rock', 'paper', 'scissors']
  WIN_MATRIX = { 'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper' }

  attr_reader :counter

  def initialize
    @moves = RPS_MOVES
    @counter = 0
  end

  def computer_move
    @moves.sample
  end

  def win_lose(player_move, computer_move)
    if player_move == computer_move
      'You DRAW...fight again!'
    elsif WIN_MATRIX[player_move] == computer_move
      "You WIN!!"
    else
      "You LOSE...:("
    end
  end

  def counter_up
    @counter += 1
  end
end

# test = Game.new
# srand 3
#
# 10.times {
# puts test.computer_move
# }
# # puts
# # puts "break"
# # puts
# # srand 0
# # 10.times {
# # puts test.computer_move
# # }
