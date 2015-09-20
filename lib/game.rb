require_relative 'rpsls_rules'

class Game

  attr_reader :rules, :shapes, :score

  def initialize(rules=RPSLS.new)
    @rules = rules.outcomes
    @shapes = rules.shapes
    @score = [0, 0]
  end

  def result(throw1, throw2)
    outcome = @rules[throw1.downcase.to_sym][throw2.downcase.to_sym]
    if outcome == :win
      win
    elsif outcome == :lose
      lose
    else
      'TIE!'
    end
  end

  private

  def win
    @score[0] += 1
    'WINNER!'
  end

  def lose
    @score[1] += 1
    'LOSER!'
  end
end
