require_relative './player'
require_relative './computer'

class Game
  attr_reader :a, :b, :hand

  def self.start(player1, player2)
    @game = Game.new(player1, player2)
  end

  def initialize(player1, player2)
    @a = player1
    @b = player2
  end


  def self.instance
    @game
  end

  def rock
    @a.rock
    @b.random_hand
    evaluate
  end

  def paper
    @a.paper
    @b.random_hand
    evaluate
  end

  def scissors
    @a.scissors
    @b.random_hand
    evaluate
  end

  private

  def evaluate
    puts "It's a draw! Try again!" if draw?
    puts "#{@b.name} won!!" if b_wins?
    puts "#{@a.name} won!!" if a_wins?
  end

  def draw?
    @a.hand == @b.hand
  end

  def a_wins?
    @a.hand == 1 && @b.hand == 3 || @a.hand == 2 && @b.hand == 1 || @a.hand == 3 && @b.hand == 2
  end

  def b_wins?
    @a.hand == 2 && @b.hand == 3 || @a.hand == 3 && @b.hand == 1 || @a.hand == 1 && @b.hand == 2
  end

end
