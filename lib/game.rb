require_relative 'winner_calculator'
class Game
  attr_reader :player_one, :player_two
  def initialize(player_one, player_two, winner_calculator = WinnerCalculator.new)
    @player_one = player_one
    @player_two = player_two
    @winner_calculator = winner_calculator
  end

  def self.create(player_one, player_two)
    @game_instance = Game.new(player_one, player_two)
  end

  def self.instance
    @game_instance
  end

  def play(p1_move)
    @player_one.move = p1_move.to_sym
    @winner = @winner_calculator.calculate(@player_one, @player_two)
  end

  def last_game_text
    if @winner == :draw
      return 'It was a draw!'
    else
      "#{@winner.name} won!"
    end
  end

end