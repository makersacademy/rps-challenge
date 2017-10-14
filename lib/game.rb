class Game
  RULES = { "ROCK" => 'SCISSORS',
            "PAPER" => 'ROCK',
            "SCISSORS" => 'PAPER' }
  attr_accessor :player_choice, :computer_selection

  def random_response
    ['ROCK', 'SCISSORS', 'PAPER'].sample
  end

  def result
    RULES.each do |key, value |
      if (key == player_choice && value == computer_selection)
        return :win
        break
      elsif (key == computer_selection && value == player_choice)
        return :loss
        break
      end
    end
    return :draw
  end
end
