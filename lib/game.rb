class Game
  attr_reader :player
  def initialize(player)
    @player = player
  end

  def com_move
    [:rock, :paper, :scissors].sample
  end

  # def rock
  #   "rock"
  # end

  # def paper
  #   "paper"
  # end

  # def scissors
  #   "scissors"
  # end
end

