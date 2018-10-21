
class Computer

  attr_reader :name

  def initialize
    @name = name_choice
  end

  def name_choice
    ['Edward', 'Balboa', 'Cutter'].sample
  end

  def choice
    @choice
  end

  def pick
    @choice = Game::MOVES.sample
  end

end
