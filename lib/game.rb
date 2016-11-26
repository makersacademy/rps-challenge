class Game

  attr_reader :player

  @game

  def self.init( player )
    @game = Game.new( player )
  end

  def self.now
    @game
  end

  def initialize( player )
    @player = player
    @player_choice
  end

  def show( choice )
    choice
  end

end
