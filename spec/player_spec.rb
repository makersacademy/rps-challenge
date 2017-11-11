require 'player'

describe Player do
  describe '#name' do
    it "Should return Peter as the player's name" do
      player = Player.new('Peter')
      expect(player.name).to eq('Peter')
    end
  end
end
