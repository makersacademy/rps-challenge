
class Player

  attr_reader :player_name, :choice, :weapons

  def initialize(name)
    @player_name = name
    @weapons = ["Rock", "Paper", "Scissors"]
  end

  def name
    @player_name
  end

  def weapon
    @choice
  end

  def player_choice(choice)
    @choice = choice
  end

  def choose_random
    @choice = weapons[rand_num]
  end

  private

  def rand_num
    Kernel.rand(3)
  end

end
