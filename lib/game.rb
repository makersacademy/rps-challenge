# Rules of the game - Best 2 out of 3: meaning the first to have 2 wins win the game

class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def each_round_outcome
    case
    when both_players_choose_rock
      :draw
    when both_players_choose_scissors
      :draw
    when both_players_choose_paper
      :draw
    when player_1_choose_rock_player_2_choose_scissors
      player_1.wins
      'Player 1 Wins This Round!'
    when player_1_choose_scissors_player_2_choose_rock
      player_2.wins
      'Player 2 Wins This Round!'
    when player_1_choose_scissors_player_2_choose_paper
      player_1.wins
      'Player 1 Wins This Round!'
    when player_1_choose_paper_player_2_choose_scissors
      player_2.wins
      'Player 2 Wins This Round!'
    when player_1_choose_paper_player_2_choose_rock
      player_1.wins
      'Player 1 Wins This Round!'
    when player_1_choose_rock_player_2_choose_paper
      player_2.wins
      'Player 2 Wins This Round!'
    end
  end

  def has_winner?
    any_player_wins_at_least_twice ? true : false
  end

  private

  def both_players_choose_rock
    player_1.final_move == :rock && player_2.final_move == :rock
  end

  def both_players_choose_scissors
    player_1.final_move == :scissors && player_2.final_move == :scissors
  end

  def both_players_choose_paper
    player_1.final_move == :paper && player_2.final_move == :paper
  end

  def player_1_choose_rock_player_2_choose_scissors
    player_1.final_move == :rock && player_2.final_move == :scissors
  end

  def player_1_choose_scissors_player_2_choose_rock
    player_1.final_move == :scissors && player_2.final_move == :rock
  end

  def player_1_choose_scissors_player_2_choose_paper
    player_1.final_move == :scissors && player_2.final_move == :paper
  end

  def player_1_choose_paper_player_2_choose_scissors
    player_1.final_move == :paper && player_2.final_move == :scissors
  end

  def player_1_choose_paper_player_2_choose_rock
    player_1.final_move == :paper && player_2.final_move == :rock
  end

  def player_1_choose_rock_player_2_choose_paper
    player_1.final_move == :rock && player_2.final_move == :paper
  end

  def any_player_wins_at_least_twice
    player_1.win_counter >= 2 || player_2.win_counter >= 2
  end
end