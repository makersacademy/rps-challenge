class MoveList
  ROCK = 'Rock'
  PAPER = 'Paper'
  SCISSORS = 'Scissors'

  ROCK_BEATS_SCISSORS = 'rock blunts scissors'
  SCISSORS_BEAT_PAPER = 'scissors cut paper'
  PAPER_BEATS_ROCK = 'paper wraps rock'

  def store_move(move)
    validate_move(move)
    if @first_move.nil?
      @first_move = move
    else
      @second_move = move
    end
  end

  def full?
    !(@first_move.nil? || @second_move.nil?)
  end

  def resolve_moves(names)
    case @first_move
    when ROCK
      resolve_rock_move(@second_move, names)
    when PAPER
      resolve_paper_move(@second_move, names)
    when SCISSORS
      resolve_scissors_move(@second_move, names)
    end
  end

  def reset
    @first_move = nil
    @second_move = nil
  end

  private

  def validate_move(move)
    valid_moves = [ROCK, PAPER, SCISSORS]
    raise ArgumentError, 'invalid player move' unless valid_moves.include? move
  end

  def resolve_rock_move(opposing_move, names)
    case opposing_move
    when ROCK
      "It's a draw - both players chose rock"
    when PAPER
      "#{names[1]} wins - #{PAPER_BEATS_ROCK}"
    when SCISSORS
      "#{names[0]} wins - #{ROCK_BEATS_SCISSORS}"
    end
  end

  def resolve_paper_move(opposing_move, names)
    case opposing_move
    when ROCK
      "#{names[0]} wins - #{PAPER_BEATS_ROCK}"
    when PAPER
      "It's a draw - both players chose paper"
    when SCISSORS
      "#{names[1]} wins - #{SCISSORS_BEAT_PAPER}"
    end
  end

  def resolve_scissors_move(opposing_move, names)
    case opposing_move
    when ROCK
      "#{names[1]} wins - #{ROCK_BEATS_SCISSORS}"
    when PAPER
      "#{names[0]} wins - #{SCISSORS_BEAT_PAPER}"
    when SCISSORS
      "It's a draw - both players chose scissors"
    end
  end
end
