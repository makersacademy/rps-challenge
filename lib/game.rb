require_relative 'player'

class Game
  attr_reader :player1, :player2, :player1_choice, :player2_choice

  def initialize(player, player2)
    @player1 = player
    @player2 = player2
  end

  def play(player1_choice, player2_choice = nil)
    @player1_choice = player1_choice.to_sym
    @player2_choice = player2_choice.to_sym unless player2_choice.nil?
    rps
  end

  private
  attr_writer :computer_choice

  def computer_picks
    @player2_choice = [:rock, :paper, :scissors].sample
  end

  def setup
    player1.reset
    computer_picks if player2_choice.nil?
  end

  def rps
    setup
    if player1_choice == :rock && player2_choice == :scissors
      player1.status_change(:win)
    elsif player1_choice == :paper && player2_choice == :rock
      player1.status_change(:win)
    elsif player1_choice == :scissors && player2_choice == :paper
      player1.status_change(:win)
    elsif player1_choice == player2_choice
      player1.status_change(:draw)
    else
      player1.status_change(:lose)
    end
  end

end
