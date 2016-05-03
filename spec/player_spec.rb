require 'player'

describe Player do

  subject(:player) { described_class.new name }
  let(:name) { "Bob" }
  describe '#name' do
    it 'has a player name' do
      described_class.new name
      expect(player.name).to eq name
    end
  end
end
