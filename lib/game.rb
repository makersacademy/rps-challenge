class Game
  RULES = { "ROCK" => 'SCISSORS',
            "PAPER" => 'ROCK',
            "SCISSORS" => 'PAPER' }
  attr_accessor :player_choice, :computer_selection, :player_one_choice, :player_two_choice

  def random_response
    ['ROCK', 'SCISSORS', 'PAPER'].sample
  end

  def result
    RULES.each do |key, value|
      return :win if (key == player_choice && value == computer_selection)
      return :loss if (key == computer_selection && value == player_choice)
    end
    return :draw
  end

  def result_two_player
    RULES.each do |key, value|
      return :win_player_one if (key == player_one_choice && value == player_two_choice)
      return :win_player_two if (key == player_two_choice && value == player_one_choice)
    end
    return :draw_two_player
  end
end
