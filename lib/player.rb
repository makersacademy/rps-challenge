class Player
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def chosen_hand(choice)
    @choice = choice
  end

  def choice
    @choice
  end
end
