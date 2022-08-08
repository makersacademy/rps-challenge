class Game

  attr_reader :won, :drew, :lost

  def initialize
    @won = 0
    @drew = 0
    @lost = 0
  end

  def increment_won
    @won += 1
  end

  def increment_drew
    @drew += 1
  end

  def increment_lost
    @lost += 1
  end

end
