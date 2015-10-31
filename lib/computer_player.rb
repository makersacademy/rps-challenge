require_relative 'versions'
class ComputerPlayer

  include GameVersions

  attr_reader :name, :move, :wins

  def initialize(name='Computer')
    @name = name
    @wins = 0
  end

  def random_move(choices)
    @move = rand(1..choices)
  end

  def win_game
    @wins += 1
  end

end
