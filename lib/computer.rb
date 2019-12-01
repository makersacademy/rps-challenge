require_relative 'weapons'

class Computer

  COMP_NAMES = [:Cerebro, :Duotronics, :HAL_9000, :Skynet, :The_Matrix]

  attr_reader :name

  def initialize(name = COMP_NAMES.sample, weapons = Weapons.new)
    @name = name
    @weapons = weapons
  end

  def comp_choice

    @comp_choice = @weapons.randomize

  end

end
