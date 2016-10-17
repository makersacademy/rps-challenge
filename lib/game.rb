require_relative 'player'

class Game

attr_reader :player, :pc_move, :outcome, :player_move

  RULES = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {paper: :draw, scissors: :lose, rock: :win},
    scissors: {scissors: :draw, rock: :lose, paper: :win}
    }

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
  end

  MOVE = [ :rock ,:paper ,:scissors ]

  def computer_move
    @pc_move = MOVE.sample
  end

  def rock
    @player_move = MOVE[0]
  end

  def paper
    @player_move = MOVE[1]
  end

  def scissors
    @player_move = MOVE[2]
  end

  def draw?
    outcome == :draw
  end

  def win?
    outcome == :win
  end

  def lose?
    outcome == :lose
  end

  def outcome
    RULES[@player_move][@pc_move] #if move.nil?
  end


end
