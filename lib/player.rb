require_relative 'versions'
class Player

  include GameVersions

  attr_reader :name, :move_chosen, :move, :wins, :move_name

  def initialize(name)
    @name = name
    @move_chosen = false
    @wins = 0
  end

  def choose(move)
    @move = Versions['Advanced'][move]
    @move_name = move
    make_move
  end

  def reset
    @move_chosen = false
  end

  def win_game
    @wins += 1
  end

  private

  def make_move
    @move_chosen = true
  end

end
