require_relative 'player'

class Game
  attr_reader :player, :opponent_move
  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  def initialize(name)
    @player = Player.new(name)
  end

  def computer_move
    @opponent_move = generate_move
  end

  def generate_move
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def player_move(move)
    @player.move = move
  end

  def player_win?
    @player.move == 'Rock' && @opponent_move == 'Scissors' || 
    @player.move == 'Paper' && @opponent_move == 'Rock' ||
    @player.move == 'Scissors' && @opponent_move == 'Paper'
  end

  def player_draw?
    @player.move == @opponent_move
  end

end