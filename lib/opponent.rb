class Opponent

  def initialize
    @weapons = ['Rock', 'Paper', 'Scissors']
  end

  def choose_hand
    @weapons[random_pick - 1]
  end

  private

  def random_pick
    1 + rand(3)
  end

end
