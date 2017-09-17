require_relative 'player.rb'

class PlayerDatabase

  attr_reader :contents


  def initialize(contents = [Player.new])
    @contents = contents

  end

end
