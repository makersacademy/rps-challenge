class Game

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game 
  end

  attr_reader :player

  MOVES = ['rock', 'paper', 'scissors']

  def initialize(player)
    @player = player
  end

  def computer_move
    @computer_move = MOVES.sample
  end

end
