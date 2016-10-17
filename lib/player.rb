class Player
  attr_reader :name
  attr_accessor :weapon

  def initialize(name)
    @name = name
    @weapon = nil
  end

  def weapon_choice(choice)
    @weapon = choice.downcase.to_sym
  end
end
