class Opponent
  attr_reader :weapon_choice

  def random_weapon
    @weapon_choice = ['Rock', 'Paper', 'Scissors'].sample
  end
end

