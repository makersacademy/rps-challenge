require 'player'

describe Player do

  subject(:player) { described_class.new('Ben') }

  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq('Ben')
    end
  end

  describe '#weapon' do
    it 'returns a player weapon' do
      expect(player.weapon(:rock)).to eq(:rock)
    end

    context 'did not choose a predefined weapon' do
      it 'raises an error' do
        expect{player.weapon(:hammer)}.to raise_error('not a possible weapon')
      end
    end
  end

end
