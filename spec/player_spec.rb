require 'players'

describe Player do
  let(:player) { described_class.new("Marie")}
  describe '#initialize' do
    it 'should initialize with a name ' do
      expect(player.name).to eq 'Marie'
    end
  end
end
