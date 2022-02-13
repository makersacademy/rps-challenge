require 'player'

describe Player do
  subject(:sarah) { Player.new('Sarah') }

  describe '#name' do
    it 'returns the name' do
      expect(sarah.name).to eq 'Sarah'
    end
  end
end