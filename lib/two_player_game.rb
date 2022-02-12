require './lib/player'

class TwoPlayer

  attr_reader :player1_score, :player2_score, :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1_score = 0
    @player2_score = 0
  end

  def play
    return unless @player1.move || @player2.move != nil
    result = outcome(players_moves)
    score(result)
    result
  end

  private

  def score(result)
    if result.include?(@player1.name)
      @player1_score += 1
    elsif result.include?(@player2.name)
      @player2_score += 1
    else
    end
  end

  def outcome(_)
    case @player1.move
    when "ROCK"
      if @player2.move == "SCISSORS"
        "ROCK beats SCISSORS. #{@player1.name} wins!"
      elsif @player2.move == "PAPER"
        "SCISSORS beats ROCK. #{@player2.name} wins!"
      else
        "DRAW"
      end
    when "PAPER"
      if @player2.move == "SCISSORS"
        "SCISSORS beats PAPER.  #{@player2.name} wins!"
      elsif @player2.move == "ROCK"
        "PAPER beats ROCK. #{@player1.name} wins!"
      else
        "DRAW"
      end
    when "SCISSORS"
      if @player2.move == "ROCK"
        "ROCK beats SCISSORS. #{@player2.name} wins!"
      elsif @player2.move == "PAPER"
        "SCISSORS beats PAPER. #{@player1.name} wins!"
      else
        "DRAW"
      end
    end
  end
end
