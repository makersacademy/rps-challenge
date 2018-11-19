class Game

  RESULTS_MATRIX = {
    paper: { scissors: :lose, paper: :draw, rock: :win },
    rock: { scissors: :win, paper: :lose, rock: :draw },
    scissors: { scissors: :draw, paper: :win, rock: :lose }
    }

  attr_reader :player, :computer, :result

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def play(player_choice, computer_choice)
    @result = RESULTS_MATRIX[player_choice][computer_choice]
  end

end
