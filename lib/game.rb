require_relative './player'
require_relative './computer'

class Game
  attr_reader :player1, :player2, :hand
  def initialize(player1, player2)
    @a = player1
    @b = player2
  end

  def rock
    @a.rock
    @b.random_hand
    evaluate
  end

  private

  def evaluate
    puts "It's a draw! Try again!" if @a.hand == @b.hand
    puts "#{@b.name} won!!" if @a.hand == 1 && @b.hand == 2
    puts "#{@a.name} won!!" if @a.hand == 1 && @b.hand == 3
    puts "#{@a.name} won!!" if @a.hand == 2 && @b.hand == 1
    puts "#{@b.name} won!!" if @a.hand == 2 && @b.hand == 3
    puts "#{@b.name} won!!" if @a.hand == 3 && @b.hand == 1
    puts "#{@a.name} won!!" if @a.hand == 3 && @b.hand == 2
  end

end
