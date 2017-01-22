require_relative 'player'

class Game
  attr_reader :player, :computer_choice, :player_choice

  def initialize(player)
    @player = player
  end

  def play(choice)
    @player_choice = choice.to_sym
    rps
  end

  private
  attr_writer :computer_choice

  def computer_picks
    @computer_choice = [:rock, :paper, :scissors].sample
  end

  def setup
    player.reset
    computer_picks
  end

  def rps
    setup
    if player_choice == :rock && computer_choice == :scissors
      player.status_change(:win)
    elsif player_choice == :paper && computer_choice == :rock
      player.status_change(:win)
    elsif player_choice == :scissors && computer_choice == :paper
      player.status_change(:win)
    elsif player_choice == computer_choice
      player.status_change(:draw)
    else
      player.status_change(:lose)
    end
  end

end
