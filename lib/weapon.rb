class Weapon

attr_reader :is_superior_to

  def initialize 
    @is_superior_to = []
  end

  def is_now_superior_to other_weapon
    is_superior_to << other_weapon
  end

  def beats other_weapon
    is_superior_to.include?(other_weapon)
  end

end