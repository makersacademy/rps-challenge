class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def random
    ['Rock', 'Paper', 'Scissors'].sample
  end
end
