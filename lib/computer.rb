require_relative 'player'
class Computer
  attr_reader :name, :score

  def initialize(name = "Ogruk", score = 0)
    @name = name
    @score = score
  end

  def attack
  end
end
