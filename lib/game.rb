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

  def selections(selection_1,selection_2)
    if @power_hash[selection_1] == selection_2
      @won = true
    end
  end

end
