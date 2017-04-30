require 'player'

describe Player do
  subject(:david) { described_class.new('david') }

  describe '#name' do
    it 'returns the name' do
      expect(david.name).to eq 'david'
    end
  end
end
