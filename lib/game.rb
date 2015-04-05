class Game
  attr_reader :hand_value, :players
  def initialize(number_of_players = 1)
    @players = []
  end

  def chose_hand
    @hand_value = %w(Rock Paper Scissors)[rand(3)]
  end

  def add_player(name)
    @players << name
  end
end
