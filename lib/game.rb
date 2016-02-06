require_relative 'player'

class Game
  attr_reader :player1, :player2

  def initialize(player1 = Player.new, player2 = Player.new)
    @player1 = player1
    @player2 = player2
  end

  def auto_choose
    reset
    @player2.send("sel_"+random_rps)
  end

  def winner
    select_winner
  end

  private

  def select_winner
    return 0 if @player1.c_rps == :rock && @player2.c_rps == :rock
    return 0 if @player1.c_rps == :paper && @player2.c_rps == :paper
    return 0 if @player1.c_rps == :scissors && @player2.c_rps == :scissors
    return @player1 if @player1.c_rps == :rock && @player2.c_rps == :scissors
    return @player1 if @player1.c_rps == :paper && @player2.c_rps == :rock
    return @player1 if @player1.c_rps == :scissors && @player2.c_rps == :paper
    @player2
  end

  def reset
    @player2.reset
  end

  def random_rps
    ["rock","paper","scissors"].sample
  end

end
