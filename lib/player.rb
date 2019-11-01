class Player
  attr_reader :name, :wins, :losses

  def initialize(name, wins = 0, losses = 0)
    @name = name
    @wins = wins
    @losses = losses
  end

  def won
    @wins += 1
  end

  def loss
    @losses += 1
  end

  def games_played
    @wins + @losses
  end

  def make_random_choice
    case Kernel.rand(3)
    when 0
      :paper
    when 1
      :scissors
    else
      :rock
    end
  end
end