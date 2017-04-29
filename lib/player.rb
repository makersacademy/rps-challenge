require_relative 'computer'
class Player
  attr_reader :name, :score

  def initialize(name, score = 0)
    @name = name
    @score = score
  end

  def attack_with_rock(computer)
    @score += 1
  end
end
