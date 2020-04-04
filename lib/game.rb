require_relative './player.rb'

class Game
  attr_reader :player, :result

  ROCK = 'Rock'
  PAPER = 'Paper'
  SCISSORS = 'Scissors'

  ROCK_BEATS_SCISSORS = 'rock blunts scissors'
  SCISSORS_BEAT_PAPER = 'scissors cut paper'
  PAPER_BEATS_ROCK = 'paper wraps rock'

  def initialize(name, player_class = Player)
    @player = player_class.new(name)
  end

  def resolve_move(player_move)
    case player_move
    when ROCK
      @result = resolve_rock_move(opponent_move)
    when PAPER
      @result = resolve_paper_move(opponent_move)
    when SCISSORS
      @result = resolve_scissors_move(opponent_move)
    else
      raise ArgumentError, 'invalid player move'
    end
  end

  def self.instance
    @current_game
  end

  def self.create(name)
    @current_game = Game.new(name)
  end

  private

  def opponent_move
    [ROCK, PAPER, SCISSORS].sample
  end

  def resolve_rock_move(computer_move)
    case computer_move
    when ROCK
      "It's a draw - both players chose rock"
    when PAPER
      "#{player.name} loses - #{PAPER_BEATS_ROCK}"
    when SCISSORS
      "#{player.name} wins - #{ROCK_BEATS_SCISSORS}"
    end
  end

  def resolve_paper_move(computer_move)
    case computer_move
    when ROCK
      "#{player.name} wins - #{PAPER_BEATS_ROCK}"
    when PAPER
      "It's a draw - both players chose paper"
    when SCISSORS
      "#{player.name} loses - #{SCISSORS_BEAT_PAPER}"
    end
  end

  def resolve_scissors_move(computer_move)
    case computer_move
    when ROCK
      "#{player.name} loses - #{ROCK_BEATS_SCISSORS}"
    when PAPER
      "#{player.name} wins - #{SCISSORS_BEAT_PAPER}"
    when SCISSORS
      "It's a draw - both players chose scissors"
    end
  end
end
