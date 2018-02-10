require 'player'

describe Player do

  subject(:player_1) { described_class.new("Telgi") }

  describe '#name' do
    it 'returns the name of the player' do
      expect(player_1.name).to eq "Telgi"
    end
  end

  describe '#move' do
    it 'allows player one to select rock' do
      allow(player_1).to receive(:select_move).and_return(:rock)
      expect(player_1.move).to eq :rock
    end
  end

end
