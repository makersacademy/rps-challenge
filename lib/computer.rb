require_relative 'options'

class Computer

  attr_reader :options

  def initialize(options)
    @options = options.choices
  end

  def choose
    options.sample
  end

end
