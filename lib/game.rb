require_relative 'player'

class Game
  attr_reader :name, :user_move, :computer_move, :player_1, :player_2
  

  def initialize(player_1 = Player.new, player_2 = Player.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def round
    combinations = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }
    if player_1.move == player_2.move
      "It's a draw!"
    elsif combinations[player_1.move] == player_2.move
      return "#{player_1.name} won!"
    else
      return "#{player_2.name} won!"
    end
  end

end
