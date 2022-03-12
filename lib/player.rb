class Player
  attr_reader :name

  def initialize(name, npc = false)
    @name = name
    @computer_controlled = npc 
    @choice = nil
  end

  def computer?
    @computer_controlled
  end
end
