class Player

  attr_reader :name
  attr_accessor :move

  def initialize(name = 'CPU')
    @name = name
    @move = nil
    @move_options = ['Rock', 'Paper', 'Scissors']
  end

  def randomise_move
    @move = @move_options.sample
  end
end