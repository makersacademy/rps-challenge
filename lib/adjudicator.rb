class Adjudicator
  attr_reader :result, :play1, :play2

  def initialize(play1, play2)
    @play1 = play1
    @play2 = play2
    @result = nil
  end

  def who_wins
    case play1.move
      when "ROCK" then p1rock
      when "PAPER" then p1paper
      when "SCISSORS" then p1scissors
    end
  end

  private

  def p1rock
    @result = "DRAW" if play2.move == "ROCK"
    @result = @play2 if play2.move == "PAPER"
    @result = @play1 if play2.move == "SCISSORS"
  end

  def p1paper
    @result = "DRAW" if play2.move == "PAPER"
    @result = @play2 if play2.move == "SCISSORS"
    @result = @play1 if play2.move == "ROCK"
  end

  def p1scissors
    @result = "DRAW" if play2.move == "SCISSORS"
    @result = @play2 if play2.move == "ROCK"
    @result = @play1 if play2.move == "PAPER"
  end

end
