class Computer
  attr_reader :name, :weapon, :score
  attr_writer :weapon

  def initialize(name)
    @name = name
    @score = 0
    @weapon = random_weapon
  end

  def add_to_score
    @score += 1
  end

  def random_weapon
    ['Rock', 'Paper', 'Scissors'].sample.to_sym
  end

end
