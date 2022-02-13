require 'player.rb'

describe Player do
subject(:charlotte) { Player.new("Charlotte") }

  describe '#name' do
    it "should return the player's name" do 
      expect(charlotte.name).to eq "Charlotte"
    end 
  end
end
