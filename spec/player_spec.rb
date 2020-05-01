require 'player'

describe Player do
  subject(:will) { Player.new('Will') }

  describe '#name' do
    it 'returns the name' do
      expect(will.name).to eq 'Will'
    end
  end
end
