class Player

attr_reader :name, :weapon

  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end

  def self.create(name, weapon)
     Player.new(name, weapon)
  end

end
