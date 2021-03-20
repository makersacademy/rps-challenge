class Game
  RPS_MOVES = ['rock', 'paper', 'scissors']
  WIN_MATRIX = { 'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper' }

  attr_reader :round_number, :player_1_name, :player_2_name, :round_result, :two_players
  attr_accessor :player_1_move, :player_2_move

  def initialize
    @moves = RPS_MOVES
    @round_number = 1
  end

  def number_players(number)
    return @two_players = true if number == "Two Players"
    @two_players = false
  end

  def setup(player_1_name, player_2_name)
    @player_1_name = player_1_name
    @player_2_name = player_2_name
  end

  def play_round
    @player_2_move = computer_move if !two_players
    @round_result = win_lose(@player_1_move, @player_2_move)
  end

  def reset_round
    @player_1_move = nil
    @player_2_move = nil
    @round_number += 1
  end

  private

  def computer_move
    @moves.sample
  end

  def win_lose(player_1_move, player_2_move)
    if player_1_move == player_2_move
      'Its a DRAW...fight again!'
    elsif WIN_MATRIX[player_1_move] == player_2_move
      return "You WIN!!" if !@two_players
      "#{player_1_name} is the WINNER!"
    else
      return "You LOSE...:(" if !@two_players
      "#{player_2_name} is the WINNER!"
    end
  end
end

test = Game.new
puts test.reset_round
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
