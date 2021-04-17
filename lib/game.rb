class Game
  attr_reader :player
  @game = nil

  def initialize(player = Player.new)
    @player = player   
    @game = nil
  end

  def self.save_game(new_game)
    @game = new_game
  end

  def self.load_game
    @game
  end
end
