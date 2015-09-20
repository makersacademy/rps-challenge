class Player

  attr_accessor :current_selection, :name
  attr_reader :weapons

  def initialize
    @weapons = [Rock, Paper, Scissors]
  end

  def random_selector
    @current_selection = weapons[rand(2)].new
  end

end