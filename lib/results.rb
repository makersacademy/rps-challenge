# Takes players choice and determines result
class Results

  WIN_COMBOS = [
    { player: :ROCK, computer: :SCISSORS },
    { player: :SCISSORS, computer: :PAPER },
    { player: :PAPER, computer: :ROCK }
  ]

  attr_reader :results_store, :winner

  def initialize
    @game = Game.load
    @results_store = []
  end

  def generate(turn)
    if turn[:player] == turn[:computer] # Draw
      @results_store << { winner: 'Draw', turn: turn }
    elsif WIN_COMBOS.include?(turn) # Player win
      @results_store << { winner: @game.player.name, turn: turn }
    else # Computer win
      @results_store << { winner: 'Computer', turn: turn }
    end
  end

  def confirm_winner
    if @results_store.count { |result| result[:winner] == 'Computer' } >= 2
      @winner = 'Computer'
    else @winner = @game.player.name
    end
  end

end
