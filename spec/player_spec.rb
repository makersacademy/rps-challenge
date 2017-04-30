require 'player'

describe Player do
  let(:player) { described_class.new(:Unai) }
  describe '#name' do
    it 'assigns a player name when we initialize' do
      expect(player.name).to eq :Unai
    end
  end
  describe '#hand' do
    it 'initializes the hand value as 0' do
      expect(player.hand).to eq 0
    end
  end
end
