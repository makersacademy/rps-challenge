require 'player'

describe Player do
  subject(:player) { Player.new('Player') }

  describe '#name' do
    it "returns the player's name" do
      expect(player.name).to eq("Player")
    end
  end
  describe "#player move" do 
    it "returns Player's move" do
      subject.move("Rock")
      expect(player.player_move).to eq "Rock"
    end
  end
end
