class Player
  def self.set(name)
    @player = name
    @wins = 0
    @losses = 0
  end

  def self.name
    @player
  end

  def self.win
    @wins += 1
  end

  def self.lose
    @losses += 1
  end

  def self.win_total
    @wins
  end

  def self.loss_total
    @losses
  end
end
