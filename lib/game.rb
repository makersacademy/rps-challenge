class Game

attr_reader :player

  def initialize(player)
    @player = player
  end

  def random_counter_move
    ["rock", "paper", "scissors"].sample
  end

end
