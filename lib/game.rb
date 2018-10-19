class Game
  attr_reader :player_1

  @current_game = nil

  def initialize(player_1, calculator_class = ResultsCalculator)
    @player_1 = player_1
    @calculator_class = calculator_class
    @calculator = nil
  end

  def self.store_game(game)
    @current_game = game
  end

  def self.current_game
    @current_game
  end

  def choose_weapon(weapon)
    @player_1.choose_weapon(weapon)
  end

  def check_winner
    return @player_1.name if calculator.winner == @player_1.weapon
    return "DRAW" if calculator.winner == "DRAW"
    calculator.winner
  end

  private

  def calculator
    @calculator ||= @calculator_class.new(@player_1.weapon, random_weapon)
  end

  def random_weapon
    ["ROCK", "PAPER", "SCISSORS"].sample
  end
end
