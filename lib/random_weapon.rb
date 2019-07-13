class RandomWeapon
  def weapon
    weapons = ['rock', 'paper', 'scissors']
    weapons[random_num]
  end

  private

  def random_num
    rand(0..2)
  end
end
