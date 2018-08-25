class Game

  attr_reader :move, :move2

  MOVES = ["ROCK", "PAPER", "SCISSORS"]
  WIN = { rock: :scissors, paper: :rock, scissors: :paper }

  def initialize(move)
    @move = move
    @move2 = computer_move
  end

  def result
    choice1 = format_move(move)
    choice2 = format_move(move2)
    rps(choice1, choice2)
  end

  private

  def computer_move
    MOVES.sample
  end

  def format_move(choice)
    choice.downcase.to_sym
  end

  def rps(choice1, choice2)
    if choice1 == choice2
      "It's a DRAW"
    elsif WIN[choice1] == choice2
      "YOU WON!"
    else
      "COMPUTER WON"
    end
  end

end
