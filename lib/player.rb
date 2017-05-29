class Player
  attr_reader :name, :rock, :paper, :scissors

  def initialize(name)
    @name = name
  end

  def rock
    @rock = {:weapon_choice => "Rock"}.values.join("")
  end

  def paper
    @paper = {:weapon_choice => "Paper"}.values.join("")
  end

  def scissors
    @scissors = {:weapon_choice => "Scissors"}.values.join("")
  end
end
