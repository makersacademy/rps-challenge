require 'player.rb'

describe Player do
  subject(:player) { described_class.new 'Example Player', 100 }
  # let(:player_1) { double :player }
  # let(:player_2) { double :player }

  describe '#instantiation' do
    it 'has name and points' do
      new_player = Player.new('Rory', 100)
      expect(new_player.name).to eq('Rory')
      expect(new_player.points).to eq(100)
    end

    it 'passes name and points to store' do
      location = double('player_store')
      
      allow(location).to receive(:store).with(player) {[player]}
      expect(player.store location).to eq([player])
    end

  end
end
