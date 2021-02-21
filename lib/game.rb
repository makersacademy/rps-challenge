class Game
  RESULT = {
    rock:     { scissors: :win, paper: :lose },
    paper:    { rock: :win, scissors: :lose },
    scissors: { paper: :win, rock: :lose }
  }

  attr_reader :player, :computer

  class << self
    attr_reader :instance

    def create(player_name)
      @instance = new(player_name)
    end
  end

  def initialize(player_name, player_class = Player, computer_class = Computer)
    @player_class   = player_class
    @player         = player_class.new(player_name)
    @computer_class = computer_class
    @computer       = computer_class.new
  end

  def result
    return "It's a draw!" if draw?

    "#{winner.name} wins!"
  end

  private

  attr_reader :player_class, :computer_class

  def winner
    RESULT[player.move][computer.move] == :win ? player : computer
  end

  def draw?
    player.move == computer.move
  end
end
