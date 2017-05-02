require 'player'

describe Player do

  let(:player) { described_class.new("Ant") }

  describe '#name' do
    it "returns the player's name" do
      expect(player.name).to eq "Ant"
    end
  end
end
