require 'player'

describe 'Player' do 

  let(:player) { Player.new("Ben") }

  describe '.name' do
    it "returns the players name" do
      expect(player.name).to eq "Ben"
    end
  end
end 