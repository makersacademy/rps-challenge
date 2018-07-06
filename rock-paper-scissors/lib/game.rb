require_relative './move'

class Game

  attr_reader :moves, :options

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @players = [player1.downcase.capitalize, player2.downcase.capitalize]
    @moves = []
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def store(move)
    @moves << move.choice
  end

  def result
    rules = { 'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper' }
    if @moves.first == @moves.last
      "It's a draw!"
    elsif rules[@moves.first] == @moves.last
      "#{@players.first} wins!"
    else "#{@players.last} wins!"
    end
  end

end
