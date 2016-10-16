class Weapon
  attr_reader :type

  def initialize(type)
    @type = type.to_sym
  end
end
