class Game
  attr_reader :hand_value
  def chose_hand
    @hand_value = %w(Rock Paper Scissors)[rand(3)]
  end
end
