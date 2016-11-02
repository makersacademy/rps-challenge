class Player
  attr_accessor :move
  attr_reader :name, :is_computer, :games_won, :games_drawn, :games_lost

  def initialize(name, is_computer = false)
    @name = name
    @is_computer = is_computer
    @games_won = 0
    @games_drawn = 0
    @games_lost = 0
  end

  def win
    @games_won += 1
  end

  def draw
    @games_drawn += 1
  end

  def lose
    @games_lost += 1
  end
  
  def games_played
    @games_won + @games_drawn + @games_lost
  end
end