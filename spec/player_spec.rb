require 'player'

describe Player do

  subject(:thor) { described_class.new('Thor') }

  describe '#name' do
    it 'returns the name of the player' do
      expect(thor.name).to eq 'Thor'
    end
  end

end
