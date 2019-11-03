class Move
  attr_reader :name, :choice, :computer_choice

  def initialize(choices)
    @name = choices["name"]
    @choice = choices["choice"]
    @computer_choice = choices["computer_choice"]
  end
end
