require_relative 'option'

class Player

  attr_reader :lives
  DEFAULT_LIVES = 1

  def initialize(name, option_class = Option)
    @name = name
    @lives = DEFAULT_LIVES
    @option = option_class.new
  end

  def name
    @name
  end

end
