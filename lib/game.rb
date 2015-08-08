# Rules of the game - Best 2 out of 3: meaning the first to have 2 wins win the game

class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def each_round_outcome
    case
    when player_1.final_move == :rock && player_2.final_move == :rock
      :draw
    when player_1.final_move == :scissors && player_2.final_move == :scissors
      :draw
    when player_1.final_move == :paper && player_2.final_move == :paper
      :draw
    when player_1.final_move == :rock && player_2.final_move == :scissors
      player_1.wins
      'Player 1 Wins This Round!'
    when player_1.final_move == :scissors && player_2.final_move == :rock
      player_2.wins
      'Player 2 Wins This Round!'
    when player_1.final_move == :scissors && player_2.final_move == :paper
      player_1.wins
      'Player 1 Wins This Round!'
    when player_1.final_move == :paper && player_2.final_move == :scissors
      player_2.wins
      'Player 2 Wins This Round!'
    when player_1.final_move == :paper && player_2.final_move == :rock
      player_1.wins
      'Player 1 Wins This Round!'
    when player_1.final_move == :rock && player_2.final_move == :paper
      player_2.wins
      'Player 2 Wins This Round!'
    end
  end
end