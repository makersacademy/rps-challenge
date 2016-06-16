class Player

  attr_reader :name, :choice

  def initialize(name, choice)
    @name = name
    @choice = choice
  end

  def display_choice
    choice.to_s.capitalize
  end
end
