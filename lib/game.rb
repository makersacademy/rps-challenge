require_relative 'scores'

class Game
  attr_reader :players, :scorer
  
  def initialize(player1, player2, scorer=Scores.new)
    @players = [player1, player2]
    @scorer = scorer
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end
end