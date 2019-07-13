class Game

  @instance = nil

  attr_accessor :player1, :player2
  attr_reader :winner

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @winner = nil
    @win_matrix = {
      :rock => [:scissors, :lizard],
      :paper => [:rock, :spock],
      :scissors => [:paper, :lizard],
      :spock => [:scissors, :rock],
      :lizard => [:spock, :paper]
    }
  end

  def self.create_instance(player1, player2)
    @instance = Game.new(player1, player2)
  end
  def self.instance
    @instance
  end
  def assign_winner
    @winner = nil
    
    if @player1.move == @player2.move
      @winner = "Draw"
      # Draw if both users pick the same
    elsif @win_matrix[@player1.move].include?(@player2.move)
      @winner = @player1
      # Player wins
    else
      @winner = @player2
      # Computer wins
    end
    @winner
  end

end
