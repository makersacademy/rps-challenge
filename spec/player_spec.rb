
require 'player'

describe Player do

  subject(:scott) { Player.new('Scott') }
  subject(:kai) { Player.new('Kai') }

  describe '#name' do
    it 'returns the name' do
      expect(scott.name).to eq 'Scott'
    end
  end
end
