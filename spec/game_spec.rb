require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
require_relative '../lib/computer.rb'

describe Game do 
  
  describe "#game" do 
    it "has three weapons, rock, paper or scissors"
      expect(game.weapon).to be eq weapons 
    end 
  end 
  
end 
