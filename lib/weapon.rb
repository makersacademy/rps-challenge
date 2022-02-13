require './lib/game'
class Weapon
  RULES= {
    'rock' => 'scissors',
    'scissors' => 'paper',
    'paper' => 'rock'
    }
  attr_reader :type

  def initialize(type) 
    @type = type
  end

  def beat?(another)
    RULES[@type] == another.type 
  end
end

