class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def add_move move
    self.move = move
  end

  private
  attr_writer :move
end
