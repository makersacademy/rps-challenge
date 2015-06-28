class Game

  attr_reader :player_1

  def initialize(player,ai)
    @power_hash = {Rock: :Paper,
                  Paper: :Scissors,
                  Scissors: :Rock}
    @won = false

    @player_1 = player.new
    @ai = ai.new
  end

  def has_winner?
    @won
  end

  def play(selection_1)
    selection_2 = @ai.choose
    if @power_hash[selection_1] == selection_2
      @player_1.wins
      @won = true
    elsif @power_hash[selection_2] == selection_1
      @ai.wins
      @won = true
    else
      @won = 'Tie'
    end
  end

end
