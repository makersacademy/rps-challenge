class Player

attr_reader :name, :weapon_choice

  def initialize(name)
    @name = name
  end

  def choose(choice)
    @weapon_choice = Object.const_get(choice).new
  end

end
