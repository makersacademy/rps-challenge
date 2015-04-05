class Game
  attr_reader :hand_value, :players, :number_of_p
  def initialize
    @players = []
    @number_of_p = 0
  end

  def chose_hand
    @hand_value = %w(Rock Paper Scissors)[rand(3)]
  end

  def add_player(name)
    if @number_of_p < 2
      @number_of_p += 1
      @players << name
    else
      fail 'Sorry ! 2 players only!'
    end
  end
end
