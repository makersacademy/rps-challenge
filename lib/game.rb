require_relative './player'
require_relative './bot'

class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  # def rps(player_1, player_2)
  #   victory = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

  #   if player_1 == player_2
  #     "Draw!"
  #   elsif victory[player_1] == player_2
  #     "Player 1 won!"
  #   else
  #     "Player 2 won!"
  #   end
  # end

end
