require 'player'

describe Player do
subject(:hans) { described_class.new("hans") }

  describe '#name' do
    it 'returns the name of the player' do
      expect(hans.name).to eq "hans"
    end
  end

end
