
class Game
  DEFAULT_SCORE = 0
  DEFAULT_NAME = 'Bot'
  
  attr_accessor :score
  attr_reader :player, :name

  def initialize(player)
    @score = DEFAULT_SCORE
    @player = player
    @name = DEFAULT_NAME
  end

  def random_choice
    ['Rock', 'Paper', 'Scissors'].sample
  end
end
