class Game

  def initialize(player1, player2 = Player.new("Computer"))
    @players = [player1, player2]

  end

  def return_player(player)
    @players[player-1]
  end

  def search(player_choice, computer_choice)

  end

  # def choice(player_choice = nil, computer_choice = nil)
  #
  # end
end
