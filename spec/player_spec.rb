require 'player'

describe Player do
  subject(:player) { described_class.new('Trump') }
  let(:shape) { double :shape }

  describe '#name' do
    it 'returns the player name' do
      expect(player.name).to eq 'Trump'
    end
  end

  describe '#player_choice' do
    it 'returns the player choice' do
      expect(player.player_choice=:rock).to eq :rock
    end

    it 'raises an error if shape not existent' do
      expect { player.player_choice= :flower }.to raise_error "Not a possible shape"
    end
  end

end
