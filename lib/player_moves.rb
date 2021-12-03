require 'singleton'

class PlayerMoves
  include Singleton
  attr_reader :move_list, :name_list

  def initialize
    @name_list = []
    @move_list = []
  end

  def add_name(name)
    @name_list << name
  end

  def add_move(move)
    @move_list << move
  end

  def turn
    if @move_list.length == 1
      @name_list[1] 
    else 
      @name_list[0] 
    end
  end

  def reset
    @name_list = []
    @move_list = []
  end

end
