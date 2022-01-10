class Game
  attr_reader :winner
  def initialize(player1, player2)
    @players = [player1, player2]
    @winner = nil
    @player_one_wins = [
      "rock-scissors",
      "paper-rock",
      "scissors-paper"
    ]
  end

  def change_computer_choice
    players[1].shuffle_turn
  end

  def set_choice(player_index, choice)
    players[player_index].set_choice(choice)
  end

  def retrieve_playername(index)
    players[index].name
  end

  def retrieve_playerchoice(index)
    players[index].choice
  end

  def find_winner
    return @winner = "Draw" if players[0].choice == players[1].choice
    if @player_one_wins.include?("#{players[0].choice}-#{players[1].choice}")
      @winner = players[0].name
    else
      @winner = players[1].name
    end
  end

  private
   attr_reader :players
end
