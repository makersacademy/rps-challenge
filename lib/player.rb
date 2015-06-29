class Player

attr_accessor :choice, :won, :tie

  def initalize
    @choice
    @won = true
    @tie
  end

  def choose rockpaperscissors
    @choice = rockpaperscissors
  end

  def win
    self.won = true
    "Congratulations You have Won!"
  end

  def lost
    self.won = false
    "I am sorry You have Lost!"
  end

  def win?
     won
  end

  def lost?
    not win
  end

  def tie
    self.tie = true
    "It is a Tie!"
  end

  def tie?
    @tie == true
  end

end
