class Game

  GAME_RULES = { :Rock => "Scissors", :Paper => "Rock", :Scissors => "Paper" }

  attr_reader :player

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end


end
