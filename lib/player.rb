require './lib/game'

class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

  def player_choice(choice)
    capitalized_choice = choice.downcase.capitalize
    @choice = capitalized_choice if Game::CHOICES.include?(capitalized_choice)
  end
end
