require 'computer'

class Game

  attr_reader :player_one, :player_two

  def initialize(player_one, player_two = Computer.new)
    @player_one = player_one
    @player_two = player_two
  end

end
