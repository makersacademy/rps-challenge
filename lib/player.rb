require_relative 'game'

class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def player_choice(choice)
    @choice = choice
  end

end
