class Game
  RESULT = {
    rock:     { scissors: :win, paper:    :lose },
    paper:    { rock:     :win, scissors: :lose },
    scissors: { paper:    :win, rock:     :lose }
  }

  attr_reader :player1, :player2

  class << self
    attr_reader :instance

    def create(player_name)
      @instance = new(player_name)
    end
  end

  def initialize(player_name, player_class = Player, computer_class = Computer)
    @computer_class = computer_class
    @player_class   = player_class
    @player1        = player_class.new(player_name)
    @player2        = computer_class.new
  end

  def result
    return "It's a draw!" if draw?

    "#{winner.name} wins!"
  end

  private

  attr_reader :player_class, :computer_class

  def winner
    RESULT[player1.move][player2.move] == :win ? player1 : player2
  end

  def draw?
    player1.move == player2.move
  end
end
