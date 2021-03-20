class Game
  RPS_MOVES = ['rock', 'paper', 'scissors']
  WIN_MATRIX = { 'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper' }

  attr_reader :counter, :player_1_name, :player_2_name, :round_result
  attr_accessor :player_1_move, :player_2_move

  def initialize
    @moves = RPS_MOVES
    @counter = 0
  end

  def setup(player_1_name, player_2_name = 'K-2SO')
    @player_1_name = player_1_name
    @player_2_name = player_2_name
  end

  def play_round
    @player_2_move = computer_move
    @round_result = win_lose(@player_1_move, @player_2_move)
  end

  def counter_up
    @counter += 1
  end

  private

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
