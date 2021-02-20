class Game
  RESULT = {
    rock:     { scissors: :win, paper: :lose },
    paper:    { rock: :win, scissors: :lose },
    scissors: { paper: :win, rock: :lose }
  }

  attr_reader :player, :player_name, :ai

  class << self
    attr_reader :instance

    def create(player_name)
      @instance = new(player_name)
    end
  end

  def initialize(player_name, player_class = Player, ai_class = Ai)
    @player_class = player_class
    @player_name  = player_name
    @player       = player_factory
    @ai           = ai_class.new
  end

  def result
    return "It's a draw!" if draw?

    "#{winner.name} wins!"
  end

  private

  attr_reader :player_class, :ai_class

  def winner
    RESULT[player.move][ai.move] == :win ? player : ai
  end

  def player_factory
    player_class.new(player_name)
  end

  def draw?
    player.move == ai.move
  end
end
