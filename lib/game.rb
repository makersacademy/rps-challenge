require_relative './player'

class Game

  attr_reader :player1, :player2
  
  def initialize(player1 = Player.new, player2 = Player.new)
    @player1 = player1
    @player2 = player2
  end

  def declare_winner
    if @player1.weapon == @player2.weapon
      nil
    elsif @player1.weapon == 'Scissors' && @player2.weapon == 'Rock'
      @player2
    elsif @player1.weapon == 'Scissors' && @player2.weapon == 'Paper'
      @player1
    elsif @player1.weapon == 'Rock' && @player2.weapon == 'Paper'
      @player2
    elsif @player1.weapon == 'Rock' && @player2.weapon == 'Scissors'
      @player1
    elsif @player1.weapon == 'Paper' && @player2.weapon == 'Scissors'
      @player2
    elsif @player1.weapon == 'Paper' && @player2.weapon == 'Rock'
      @player1
    end
  end

end
