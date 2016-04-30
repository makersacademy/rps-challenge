require 'player'

describe Player do
  subject(:alex) {described_class.new('Alex')}

    describe '#name' do
      it 'returns the players name' do
        expect(alex.name).to eq 'Alex'
      end
    end
end
