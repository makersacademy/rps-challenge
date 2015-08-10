class Player
  attr_accessor :move, :name

  def initialize name
    @name = name
  end

  def is_a_computer?
    name == 'computer'
  end


end