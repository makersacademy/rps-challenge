require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
require_relative '../lib/computer.rb'

describe Player do 
  
  describe "#player" do 
    it "can choose from three weapons"
      expect(game.player).to be eq player  
    end 
  end 

end 