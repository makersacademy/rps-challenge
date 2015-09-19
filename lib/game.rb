class Game

  attr_accessor :player, :defeat

  def initialize(name)
    @player = name
    @defeat = {rock: :scissors, paper: :rock, scissors: :paper}
  end

  def computer_move
    defeat.keys.sample
  end

  def start_game(player_choice)
    if computer_move == player_choice
      "It's a draw"
    elsif computer_move == defeat[player_choice]
      "Player wins"
    else
      "Computer wins"
    end
  end

end
