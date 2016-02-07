require_relative 'player'

class Game
  attr_reader :player1, :player2

  def initialize(player1 = Player.new, player2 = Player.new)
    @player1 = player1
    @player2 = player2
  end

  def auto_choose
    reset
    value = random_rps
    @player2.select_rps(value)
  end

  def winner
    select_winner
  end

  private

  def select_winner
    return 0 if @player1.c_rps == @player2.c_rps
    return @player1 if rock_to_other || paper_to_other || scissors_to_other ||
                       lizard_to_other || spock_to_other
    @player2
  end

  def rock_to_other
    @player1.c_rps == :rock && @player2.c_rps == :scissors ||
      @player1.c_rps == :rock && @player2.c_rps == :lizard
  end

  def paper_to_other
    @player1.c_rps == :paper && @player2.c_rps == :rock ||
      @player1.c_rps == :paper && @player2.c_rps == :spock
  end

  def scissors_to_other
    @player1.c_rps == :scissors && @player2.c_rps == :paper ||
      @player1.c_rps == :scissors && @player2.c_rps == :lizard
  end

  def lizard_to_other
    @player1.c_rps == :lizard && @player2.c_rps == :paper ||
      @player1.c_rps == :lizard && @player2.c_rps == :spock
  end

  def spock_to_other
    @player1.c_rps == :spock && @player2.c_rps == :scissors ||
      @player1.c_rps == :spock && @player2.c_rps == :rock
  end

  def reset
    @player2.reset
  end

  def random_rps
    [:rock, :paper, :scissors, :lizard, :spock].sample
  end

end
