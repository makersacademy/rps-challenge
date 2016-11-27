class Game
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def player_choice
    @player.choice
  end

  def computer_choice
    @computer.choice
  end


  def winner
    @player
  end




end
