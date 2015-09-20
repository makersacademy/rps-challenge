require_relative 'player'

class Computer < Player

  def generate_turn
    @choice = options.sample
  end

end