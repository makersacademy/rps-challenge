class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def assign_move(move)
    @move = move
  end
end

class Computer
  attr_reader :move, :name

  def initialize(name = 'Computer')
    @name = name
  end

  def assign_move(move)
    @move = ['Rock', 'Paper', 'Scissors', 'Spock', 'Lizard'].sample
  end
end
