class Player

  attr_reader :name, :random_attack, :roll

  def initialize(name)
    @name = name
  end

  def roll
    rand(0..2)
  end

  def random_attack
    if roll == 2
      "Rock"
    elsif roll == 1
      "Paper"
    else
      "Scissors"
    end
  end
end