class Game

  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :winner, :player1, :player2

  def initialize(player1, player2 = Computer.new)
    @player1 = player1
    @player2 = player2
    @winner = nil
  end

  def result
    if @player1.weapon == 'rock'
      if @player2.weapon == 'scissors'
        @winner = @player1.name
      elsif @player2.weapon == 'paper'
        @winner = @player2.name
      else
        @winner = 'draw'
      end
    elsif @player1.weapon == 'paper'
      if @player2.weapon == 'rock'
        @winner = @player1.name
      elsif @player2.weapon == 'scissors'
        @winner = @player2.name
      else
        @winner = 'draw'
      end
    elsif @player1.weapon == 'scissors'
      if @player2.weapon == 'paper'
        @winner = @player1.name
      elsif @player2.weapon == 'rock'
        @winner = @player2.name
      else
        @winner = 'draw'
      end
    end
  @winner
  end
end
