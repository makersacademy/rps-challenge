
class Options

RULES = { "Rock" => "Scissors", "Paper" => "Rock" , "Scissors" => "Paper" }

attr_reader :result

  def initialize
    @result
  end

  def winner(option1,option2)
    if option1 == option2
      @result = :draw
    elsif RULES[option1] == option2
      @result = :option1_wins
    else
      @result = :option2_wins
    end
  end


end
