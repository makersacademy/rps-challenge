require_relative 'game'
require_relative 'player'

class Opponent

  attr_reader :opponent_option

  def option
    OPTIONS.sample
    @opponent_option = Game:: OPTION.sample
  end
end
