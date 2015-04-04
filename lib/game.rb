class Game
  WINNER_LOOKUP = {
    rock: 'scissors',
    paper: 'rock',
    scissors: 'paper'
  }
  def initialize(first_player, second_player)
    @first_player = first_player
    @second_player = second_player
  end

  def winner
    return "It's a draw!" if draw
    winner = find_winner
    "The Winner Is #{winner.name}"
  end

  private

  attr_reader :first_player, :second_player

  def draw
    first_player.choice == second_player.choice
  end

  def find_winner
    if second_player.choice == WINNER_LOOKUP[first_player.choice.to_sym]
      first_player
    else
      second_player
    end
  end
end