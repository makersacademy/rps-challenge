require_relative 'computer'
class Player
  attr_reader :name, :score, :computer_score

  def initialize(name, score = 0, computer_score = 0)
    @name = name
    @score = score
    @computer_score = computer_score
  end

  def attack_with_rock(computer)
    if Computer::WEAPONS.sample == :scissors
      @score += 1
    elsif Computer::WEAPONS.sample == :paper
      @computer_score += 1
    end
  end

  def attack_with_paper(computer)
    if Computer::WEAPONS.sample == :rock
      @score += 1
    elsif Computer::WEAPONS.sample == :scissors
      @computer_score += 1
    end
  end

  def attack_with_scissors(computer)
    if Computer::WEAPONS.sample == :paper
      @score += 1
    elsif Computer::WEAPONS.sample == :scissors
      @computer_score += 1
    end
  end
end
