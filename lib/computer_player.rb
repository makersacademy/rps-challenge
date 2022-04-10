class ComputerPlayer

  attr_reader :name
  attr_accessor :weapon

  def initialize(name = 'Thor')
    @name = name
  end

  def random_weapon
    @weapon = ['Rock', 'Paper', 'Scissors'].sample
  end

end
