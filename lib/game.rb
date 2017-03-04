class Game

  attr_reader :options, :player

  def initialize(player)
    @options = ["Rock", "Paper", "Scissors"]
    @player = player
  end

  def play
    @options.sample
  end

  def declare_winner(player_choice)

  end

end
