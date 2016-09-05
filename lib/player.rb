require_relative 'weapons'
class Player

  attr_reader :name, :choice, :computer_choice

  def initialize(name='Computer', choice=Weapons.new.weapon)
    @name = name
    @choice = choice
  end

end
