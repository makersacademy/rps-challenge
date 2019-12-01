require_relative 'rules'

class Computer

  COMP_NAMES = [:Cerebro, :Duotronics, :HAL_9000, :Skynet, :The_Matrix]

  attr_reader :name

  def initialize(name = COMP_NAMES.sample, choices)
    @name = name
    @choices = choices
  end

  def comp_choice

    @comp_choice = @choices.sample

  end

end
