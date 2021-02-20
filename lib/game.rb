class Game
  RESULT = {
    rock:     { scissors: :win, paper: :lose },
    paper:    { rock: :win, scissors: :lose },
    scissors: { paper: :win, rock: :lose }
  }

  attr_reader :player, :ai

  class << self
    attr_reader :instance

    def create(player_name)
      @instance = new(player_name)
    end
  end

  def initialize(player_name, player_class = Player, ai_class = Ai)
    @player_class = player_class
    @ai_class     = ai_class
    @player       = player_class.new(player_name)
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

  def draw?
    player.move == ai.move
  end
end
