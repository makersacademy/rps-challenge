# Rules of the game - Best 2 out of 3: meaning the first to have 2 wins win the game

class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def each_round_outcome
    return :draw if both_players_chooses_same_move
    case player_1.final_move
    when :rock
      player_2.final_move == :scissors ? player_1_wins : player_2_wins
    when :scissors
      player_2.final_move == :paper ? player_1_wins : player_2_wins
    when :paper
      player_2.final_move == :rock ? player_1_wins : player_2_wins
    end
  end

  def player_1_wins
    player_1.wins
    'Player 1 Wins This Round!'
  end

  def player_2_wins
    player_2.wins
    'Player 2 Wins This Round!'
  end


  def has_winner?
    any_player_wins_at_least_twice
  end


  private

  def both_players_chooses_same_move
    player_1.final_move == player_2.final_move
  end

  def any_player_wins_at_least_twice
    player_1.win_counter >= 2 || player_2.win_counter >= 2
  end

end