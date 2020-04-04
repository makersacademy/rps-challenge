require_relative './player.rb'

class Game
  attr_reader :player1, :player2, :result

  ROCK = 'Rock'
  PAPER = 'Paper'
  SCISSORS = 'Scissors'

  ROCK_BEATS_SCISSORS = 'rock blunts scissors'
  SCISSORS_BEAT_PAPER = 'scissors cut paper'
  PAPER_BEATS_ROCK = 'paper wraps rock'

  def initialize(player1_name, player2_name, player_class = Player)
    @player1 = player_class.new(player1_name)
    @player2 = player_class.new(player2_name)
  end

  def store_move(move)
    validate_move(move)
    if @first_move.nil?
      @first_move = move
    else
      @second_move = move
    end
  end

  def moves_complete?
    !(@first_move.nil? || @second_move.nil?)
  end

  def resolve_moves
    case @first_move
    when ROCK
      @result = resolve_rock_move(@second_move)
    when PAPER
      @result = resolve_paper_move(@second_move)
    when SCISSORS
      @result = resolve_scissors_move(@second_move)
    end
  end

  def current_player
    @first_move.nil? ? player1 : player2
  end

  def self.instance
    @current_game
  end

  def self.create(player1_name, player2_name)
    @current_game = Game.new(player1_name, player2_name)
  end

  private

  def validate_move(move)
    valid_moves = [ROCK, PAPER, SCISSORS]
    raise ArgumentError, 'invalid player move' unless valid_moves.include? move
  end

  def resolve_rock_move(player2_move)
    case player2_move
    when ROCK
      "It's a draw - both players chose rock"
    when PAPER
      "#{player2.name} wins - #{PAPER_BEATS_ROCK}"
    when SCISSORS
      "#{player1.name} wins - #{ROCK_BEATS_SCISSORS}"
    end
  end

  def resolve_paper_move(player2_move)
    case player2_move
    when ROCK
      "#{player1.name} wins - #{PAPER_BEATS_ROCK}"
    when PAPER
      "It's a draw - both players chose paper"
    when SCISSORS
      "#{player2.name} wins - #{SCISSORS_BEAT_PAPER}"
    end
  end

  def resolve_scissors_move(player2_move)
    case player2_move
    when ROCK
      "#{player2.name} wins - #{ROCK_BEATS_SCISSORS}"
    when PAPER
      "#{player1.name} wins - #{SCISSORS_BEAT_PAPER}"
    when SCISSORS
      "It's a draw - both players chose scissors"
    end
  end
end
