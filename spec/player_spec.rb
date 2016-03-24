require 'player'

describe Player do
  subject(:bob) {described_class.new('Bob')}

  describe '#initialize' do

    it 'returns name of player when called' do
      expect(bob.name).to eq 'Bob'
    end
  end
end
