#Understands the declaration of a winner

class Game

  BOARD = [:lizard, :paper, :spock, :rock, :scissors].freeze

  attr_reader :player

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def play_a_round(player1_move, player2_move = random_move)
    return "drawn" if player1_move == player2_move
    divide_board_into_stronger_and_weaker_than(player1_move)
    return "won" if @stronger_moves.include?(player2_move)
    "lost"
  end

  private

  def divide_board_into_stronger_and_weaker_than(move)
    index = BOARD.index(move.to_sym)
    @stronger_moves = BOARD.rotate(index)[1..2]
    @weaker_moves = BOARD.rotate(index)[3..4]
  end

  def random_move
    BOARD.sample
  end

end
