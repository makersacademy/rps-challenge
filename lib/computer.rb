require_relative 'game'
require_relative 'player'


class Computer
  attr_reader :computer_option

  def option
    @computer_option = Game::OPTIONS.sample
  end

end