#understands what weapon it uses

class HumanPlayer
  
  attr_reader :weapon, :name

  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end
end
