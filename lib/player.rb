# Responsible for player information
class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def choose_hand(choice)
    @choice = choice.to_sym
  end

end
