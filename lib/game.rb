require 'computer'

class Game
  attr_reader :current_player, :opponent

  def initialize(current_player, opponent)
    @current_player = current_player
    @opponent = opponent
  end
end
