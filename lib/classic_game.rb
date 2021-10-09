require_relative 'player'

class ClassicGame

  attr_reader :player

  def initialize(player = Player.new('PLAYER ONE'))
    @player = player
  end

end
