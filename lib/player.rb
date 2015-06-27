require_relative 'paper'


class Player

  attr_reader :picked

  def initialize
    @picked = ""
  end

  def choice option
    @picked = option

  end


end
