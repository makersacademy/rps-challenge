class Game
  attr_reader :player, :comp_choice, :outcome, :player2

  def initialize(player)
    @player = player
  end

  def add_player(player)
    @player2 = player
  end

  def friend_determine_outcome
    if @player.choice == @player2.choice
      @outcome = "It's a draw!"
    elsif (@player.choice == "Rock" && @player2.choice == "Scissors") || (@player.choice == "Paper" && @player2.choice == "Rock") || (@player.choice == "Scissors" && @player2.choice == "Paper")
      @outcome = "#{@player.name} wins!"
    else
      @outcome = "#{@player2.name} wins!"
    end
  end

end
