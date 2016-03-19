
class Player

  attr_reader :player_name, :weapon

  def initialize(player_name)
    @player_name = name
  end

  def name
    @player_name
  end

  def weapon
    @weapon
  end

  def player_choice(choice)
    @weapon = choice
  end

  private

  def comp_weapon
    @comp_choice = weapons[rand_num]
  end

  def rand_num
    Kernel.rand(3)
  end

end
