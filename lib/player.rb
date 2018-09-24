
class Player
  attr_reader :name
  attr_accessor :choice, :weapons
  def initialize(name = "Skynet")
    @name = name
    @weapons = ["rock", "paper", "scissors"]
    @choice = nil
  end

  def random_move
    @choice = @weapons.sample
  end

  def add_special_weapons
    @weapons << "lizard"
    @weapons << "spock"
  end

end