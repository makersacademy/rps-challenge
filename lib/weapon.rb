require_relative 'cpu'

class Weapon

  COMBO = [
    ['Rock', 'Scissors'], 
    ['Paper', 'Rock'], 
    ['Scissors', 'Paper']
  ]

  attr_reader :type, :combo

  def initialize(type)
    @type = type
  end

  def win?(cpu)
    COMBO.include?([type, cpu.type])
  end

end
