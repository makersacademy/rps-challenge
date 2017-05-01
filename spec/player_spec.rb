require 'player'

describe Player do
  subject(:david) { described_class.new('david') }

  describe '#name' do
    it 'returns the name' do
      expect(david.name).to eq 'david'
    end

    it 'returns the players weapon' do
      expect(david.weapon("Rock")).to eq "Rock"
    end
  end
end
