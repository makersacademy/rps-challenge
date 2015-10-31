require_relative 'versions'
class Player

  include GameVersions

  attr_reader :name, :move_chosen

  def initialize(name)
    @name = name
    @move_chosen = false
  end

  def choose(move)
    Versions['Advanced'][move]
    make_move
  end

  private

  def make_move
    @move_chosen = true
  end

end
