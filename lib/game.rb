class Game
  attr_reader :player_1, :player_2

  @current_game = nil

  def initialize(player_1, player_2, calculator_class = ResultsCalculator)
    @player_1 = player_1
    @player_2 = player_2
    @calculator_class = calculator_class
    @calculator = nil
  end

  def self.store_game(game)
    @current_game = game
  end

  def self.current_game
    @current_game
  end

  def winner
    calculator.winner
  end

  private

  def calculator
    @calculator ||= @calculator_class.new(@player_1, @player_2)
  end
end
