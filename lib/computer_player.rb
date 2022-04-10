class ComputerPlayer

  attr_reader :name
  attr_accessor :weapon

  WEAPON = ['Rock', 'Paper', 'Scissors'].freeze

  def initialize(name = 'Thor')
    @name = name
  end

  def random_weapon
    @weapon = WEAPON.sample
  end

end
