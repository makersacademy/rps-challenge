class Game
  attr_reader :player, :choice

  def initialize(player, choice = nil)
    @player = player
  end

  def self.new_game(player, choice = nil)
    @game = Game.new(player, choice = nil)
    @choice = nil
  end

  def self.current_game
    @game
  end

  def set_choice(choice)
    @choice = choice
  end

  def choice
    @choice
  end
end
