class Game
  attr_reader :player
  def initialize(player: )
    @player = player
    @possible_moves = ["Rock", "Paper", 'Scissors']
  end

  def possible_moves
    @possible_moves.dup
  end

  def self.create(player: )
    @game = Game.new(player: Player.new(player))
  end

  def self.instance
    @game
  end

  def choose_move
    @move = @possible_moves.sample
  end

  def chosen_move
    @move
  end
end
