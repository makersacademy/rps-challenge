# Takes players choice and determines result
class Results

  attr_reader :results_store, :winner

  def initialize
    @game = Game.load
    @results_store = []
  end

  def generate(turn)
    if turn[:player] == turn[:computer]
      @results_store << { winner: 'Draw', turn: turn }
    elsif turn[:player] == 'ROCK' && turn[:computer] == 'SCISSORS' ||
          turn[:player] == 'PAPER' && turn[:computer] == 'ROCK' ||
          turn[:player] == 'SCISSORS' && turn[:computer] == 'PAPER'
      @results_store << { winner: @game.player.name, turn: turn }
    else @results_store << { winner: 'Computer', turn: turn }
    end
  end

  def confirm_winner
    if @results_store.count { |result| result[:winner] == 'Computer' } == 2
      @winner = 'Computer'
    else @winner = @game.player.name
    end
  end

end
