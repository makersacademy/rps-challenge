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

# initialise with an optional player 2 that defaults to a CPU.new
# CPU should have a move method that returns [Rock, Paper, Scissors].sample
# player already has a last_move method
# rename last_move to move so that the 2 objects have polymorphism
# winner should take a player 1 and player 2 move
# should calculate which is the winning move
# need to figure out how to return the winning entity, maybe a hash