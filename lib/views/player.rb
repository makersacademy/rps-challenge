class Player

  attr_reader :name, :selection
  attr_accessor :tally

  def initialize(name)
    @name = name
    @selection = nil
  end

  def select_weapon(choice)
    @selection = choice
  end

  def computer_select_weapon
    @selection = [rock, paper, scissors].sample
  end
end
