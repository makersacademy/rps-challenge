require_relative 'paper'


class Player

  attr_reader :picked


  def pick option
    @picked = option
  end


end
