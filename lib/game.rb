class Game

  def initialize
    @power_hash = {Rock: :Paper,
                  Paper: :Scissors,
                  Scissors: :Rock}
    @won = false
  end

  def has_winner?
    @won
  end

  def play(selection_1,selection_2)
    if @power_hash[selection_1] == selection_2
      @won = true
    end
    if @power_hash[selection_2] == selection_1
      @won = true
    else
      @won = 'Tie'
    end
  end

end
