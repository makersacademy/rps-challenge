require 'player'

describe Player do
  subject(:alex) {described_class.new('Alex')}

    describe '#name' do
      it 'returns the players name' do
        expect(alex.name).to eq 'Alex'
      end
    end

    describe '#choice' do
      it 'returns what move was played' do
        alex.choose_move 'Scissors'
        expect(alex.choice).to eq 'Scissors'
      end
    end
end
