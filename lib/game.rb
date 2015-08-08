require_relative 'roshambo'

class Game
  include Roshambo

  attr_reader :player_1, :player_2, :current_move

  def initialize player_1, player_2
    @player_1 = player_1
    @player_2 = player_2
  end

  def player_move option
    send (option.to_sym) ? @current_move = option : false rescue 'scissors, paper or rock - Choose your move wisely!'
  end

  def player_1_winner?
    player_2.is_a_computer? ? computer_beats_player(current_move) : 'Player 2 not a computer'
  end



end