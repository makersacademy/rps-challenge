class Computer
  attr_reader :name
  def initialize
    @name = "Computer"
  end

  def move(version = nil, _move_name = nil)
    @move || @move = version.moves.sample
  end
end
