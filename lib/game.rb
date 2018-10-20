class Game
  attr_reader :player_1, :player_2
  def initialize(player_1:, player_2: Player.new("Computer"))
    @player_1 = player_1
    @player_2 = player_2
    @possible_moves = ["Rock", "Paper", 'Scissors']
  end

  def possible_moves
    @possible_moves.dup
  end

  def self.create(player_1:, player_2: "Computer")
    @game = Game.new(player_1: Player.new(player_1), player_2: Player.new(player_2))
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
