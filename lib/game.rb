require_relative './result_determiner'
require_relative './player'

class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def who_won(player_1, player_2)
    ResultDeterminer.calculate(player_1, player_2)
  end

end
