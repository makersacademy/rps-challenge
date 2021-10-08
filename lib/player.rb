class Player
  attr_reader :name, :action
  def initialize(name)
    @name = name
  end

  def pick_action(action = select_random)
    @action = action
  end

  def select_random
    ["rock", "paper", "scissors"].sample
  end
end