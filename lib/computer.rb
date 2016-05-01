require_relative 'attack'

class Computer

  def take_turn
    @attack = choice
  end

  def attack
    @attack
  end

  private

  def options
    [:rock, :paper, :scissors]
  end

  def choice
    options[rand(3)]
  end

end
