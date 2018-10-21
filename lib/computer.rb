
class Computer

  attr_reader :name

  def initialize
    @name = name_choice
  end

  def name_choice
    ['Edward', 'Balboa', 'Cutter'].sample
  end

  attr_reader :choice

  def pick
    @choice = Game::MOVES.sample
  end

end
