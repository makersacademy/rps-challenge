require "player"

describe Player do
  subject(:jack) { Player.new('Jack the destroyer') }

    describe '#name' do
      it 'returns the name' do
        expect(jack.name).to eq 'Jack the destroyer'
      end
    end
end
