require_relative './player'
require_relative './computer_player'

class Game

  attr_reader :player1, :player2
  attr_accessor :winner
  
  def initialize(player1 = Player.new, player2 = ComputerPlayer.new)
    @player1 = player1
    @player2 = player2
    @winner = nil
  end

  def declare_winner
    if @player1.weapon == @player2.weapon
      @winner = nil
    elsif @player1.weapon == 'Scissors' && @player2.weapon == 'Rock'
      @winner = @player2
    elsif @player1.weapon == 'Scissors' && @player2.weapon == 'Paper'
      @winner = @player1
    elsif @player1.weapon == 'Rock' && @player2.weapon == 'Paper'
      @winner = @player2
    elsif @player1.weapon == 'Rock' && @player2.weapon == 'Scissors'
      @winner = @player1
    elsif @player1.weapon == 'Paper' && @player2.weapon == 'Scissors'
      @winner = @player2
    elsif @player1.weapon == 'Paper' && @player2.weapon == 'Rock'
      @winner = @player1
    end
  end
end
