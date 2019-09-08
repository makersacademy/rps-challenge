class Opponent
  WEAPON = ['Rock', 'Paper', 'Scissors']

  def initialize
    @hand = self.hand
  end

  def hand
    random_choice(WEAPON)
  end

  private

  def random_choice(weapon)
    weapon.sample
  end
end
