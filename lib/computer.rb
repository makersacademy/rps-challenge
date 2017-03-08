class Computer

  attr_reader :name, :score, :weapons

  def initialize(name = 'Computer', score = 0)
    @name = name
    @score = 0
    @weapons = ['Rock', 'Paper', 'Scissors']
  end

  def select_random_weapon
    @weapons.sample
  end

  def adjust_score(points)
    @score += points
  end

end
