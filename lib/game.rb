class Game
  attr_reader :player

  ROCK = "rock"
  PAPER = "paper"
  SCISSORS = "scissors"

  def initialize(name, player_class)
    @player = player_class.new(name)
  end

  def resolve_move(player_move)
    case player_move
    when ROCK
      resolve_rock_move(opponent_move)
    when PAPER
      resolve_paper_move(opponent_move)
    when SCISSORS
      resolve_scissors_move(opponent_move)
    else
      raise ArgumentError, 'invalid player move'
    end
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
      "#{player.name} loses - paper wraps rock"
    when SCISSORS
      "#{player.name} wins - rock blunts scissors"
    end
  end

  def resolve_paper_move(computer_move)
    case computer_move
    when ROCK
      "#{player.name} wins - paper wraps rock"
    when PAPER
      "It's a draw - both players chose paper"
    when SCISSORS
      "#{player.name} loses - scissors cut paper"
    end
  end

  def resolve_scissors_move(computer_move)
    case computer_move
    when ROCK
      "#{player.name} loses - rock blunts scissors"
    when PAPER
      "#{player.name} wins - scissors cut paper"
    when SCISSORS
      "It's a draw - both players chose scissors"
    end
  end
end
