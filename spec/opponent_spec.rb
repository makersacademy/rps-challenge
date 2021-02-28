require 'opponent'

describe Opponent do
  subject(:opponent) {described_class.new}

    describe '#shape' do
      it 'Returnes a random shape' do

        expect(Opponent::OPTIONS).to include opponent.shape
      end
    end

end
