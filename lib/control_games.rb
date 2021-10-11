class ControlGames
  attr_reader :all_games

  def initialize
    @all_games = []
  end
  
  def add(game)
    @all_games << game
  end 
  
  def self.create
    @control = ControlGames.new
  end
  
  def self.instance
    @control
  end
  
end
