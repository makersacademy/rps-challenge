require_relative 'computer'
require_relative 'player'

class Game

  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :winner, :player_1, :player_2

  def initialize(player_1, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
    @winner = nil
  end

  def result
    if @player_1.weapon == :rock
      if @player_2.weapon == :scissors
        @winner = @player_1.name
      elsif @player_2.weapon == :paper
        @winner = @player_2.name
      else
        @winner = 'Draw'
      end
    elsif @player_1.weapon == :paper
      if @player_2.weapon == :rock
        @winner = @player_1.name
      elsif @player_2.weapon == :scissors
        @winner = @player_2.name
      else
        @winner = 'Draw'
      end
    elsif @player_1.weapon == :scissors
      if @player_2.weapon == :paper
        @winner = @player_1.name
      elsif @player_2.weapon == :rock
        @winner = @player_2.name
      else
        @winner = 'Draw'
      end
    end
    @winner
  end

end
