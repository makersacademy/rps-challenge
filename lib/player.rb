class Player

  attr_reader :name, :weapon
  def initialize(name)
    @name=name
  end

  def choose_weapon(choice)
    @weapon = choice.to_sym
  end

  def choose_random_weapon
    @weapon = [:scissor, :rock, :paper].sample
  end

end