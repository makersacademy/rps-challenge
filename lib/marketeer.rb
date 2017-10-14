
class Marketeer

  attr_reader :name, :opponent_choice, :marketeer_choice

  def initialize(object)
    @name = object["name"]
    @marketeer_choice = object["marketeer_choice"]
    @opponent_choice = object["opponent_choice"]
  end

  CHOICES = {
    rock: { paper: :lose, scissors: :win, rock: :draw },
    paper: { scissors: :lose, rock: :win, paper: :draw },
    scissors: { rock: :lose, paper: :win, scissors: :draw }
  }

  def win?
    determine_result == :win
  end

  def draw?
    determine_result == :draw
  end

  def lose?
    determine_result == :lose
  end

  private

  def determine_result
    return if @opponent_choice.nil?
    CHOICES[@marketeer_choice][@opponent_choice]
  end

end
