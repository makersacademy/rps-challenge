# Takes players choice and determines result
class Results

  attr_reader :results

  def initialize
    @game = Game.load
    @results = []
  end

  def generate(turn)
    if turn[:player] == turn[:computer]
      {winner: 'Draw', turn: turn}
    elsif ( turn[:player] == 'ROCK' && turn[:computer] == 'SCISSORS' ) ||
          ( turn[:player] == 'PAPER' && turn[:computer] == 'ROCK' ) ||
          ( turn[:player] == 'SCISSORS' && turn[:computer] == 'PAPER' )
      {winner: @game.player.name, turn: turn}
    else {winner: 'Computer', turn: turn}
    end
  end

  def store(result)
    @results << result
  end

  def display
    results.each_with_index do |result, index|

    end
  end
end
