require_relative 'computer'
class Player
  attr_reader :score

  def initialize(score = 0)
    @score = score
  end

  def attack_with_rock(computer)
    @score += 1
  end
end
