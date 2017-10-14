class Game

  attr_reader :choice

  def self.new_game(choice)
    @game = Game.new(choice)
  end

  def initialize(choice)
    @choice = choice
  end
end
