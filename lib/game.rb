class Game

  attr_reader :player_1, :player_2, :player_mode, :game_mode

  def initialize(player_1, player_2, player_mode, game_mode)
    @player_1 = player_1
    @player_2 = player_2
    @player_mode = player_mode
    @game_mode = game_mode
  end

  def self.create(player1, player2, player_mode, game_mode)
    @game = Game.new(player1, player2, player_mode, game_mode)
  end

  def self.instance
    @game
  end

  def computer?
    player_mode == "one"
  end

  def winner
    size = calculate_size
    score = calculate_score(size)
    determine_winner(score)
  end

  def loser
    return :draw if winner == :draw
    determine_loser
  end

  def draw?
    winner == :draw
  end

  private

    def calculate_size
      game_mode == "classic" ? size = Choices::CLASSIC : size = Choices::SPOCK
    end

    def calculate_score(size)
      score = (Choices.to_i(player_1.choice) - Choices.to_i(player_2.choice))% size
    end

    def determine_winner(result)
      return :draw if result == 0
      return player_1 if result.even?
      player_2
    end

    def determine_loser
      [player_1, player_2].reject{ |player| player == winner }.first
    end
end