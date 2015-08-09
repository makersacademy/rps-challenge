require_relative 'player'

class Game

  attr_reader :player_1, :player_2, :computer

  def initialize
    @player_1 = player_1
    @player_2 = player_2
    @win = win
    @computer = computer
  end

  def computer_choice
    @computer = [:Paper, :Scissors, :Rock].sample
  end

  def win
    raise "Both players must make a selection" if (player_1.choice == nil || player_2.choice == nil)
    raise "DRAW" if (player_1.choice == player_2.choice)
    case player_1.choice
    when :paper
      player_2.choice == :scissors ? player_2 : player_1
    when :scissors
      player_2.choice == :rock ? player_2 : player_1
    when :rock
      player_2.choice == :paper ? player_2 : player_1
    end
  end

end
