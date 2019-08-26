require_relative './player'

class Computer < Player
  def initialize(name = 'Computer')
    @name = name
  end

  def move(version = nil, _move_name = nil)
    @move || @move = version.moves.sample
  end
end
