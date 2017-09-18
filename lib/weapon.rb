class Weapon
  attr_reader :type

  def initialize(type)
    @type = type
  end

  def outcome(other, rules)
    return 'draw' if @type == other.weapon
    return 'win' if  rules[@type] == other.weapon
    'lost'
  end

end
