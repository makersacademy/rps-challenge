class Game
  attr_reader :player
  attr_reader :player_move
  attr_reader :computer
  attr_reader :computer_move
  attr_reader :winning_moves
  WINNING_SCORE = 5

  def initialize(player)
    @player = player
    @computer = Computer.create
    @winning_moves = {
      :ROCK => :SCISSORS,
      :SCISSORS => :PAPER,
      :PAPER => :ROCK
    }
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def player_choice(move)
    @player_move = move.to_sym
  end

  def computer_choice
    @computer_move = [:ROCK, :PAPER, :SCISSORS].sample
  end

  def result
    moves = {@player_move => @computer_move}
    if @player_move == @computer_move
      'draw'
    elsif @winning_moves[@player_move] == @computer_move
      win
      'win'
    else
      lose
      'lose'
    end
  end

  def win
    @player.score += 1
  end

  def lose
    @computer.score += 1
  end

  def over?
      @player.score >= WINNING_SCORE || @computer.score >= WINNING_SCORE
  end

  def outcome
    'someone wins'
  end
end
