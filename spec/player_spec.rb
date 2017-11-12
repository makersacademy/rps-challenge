require 'player'

describe Player do
  describe '#name' do
    it "Should return Peter as the player's name" do
      player = Player.new('Peter')
      expect(player.name).to eq('Peter')
    end
  end
  describe '#selection' do
    it "Should return the player's choice of rock/paper/scissors" do
      Game.create(Player.new('Peter'), 'cpu')
      Game.access.player.selection = :rock
      expect(Game.access.player.selection).to eq :rock
    end
  end
end
