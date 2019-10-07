require 'player'

describe Player do
  subject(:player) { described_class.new("Ellie") }

  describe '#name' do
    it "returns the player name" do
      expect(player.name).to eq "Ellie"
    end
  end

  describe '#player_move' do
    it "gets the a players move" do
      expect(player.move_made).to eq "Rock"
    end
  end

end
