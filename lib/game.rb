require_relative 'cpu.rb'

class Game

  attr_reader :player1, :player2

  def initialize(player1, player2 = CPU.new) 
    @player1 = player1
    @player2 = player2
  end

  def winner
    calculate_winner(@player1.move, @player2.move)
  end

  private

  def calculate_winner(move_1, move_2)
    if (move_1 == 'Rock' && move_2 == 'Scissors') || (move_1 == 'Paper' && move_2 == 'Rock') || (move_1 == 'Scissors' && move_2 == 'Paper')
      return @player1.name
    elsif (move_2 == 'Rock' && move_1 == 'Scissors') || (move_2 == 'Paper' && move_1 == 'Rock') || (move_2 == 'Scissors' && move_1 == 'Paper')
      return @player2.name
    elsif move_1 == move_2
      return "Draw"
    end
  end


end