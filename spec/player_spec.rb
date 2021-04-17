require 'player'

describe Player do
  subject(:player) { Player.new('Player') }

  describe '#name' do
    it "returns the player's name" do
      expect(player.name).to eq("Player")
    end
  end
  
end
