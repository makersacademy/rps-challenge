class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = nil
  end 

  def choose_move(selection)
    @move = selection
  end 

end 