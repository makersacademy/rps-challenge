class Game

  def self.create(player)
    @current_game ||= Game.new(player)
  end

  def self.current_game
    raise "No current game" if !@current_game
    @current_game
  end

  attr_reader :player

  def initialize(player)
    @player = player
  end

end
