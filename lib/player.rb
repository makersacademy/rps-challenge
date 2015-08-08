class Player

  attr_reader :name

  def initialize name
    @name = name
  end

  def is_a_computer?
    name == 'computer'
  end


end