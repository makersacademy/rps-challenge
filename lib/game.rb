require_relative './computer_player'
require_relative './player'
require_relative './message_generator'

class Game
  attr_reader :p1, :p2, :winner
  @@game = nil

  def self.instance
    @@game
  end

  def self.create(player1, player2)
    @@game = Game.new(player1, player2)
  end

  def initialize(player1, player2)
    @p1 = player1
    @p2 = player2
  end

  def find_winner
    @p1.move == @p2.move ? @winner = 'draw' : send(@p1.move)
  end

  def rock
    @p2.move == 'paper' ? @winner = @p2 : @winner = @p1
  end

  def paper
    @p2.move == 'scissors' ? @winner = @p2 : @winner = @p1
  end

  def scissors
    @p2.move == 'rock' ? @winner = @p2 : @winner = @p1
  end
end
