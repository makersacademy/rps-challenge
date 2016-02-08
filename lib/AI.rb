class AI
  attr_reader :weapon_choice

  def initialize
    weapon_list = ['rock', 'paper', 'scissors']
    random_index = Kernel.rand(weapon_list.length)
    @weapon_choice = weapon_list[random_index]
  end
end