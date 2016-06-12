require 'player'

describe Player do
  subject(:anna) { Player.new('Anna') }

  describe '#name' do
    it 'returns the name' do
      expect(anna.name).to eq 'Anna'
    end
  end
end
