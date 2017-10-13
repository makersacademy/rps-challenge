require_relative 'player'
require_relative 'computer'

class Game

attr_reader :player_move, :computer_move, :player, :computer_player

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer_player = computer
    @player_move = nil
    @computer_move = nil
  end

  def player_won
    @player.increase_points
  end

  def comp_won
    @computer_player.increase_points
  end

  def set_computer_move
    @computer_move = @computer_player.select_random_move
  end
end
