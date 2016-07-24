require 'player'

describe Player do

  subject(:titus) { described_class.new("Titus") }

  describe '#name' do
    it 'returns the name of the player' do
      expect(titus.name).to eq "Titus"
    end
  end

end
