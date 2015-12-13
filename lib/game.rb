require 'forwardable'

class Game
  extend Forwardable

  def_delegator :player_1, :name, :player_1_name
  def_delegator :player_2, :name, :player_2_name

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def rock

  end
end
