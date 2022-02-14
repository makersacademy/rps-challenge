require_relative '../lib/computer.rb'
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

describe Computer do 

  describe "#computer" do 
    it "has a choice of weapons to randomely select" do 
      expect(game.computer).to eq computer
    end 
  end 

end 