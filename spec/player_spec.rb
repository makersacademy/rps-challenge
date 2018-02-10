require 'player'

describe Player do

  subject(:player_1) { described_class.new("Telgi") }

  describe '#name' do
    it 'returns the name of the player' do
      expect(player_1.name).to eq "Telgi"
    end
  end

  describe 'select_move' do
    it 'allows player one to select rock' do
      allow(STDIN).to receive(:gets).and_return('Rock')
      expect(player_1.select_move).to eq :rock
    end
  end

end
