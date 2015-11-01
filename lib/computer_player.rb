require_relative 'versions'
class ComputerPlayer

  include GameVersions

  attr_reader :name, :wins, :move_name, :version

  def initialize(version, name='Computer')
    @name = name
    @wins = 0
    @version = version
  end

  def random_move
    @move_name = possible_moves.sample
  end

  def move
    version[move_name]
  end

  def win_game
    @wins += 1
  end

  private

  def possible_moves
    version.keys
  end

end
