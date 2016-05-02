class Game
  attr_reader :player
  attr_reader :player_move
  attr_reader :computer
  attr_reader :computer_move
  attr_reader :winning_moves
  attr_reader :winner
  attr_reader :result
  DEFAULT_SCORE = 0
  WINNING_SCORE = 3

  def initialize(player)
    @player = player
    @computer = Computer.create
    @winning_moves = [
      { ROCK: :SCISSORS },
      { SCISSORS: :PAPER },
      { PAPER: :ROCK },
      { ROCK: :LIZARD },
      { LIZARD: :SPOCK },
      { SPOCK: :SCISSORS },
      { PAPER: :SPOCK },
      { SPOCK: :ROCK },
      { SCISSORS: :LIZARD },
      { LIZARD: :PAPER }
    ]
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
    @computer_move = [:ROCK, :PAPER, :SCISSORS, :LIZARD, :SPOCK].sample
  end

  def calculate_result
    moves = {@player_move => @computer_move}
    return draw if @player_move == @computer_move
    return win if @winning_moves.include?(moves)
    return lose
  end

  def draw
    @result = 'draw'
  end

  def win
    @player.score += 1
    @winner = @player
    @result = 'win'
  end

  def lose
    @computer.score += 1
    @winner = @computer
    @result = 'lose'
  end

  def over?
      @player.score >= WINNING_SCORE || @computer.score >= WINNING_SCORE
  end

  def outcome
    @winner.name
  end

  def rematch
    @player.score = DEFAULT_SCORE
    @computer.score = DEFAULT_SCORE
  end
end
