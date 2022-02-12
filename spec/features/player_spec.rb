require 'player'

describe Player do
  subject(:marie) { Player.new('Marie') }

  describe '#name' do
    it 'returns the name' do
      expect(marie.name).to eq 'Marie'
    end
  end
end
