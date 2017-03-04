class Weapon

  attr_reader :name, :win, :lose

  def initialize(name)
    @name = name
    @win = []
    @lose = []
  end

  def beats_weapon(weapon)
    @win << weapon
  end

  def loses_to_weapon(weapon)
    @lose << weapon
  end

end
