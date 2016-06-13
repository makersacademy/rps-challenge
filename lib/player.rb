require_relative 'virtual_player'
class Player

attr_reader :name, :option

  def initialize(name,option)
    @name = name
    @option = option
  end

  def pick_play
    @option
  end

end