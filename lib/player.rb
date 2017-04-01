class Player

  attr_reader :name, :random_attack, :roll

  def initialize(name)
    @name = name
  end

  def paper?
    true
  end

  def roll
    rand(1..9)
  end

  def random_attack
    if roll >= 7
      "Scissors"
    elsif roll >= 4
      "Paper"
    elsif roll >= 1
      "Rock"
    end
  end

  # require 'pry'; binding.pry
end