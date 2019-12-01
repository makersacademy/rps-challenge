require_relative 'player'
require_relative 'result'

class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2, result_class = Result)
    @player_1 = player_1
    @player_2 = player_2
    @result_class = result_class
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def outcome
    result = @result_class.new(player_1, player_2)
    result.message
  end

end
