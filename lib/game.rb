class Game
  attr_reader :player, :computer, :player_choice

  def initialize(player, computer, player_choice)
    @player = player
    @player_choice = player_choice
    @computer = computer
  end

  def winner
    @player
  end




end
