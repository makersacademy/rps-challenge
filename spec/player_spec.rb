require 'player'

describe Player do
  subject(:donald) { described_class.new('The Donald') }

  describe '#name' do
    it 'knows the players name' do
      expect(donald.name).to eq 'The Donald'
    end
  end
end
