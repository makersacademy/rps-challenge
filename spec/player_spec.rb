require 'player'

describe Player do
  subject(:player) { described_class.new('JS') }
    describe '#player' do
      it 'returns player name' do
        expect(subject.player).to eq 'JS'
      end
    end

end
