class Player

  attr_reader :name, :hand

  def initialize(name)
    @name = name
    @hand = nil
  end

  def chooses(item)
    @hand = Game::OPTIONS.select { |x| x == item }.first
  end

  def random_choice
    @hand = Game::OPTIONS.sample
  end

end
