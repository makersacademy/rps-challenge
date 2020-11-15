class Game

  attr_reader :player, :opponent
  attr_accessor :weapon

  def initialize(player, opponent=Computer.new)
    @opponent = opponent
    @player = player
    @weapon
  end

  def winner

  end

end